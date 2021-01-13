"""
parser that take HTTP response in JSON format

"""
import json
import requests
import logging
from util.datasource import ExternalDataSource, DataFormatter, DataParser


log = logging.getLogger(__name__)


class JSONDataSource(ExternalDataSource):

    def __init__(self,
                 url: str,
                 parser: DataParser):
        self.parser = parser
        self.url = url

    def get_data(self, **kwargs) -> list:
        """
        :param **kwargs:
        :return: list of length 1 with exchange rate
        """
        response = requests.get(self.url)
        data = response.content.decode('utf-8')
        json_data = json.loads(data)
        return self.parser.parse_data(json_data)

class ExchangeRatesParser(DataParser):

    def __init__(self,
                 target_currency):
        self.target_currency = target_currency


    def parse_data(self, data, **kwargs) -> list:
        """

        :param **kwargs:
        :param data:  JSON data
        :return:
        """
        exchange_rate = data['rates'][self.target_currency]
        return [exchange_rate]

class ExchangeRateFormatter(DataFormatter):

    def format(self, data: str, **kwargs) -> str:
        """

        :param data: should be a number of sorts
        :param kwargs:
        :return: 2 precision number
        """
        return str(round(float(data), 2))



