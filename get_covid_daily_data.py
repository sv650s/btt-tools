"""
Gets data from worldometer and formats it to be used in BTT widget

to run via command line:

    python get_covid_daily_data.py COUNTRY Thailand

to run from BTT:

    -- we still have to tell the group what data to pull
    tell application "BetterTouchTool"
        set_persistent_string_variable "CoronaVirusCountry" to "THA"
    end tell

    return do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/COVID && conda run -n covid python get_covid_daily_data.py COUNTRY Thailand"
"""
#import libraries
import pandas as pd
import numpy as np
import requests, io
import logging
import argparse
from util.datasource import CountryWorldometerSource, CAWorldometerSource, ThailandCovidSource

from util.htmlparser import HTMLTableParser


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get COVID daily data from Worldometer')
    parser.add_argument('mode', metavar='Mode', type=str,
                        help='Mode to run in. Current supports: CA or COUNTRY')
    parser.add_argument('row_filter_value', metavar='Row Fitler Value', type=str,
                        help='If COUNTRY mode, this is the country name - ie, Thailand. If CA mode, this is the county name -ie San Francisco')
    parser.add_argument('--column_filter', metavar='Column filter', type=str, default='newcases',
                        help='What column do you want to get the data -ie, newcases')
    parser.add_argument('--source', metavar='Data Source', type=str, default='worldometer',
                        help='What source to get the data: worldometer, th-stat')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    parser.add_argument('--default_fill_value', metavar="Default Fill Value", default='N/A', type=str,
                        help='Replace blank columns with this. Default: N/A')
    args = parser.parse_args()

    if args.log_level is not None:
        loglevel = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=loglevel)
    log = logging.getLogger(__name__)

    mode = args.mode
    source = args.source
    column_filter = args.column_filter # newcases
    row_filter_value = args.row_filter_value # USA
    default_fill_value = args.default_fill_value

    data_fetcher = None

    if mode == "COUNTRY":
        if row_filter_value == "Thailand":
            if source == "worldometer":
                data_fetcher = CountryWorldometerSource(row_filter_value, column_filter, default_fill_value)
            else:
                data_fetcher = ThailandCovidSource(row_filter=row_filter_value,
                                                   column_filter=column_filter,
                                                   default_value = default_fill_value)
        else:
            data_fetcher = CountryWorldometerSource(row_filter_value, column_filter, default_fill_value)
    elif mode == "CA":
        data_fetcher = CAWorldometerSource(row_filter_value, column_filter, default_fill_value)
    else:
        raise Exception("Unknown Mode")

    values = data_fetcher.get_data()

    log.debug(f'values length: {len(values)}')
    output = ""
    index = 0
    for val in values:
        if index == 0:
            output = val
        else:
            output = f'{output}|{val}'
        index += 1



    print(output, end="")
