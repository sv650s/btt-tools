"""
Get news feed from RSS instead

BBC World: http://feeds.bbci.co.uk/news/video_and_audio/world/rss.xml#
BKK Post: https://www.bangkokpost.com/rss/data/topstories.xml
NYT Home: https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml
NYT World: https://rss.nytimes.com/services/xml/rss/nyt/World.xml
SFGate: https://www.sfgate.com/bayarea/feed/Bay-Area-News-429.php

"""

from util.webparser import Article, WebParser, PipeArticleFormatter
import xml.etree.ElementTree as ET
import requests
import abc
import logging
import re


log = logging.getLogger(__name__)

class RSSFormatter(PipeArticleFormatter):

    def format(self, a: Article, **kwargs) -> str:
        # this is removing the entire headline from SFgate for some reason
        cleanHTMLTags = re.compile('<.*?>')
        cleanHTMLSymbols = re.compile('\[[a-z0-9;]?\]')
        # TODO: add this to the stripping

        if a.headline is not None:
            a.headline = re.sub(cleanHTMLTags, '', a.headline).replace('"', '').strip()
        if a.summary is not None:
            a.summary = re.sub(cleanHTMLTags, '', a.summary).replace('"', '').strip()

        return super(RSSFormatter, self).format(a)


# TODO: use pubDate to filter out old articles
class RSSParser(WebParser):

    def __init__(self,
                 source: str,
                 url: str,
                 domain: str,
                 limit: int = 10,
                 headline_field = 'title',
                 summary_field = 'description',
                 link_field = 'link',
                 **kwargs
                 ):
        """

        :param source: text new source - used to drive icon in BTT
        :param url: url or the article
        :param domain: domain of site - used to prevent BTT from opening too many tabs
        :param limit: limits # of articles per source
        :param headline_field: field in XML to get headline info
        :param summary_field: field in XML to get summary
        :param link_field: field in XML to get link
        :param kwargs: pass variables to parent constructor
        """
        # root of the XML
        self.root = None
        self.source = source
        self.url = url
        self.domain = domain
        self.limit = limit
        self.headline_field = headline_field
        self.summary_field = summary_field
        self.link_field = link_field
        super(RSSParser, self).__init__()

        # this has been moved to RSSFormatter - but keeping it here for reference
        # if "include_headline" in kwargs.keys():
        #     self.include_headline = kwargs.pop('include_headline')
        # if "include_summary" in kwargs.keys():
        #     self.include_summary = kwargs.pop('include_summary')
        # log.debug(f'include_headline: {self.include_headline} include_summary: {self.include_summary}')

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
        counter = 0
        for item in self.root[0].findall('item'):
            if counter < self.limit:
                #     print(f'tag: {a.tag}, attrib: {a.attrib}')
                a = self.new_article()
                headline = item.find(self.headline_field)
                if headline is not None:
                    log.debug(f'headline: {headline}')
                    a.headline = headline.text
                link = item.find(self.link_field)
                if link is not None:
                    log.debug(f'link: {link}')
                    a.link = link.text
                summary = item.find(self.summary_field)
                if summary is not None:
                    log.debug(f'summary: {summary}')
                    a.summary = summary.text

                log.debug(a)
                articles.append(a)
                counter += 1
            else:
                break

        return articles

