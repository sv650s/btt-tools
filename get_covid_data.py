"""
Gets data from worldometer and formats it to be used in BTT widget

"""
#import libraries
import os, sys
import json
import pandas as pd
# import geopandas as gpd
import numpy as np
from numpy import int64
import requests, io
import urllib.request
# these are throwing an error when imported
#
# import folium
# from folium import plugins
# import fiona
# import branca
# from branca.colormap import linear
from bs4 import BeautifulSoup
import matplotlib.pyplot as plt
import logging
from pprint import pprint as pp

logging.basicConfig(level=logging.DEBUG)

class HTMLTableParser:

    def parse_url(self, url):
        response = requests.get(url)
        soup = BeautifulSoup(response.text, 'lxml')

        # num_tables = len(soup.find_all('table'))
        # logging.info(f'num_tables: {num_tables}')

        return [(table['id'], self.parse_html_table(table)) \
                for table in soup.find_all('table')]

    def parse_html_table(self, table):
        n_columns = 0
        n_rows = 0
        column_names = []

        # Find number of rows and columns
        # we also find the column titles if we can
        for row in table.find_all('tr'):

            # Determine the number of rows in the table
            td_tags = row.find_all('td')
            if len(td_tags) > 0:
                n_rows += 1
            if n_columns == 0:
                # Set the number of columns for our table
                n_columns = len(td_tags)

            # Handle column names if we find them
            th_tags = row.find_all('th')
            if len(th_tags) > 0 and len(column_names) == 0:
                for th in th_tags:
                    column_names.append(th.get_text())
                n_columns = len(column_names)

        # Safeguard on Column Titles
        logging.debug(f'n_rows: {n_rows}, n_columns: {n_columns}')
        # pp(column_names)
        if len(column_names) > 0 and len(column_names) != n_columns:
            raise Exception("Column titles do not match the number of columns")


        columns = column_names if len(column_names) > 0 else range(0, n_columns)
        df = pd.DataFrame(columns=columns,
                          index=range(0, n_rows))
        row_marker = 0

        for row in table.find_all('tr'):
            column_marker = 0
            columns = row.find_all('td')

            for column in columns:
                df.iat[row_marker, column_marker] = column.get_text()
                column_marker += 1

            if len(columns) > 0:
                row_marker += 1

        # Convert to float if possible
        for col in df:
            try:
                df[col] = df[col].astype(float)
            except ValueError:
                pass

        return df



# CA, COUNTRY
DATA_SOURCE = 'CA'

if DATA_SOURCE == "COUNTRY":
    url = 'https://www.worldometers.info/coronavirus/#countries'
elif DATA_SOURCE == "CA":
    url = 'https://www.worldometers.info/coronavirus/usa/california/'
response = requests.get(url)

# data has raw HTML
data = response.content.decode('utf-8')

hp = HTMLTableParser()
table_today = hp.parse_url(url)[0][1] # Grabbing the table from the tuple
table_yesterday = hp.parse_url(url)[1][1] # Grabbing the table from the tuple
tables = [table_today, table_yesterday]
logging.info(table_today.head(10))


for table in tables:

    # drop new line '\n' charachter
    table.replace(['\n'], '', regex=True, inplace=True)
    table.replace([','], '', regex=True, inplace=True)

    new_column_names = []

    # drop unwanted special characters using a loop
    for col in table.columns[1:11]:
        table[col] = table[col].str.replace("+", "").str.replace(",", "").str.replace("N/A", "").str.replace(" ", "").str.replace( " ", "")

    if DATA_SOURCE == "COUNTRY":
        #Drop top buttom unwanted rows
        table.drop(table.index[[0, 1, 2, 3, 4, 5, 6, 7]], inplace=True).reset_index(drop=True, inplace=True)
        #drop tail unwanted rows
        table.drop(table.tail(8).index, inplace=True)

        # rename columns to something more usable
        table.rename(columns={'Country,Other': 'COUNTRY_NAME', 'Serious,Critical': 'Serious_Critical'}, inplace=True)
        new_column_names = [col.lower().replace('\xa0','_').replace(' ', '_').replace('\n','').replace('/','_') for col in table.columns]

    else:

        # df_today = table_today.drop(table_today.index[[0]]).reset_index(drop=True)
        table.drop(table.tail(1).index, inplace=True)

        new_column_names = [col.lower().replace('\xa0','_').replace(' ', '_').replace('\n','').replace('/','_') for col in table.columns]
        logging.debug(f"new_column_names {new_column_names}")

        # convert object columns in dataframe to numeric
        table.fillna('', inplace=True)
        table.replace(np.nan, '', inplace=True)
        table.replace(np.inf, '', inplace=True)

        # looks like a lot of the county values have a trailing space
        # table.County = table.County.str.strip()
        table.County = table.County.apply(lambda x: x.strip())

        logging.debug("after stripping County")
        logging.debug(table.County.unique())

        # for col in df1.columns[1:11]:
        #     df_today[col] = df_today.to_numeric(df1[col], errors='ignore')

    logging.info("Renaming columns")
    logging.debug(f"Old columns: {table.columns}")
    table.columns = new_column_names
    logging.debug(f"New columns: {table.columns}")


df_today = tables[0]
df_yesterday = tables[1]

logging.debug(f'SF rows: {len(df_today[df_today.county == "San Francisco"])}')
new_today = df_today[df_today.county == "San Francisco"].newcases
logging.debug(new_today)
new_yesterday = df_yesterday[df_yesterday.county == "San Francisco"].newcases


# print(f"New Cases - Today: {new_today}")
print(f"New Cases - Today: {new_today} Yesterday: {new_yesterday}")