"""
CovidParser class

This does the bulk of the work
"""

import abc
import logging
import requests
import numpy as np
from util.htmlparser import HTMLTableParser
import pandas as pd

log = logging.getLogger(__name__)

class ExternalDataSource(metaclass=abc.ABCMeta):
    """
    Abstract class to get data from external sources
    """

    @abc.abstractmethod
    def get_data(self):
        pass


class WorldometerSource(ExternalDataSource):
    """
    Abstract class to get data from Worldometer
    """
    @abc.abstractmethod
    def _get_url(self):
        pass

    @abc.abstractmethod
    def _renamed_columns(self, table:pd.DataFrame):
        pass

    @abc.abstractmethod
    def _extra_cleanup(self, table:pd.DataFrame):
        pass


    def __init__(self,
                 row_filter_value:str, # San Francisco
                 column_filter: str, # newcases
                 row_filter: str, # county
                 default_fill_value:str = 'N/A'):
        """
        Constructor
        :param column_filter: what column will we use to return data value - ie, COUNTRY
        :param row_filter_value: what row value of column will we use to filter - ie, USA
        :param default_fill_value: default value used to fill in blank cells
        """
        # use this value to filter out rows - ie, which country or city
        self.column_filter = column_filter
        self.row_filter = row_filter
        self.row_filter_value = row_filter_value
        self.default_fill_value = default_fill_value

        log.debug(f'Running with\n\t')


    def get_data(self) -> list:
        """
        Calls website, parses data, and return a list of values we want
        :return: list of values we want
        """

        url = self._get_url()

        log.info(f'Getting data using filter_value[{self.row_filter_value}] using URL [{url}]')
        response = requests.get(url)

        # data has raw HTML
        data = response.content.decode('utf-8')

        hp = HTMLTableParser()
        table_today = hp.parse_url(url)[0][1]  # Grabbing the table from the tuple
        table_yesterday = hp.parse_url(url)[1][1]  # Grabbing the table from the tuple
        tables = [table_today, table_yesterday]
        log.info(table_today.head(10))

        for table in tables:

            # drop unwanted special characters using a loop
            # TODO: do we need this?
            # for col in table.columns[1:11]:
            #     table[col] = table[col].str.replace("+", "").str.replace(",", "").str.replace(" ", "")
            log.debug(f'Old column names: {table.columns}')
            self._renamed_columns(table)
            log.debug(f'New column names: {table.columns}')

            self._cleanup_data(table)

        return self._filter_data(tables)


    def _cleanup_data(self, table:pd.DataFrame):
        """
        cleans table data in place
        :param table:
        :return:
        """
        # convert all values into string so we can display later
        for col in table.columns:
            if 'date' not in col:
                table[col] = table[col].astype('str')

        # drop new line '\n' charachter
        table.replace(['\n'], '', regex=True, inplace=True)
        table.replace([','], '', regex=True, inplace=True)

        # replace any empty cells with default value
        table.fillna(self.default_fill_value, inplace=True)
        table.replace(np.nan, self.default_fill_value, inplace=True)
        table.replace(np.inf, self.default_fill_value, inplace=True)
        table.replace('', self.default_fill_value, inplace=True)

        self._extra_cleanup(table)


    def _filter_data(self, tables:list) -> list:
        """
        Filter down data and return what we are interested in as a list
        :param tables: list of DF. Each DF represents a table on the page
        :return: list of values - index 0 is today, index 1 is yesterday
        """

        values = []
        for table in tables:
            # change column values to strings
            table[self.column_filter] = table[self.column_filter].astype('str')
            table[self.column_filter] = table[self.column_filter].str.strip()

            value = table[table[self.row_filter] == self.row_filter_value][self.column_filter].values[0]
            # value = table[table[self.filter_column] == self.filter_value][self.filter_column].values[0]
            values.append(value)


        return values



class CAWorldometerSource(WorldometerSource):
    """
    Gets county data from California
    """
    def __init__(self, row_filter_value:str, column_filter:str, default_fill_value:str):
        super().__init__(row_filter_value, column_filter, "county", default_fill_value)

    def _get_url(self):
        return 'https://www.worldometers.info/coronavirus/usa/california/'

    def _renamed_columns(self, table:pd.DataFrame):
        new_column_names = [col.lower().replace('\xa0', '_').replace(' ', '_').replace('\n', '').replace('/', '_') for
                            col in table.columns]
        table.columns = new_column_names

    def _extra_cleanup(self, table:pd.DataFrame):
        """
        Do data clean up - ie, get rid of data we don't need and reformatting specific to this table

        :param table:
        :return:
        """
        # last row in the table is a total column that we don't want
        table.drop(table.tail(1).index, inplace=True)

        # looks like a lot of the county values have a trailing space
        table.county = table.county.apply(lambda x: x.strip())
        log.debug(f'Counties: {table.county.unique()}')


class CountryWorldometerSource(WorldometerSource):

    def __init__(self, row_filter_value:str, column_filter:str, default_fill_value:str):
        super().__init__(row_filter_value, column_filter, "country", default_fill_value)

    def _get_url(self):
        return 'https://www.worldometers.info/coronavirus/#countries'

    def _renamed_columns(self, table:pd.DataFrame):
        # rename columns to something more usable
        table.rename(columns={'Country,Other': 'country', 'Serious,Critical': 'serious_critical'}, inplace=True)
        new_column_names = [col.lower().replace('\xa0', '_').replace(' ', '_').replace('\n', '').replace('/', '_') for
                            col in table.columns]
        table.columns = new_column_names


    def _extra_cleanup(self, table:pd.DataFrame):

        # Drop top buttom unwanted rows
        table.drop(table.index[[0, 1, 2, 3, 4, 5, 6, 7]], inplace=True)
        table.reset_index(drop=True, inplace=True)
        # drop tail unwanted rows
        table.drop(table.tail(8).index, inplace=True)





