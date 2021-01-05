from bs4 import BeautifulSoup
import abc
import logging
import requests

log = logging.getLogger(__name__)

class Article:

    def __init__(self):
        self.headline = None
        self.summary = None
        self.link = None

    def __str__(self):
        return (f'Article:\n'
                  f'\theadline: {self.headline}\n'
                  f'\tsummary: {self.summary}\n'
                  f'\tlink: {self.link}')

class NewsParser(metaclass=abc.ABCMeta):

    def __init__(self):
        self.soup = None

    @abc.abstractmethod
    def get_url(self):
        """
        get URL to parse articles from
        :return:
        """
        pass

    @abc.abstractmethod
    def parse_articles(self) -> list:
        """
        parses articles once we have the soup object

        :param article_number:
        :return: a list of articles
        """
        pass

    def get_articles(self):
        response = requests.get(self.get_url())
        response.content.decode('utf-8')
        self.soup = BeautifulSoup(response.text, 'lxml')

        return self.parse_articles()

class BKKPostParser(NewsParser):

    def get_url(self):
        return "http://bangkokpost.com"

    def parse_articles(self) -> list:
        a = Article()
        top_stories = self.soup.find(attrs={"class": 'home-highlights'})
        a.summary = top_stories.find("p").get_text()
        a.headline = top_stories.find(attrs={"class": "cx-exclude-id"}).get_text()
        a.link = top_stories.find(attrs={"class": "cx-exclude-id"})['href']

        return [a]

class SFGateParser(NewsParser):

    def get_url(self):
        return "http://sfgate.com"

    def parse_articles(self) -> list:
        articles = []
        spotlights = self.soup.find_all(attrs={"class": "dynamicSpotlight--item-header hdn-analytics"}, href=True)

        log.debug(f"spotlights length: {len(spotlights)}")
        for s in spotlights:
            a = Article()
            a.summary = s.get_text()
            a.link = f'{self.get_url()}/{s["href"]}'

            articles.append(a)


        return articles


