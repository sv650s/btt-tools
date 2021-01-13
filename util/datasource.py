"""
CovidParser class

This does the bulk of the work
"""

import abc
import logging

log = logging.getLogger(__name__)

class ExternalDataSource(metaclass=abc.ABCMeta):
    """
    Abstract class to get data from external sources
    """

    @abc.abstractmethod
    def get_data(self, **kwargs):
        pass

class DataParser(metaclass=abc.ABCMeta):

    @abc.abstractmethod
    def parse_data(self, data, **kwargs) -> list:
        pass


class DataFormatter(metaclass=abc.ABCMeta):
    """
    Abstract interface for formatting data
    """

    @abc.abstractmethod
    def format(self, data, **kwargs) -> str:
        pass










