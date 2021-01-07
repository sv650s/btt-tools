"""
Get news feed from RSS instead

BBC World: http://feeds.bbci.co.uk/news/video_and_audio/world/rss.xml#
BKK Post: https://www.bangkokpost.com/rss/data/topstories.xml
NYT Home: https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml
NYT World: https://rss.nytimes.com/services/xml/rss/nyt/World.xml
SFGate: https://www.sfgate.com/bayarea/feed/Bay-Area-News-429.php

"""

from util.webparser import Article, WebParser
import xml.etree.ElementTree as ET
import requests
import abc
import logging


log = logging.getLogger(__name__)



class RSSParser(WebParser):

    def __init__(self,
                 source: str,
                 url: str,
                 domain: str,
                 **kwargs
                 ):
        # root of the XML
        self.root = None
        self.source = source
        self.url = url
        self.domain = domain
        super(RSSParser, self).__init__(kwargs)
        if "include_headline" in kwargs.keys():
            self.include_headline = kwargs.pop('include_headline')
        if "include_summary" in kwargs.keys():
            self.include_summary = kwargs.pop('include_summary')

    def get(self) -> list:
        """
        :return: list of articles from source
        """
        response = requests.get(self.get_url())
        data = response.content.decode('utf-8')
        self.root = ET.fromstring(data)
        return self.parse_list_from_page()

    def get_url(self):
        return self.url

    def get_domain(self):
        return self.domain

    def get_source(self) -> str:
        return self.source


    def parse_list_from_page(self) -> list:
        """
        parses arts once we have the soup object

        :param article_number:
        :return: a list of arts
        """
        articles = []
        for item in self.root[0].findall('item'):
            #     print(f'tag: {a.tag}, attrib: {a.attrib}')
            a = self.new_article()
            a.headline = item.find('title').text
            a.link = item.find('link').text
            a.summary = item.find('description').text

            log.debug(a)
            articles.append(a)

        return articles

    def format(self, a:Article, **kwargs) -> str:
        return f'{a.source}|{a.headline} - {a.summary.replace("<p>","")}|{a.domain}|{a.link}'

