"""
CovidParser class

This does the bulk of the work
"""

import abc
import datetime
import logging
import requests
import numpy as np
from util.htmlparser import HTMLTableParser
import pandas as pd
import json

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
            for col in table.columns[1:11]:
                table[col] = table[col].str.replace("+", "")
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
        :return: list of new cases - index 0 is today, index 1 is yesterday
        """
        log.debug(f'Filtering suing row_filter {self.row_filter} column_filter {self.column_filter}')

        values = []
        for table in tables:
            log.debug(f'columns: {table.columns}')
            log.debug(f'rows: {len(table)}')
            # change column values to strings
            table[self.column_filter] = table[self.column_filter].astype('str')
            table[self.column_filter] = table[self.column_filter].str.strip()

            log.debug(table[table[self.row_filter] == self.row_filter_value][self.column_filter])
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


class ThailandCovidSource(ExternalDataSource):

    """
    Worldometer constructor

    def __init__(self,
                 row_filter_value:str, # San Francisco
                 column_filter: str, # newcases
                 row_filter: str, # county
                 default_fill_value:str = 'N/A'):
    """
    def __init__(self,
                 row_filter: str,
                 column_filter: str,
                 default_value: str):
        self.row_filter = row_filter
        self.column_filter = column_filter
        self.default_value = default_value

    def get_data(self) -> list:
        # get homepage
        url = ' https://covid19.th-stat.com/api/open/cases'
        response = requests.get(url)
        data = response.content.decode('utf-8')

        # cant quite load into DF yet.. there is an outter element Data that we need to get out of JSON
        parsedJson = json.loads(data)
        # 2021-01-08 20:32:07
        self.last_data = datetime.datetime.fromisoformat(parsedJson['LastData'])
        # 08/01/2021
        self.update_date = datetime.datetime.strptime(parsedJson['UpdateDate'], '%d/%m/%Y')
        log.debug(f'last_data: {self.last_data} update_date: {self.update_date}')
        covid_df = pd.DataFrame.from_dict(parsedJson['Data'])
        # convert confirmDate to datetime column

        self._cleanup_data(covid_df)
        return self._filter_data(covid_df)

    def _filter_data(self, df:pd.DataFrame) -> pd.DataFrame:
        """

        :param df:
        :return: 2 numbers, one for THA today, and one for Provence today
        """
        today_date = datetime.date.today()
        today = datetime.datetime(today_date.year, today_date.month, today_date.day) # today at 00:00
        # today = datetime.date(2020, 1, 1)
        log.debug(f'today_date: {today_date}')
        log.debug(f'today: {today}')
        # yesterday = datetime.date(today.year, today.month, today.day - 1)
        yesterday = today - datetime.timedelta(days=1)
        log.debug(f'yesterday: {yesterday}')

        if self.last_data > today:
            today_new_count = len(df[df.ConfirmDate > today])
            today_bkk_new_count = len(df[(df.ConfirmDate > today) & (df.ProvinceEn == "Bangkok")])
        else:
            today_new_count = self.default_value
            today_bkk_new_count = self.default_value

            wdosource = CountryWorldometerSource(self.row_filter, self.column_filter, self.default_value)
            wdo_values = wdosource.get_data()
            if len(wdo_values) >= 1 and wdo_values[0] != "N/A":
                today_new_count = wdo_values[0]

        yesterday_new_count = len(df[(df.ConfirmDate > yesterday) & (df.ConfirmDate < today)])
        yesterday_bkk_new_count = len(df[(df.ConfirmDate > yesterday) & (df.ConfirmDate < today) & (df.ProvinceEn == "Bangkok")])

        return [today_new_count,
                today_bkk_new_count,
                yesterday_new_count,
                yesterday_bkk_new_count]

    def _cleanup_data(self, df:pd.DataFrame) -> pd.DataFrame:
        # convert date ConfirmDate into datetime
        df['ConfirmDate'] = df['ConfirmDate'].astype('datetime64[ns]')
        # TODO: convert provinces into English? and add column
        return df








