from bs4 import BeautifulSoup
import abc
import logging
import requests

log = logging.getLogger(__name__)

class Article:

    def __init__(self,
                 headline: str = None,
                 summary: str = None,
                 link: str = None):
        self.headline = headline
        self.summary = summary
        self.link = link

    def __str__(self):
        return (f'Article:\n'
                  f'\theadline: {self.headline}\n'
                  f'\tsummary: {self.summary}\n'
                  f'\tlink: {self.link}')

class WebParser(metaclass=abc.ABCMeta):

    def __init__(self):
        self.soup = None

    @abc.abstractmethod
    def get_url(self):
        """
        get URL to parse arts from
        :return:
        """
        pass

    @abc.abstractmethod
    def parse_list_from_page(self) -> list:
        """
        parses arts once we have the soup object

        :param article_number:
        :return: a list of arts
        """
        pass


    @abc.abstractmethod
    def format_article(self, a:Article, max_length: int = 30, **kwargs) -> str:
        """
        formats an article object
        :param a:
        :param max_length:
        :return:
        """
        pass

    def get_info(self):
        response = requests.get(self.get_url())
        response.content.decode('utf-8')
        self.soup = BeautifulSoup(response.text, 'lxml')

        return self.parse_list_from_page()

class BKKPostParser(WebParser):

    def get_url(self):
        return "http://bangkokpost.com"

    def parse_list_from_page(self) -> list:
        articles = []

        # get top story
        a = Article()
        top_stories = self.soup.find(attrs={"class": 'home-highlights'})
        a.summary = top_stories.find("p").get_text()
        a.headline = top_stories.find(attrs={"class": "cx-exclude-id"}).get_text()
        a.link = top_stories.find(attrs={"class": "cx-exclude-id"})['href']

        articles.append(a)


        # get highlights
        highlights = self.soup.find(attrs={"class": "article-highlights-side"})
        detail_list = highlights.find_all(attrs={"class": "list-detail"})
        for i in detail_list:
            href = i.find(attrs={"class": "cx-exclude-id"})
            headline = href.get_text()
            link = href['href']
            summary = i.find('p').get_text()

            a = Article(headline, summary, link)
            articles.append(a)

            log.debug(f'headline: {headline}')
            log.debug(f'summary: {summary}')
            log.debug(f'link: {link}\n\n')


        return articles

    def format_article(self, a:Article, max_length: int = 30, **kwargs) -> str:
        """
        returns headline, summary, and link in 3 different lines
        :param a:
        :param max_length:
        :param kwargs:
        :return:
        """
        # return f'{a.headline}\n{a.summary}'

        summary = a.summary
        if len(summary) > max_length and max_length != 0:
            # split into lines one and two

            last_space_idx = summary[0:max_length].rfind(' ')

            line1 = summary[0:last_space_idx]
            line2 = summary[last_space_idx + 1:]  # +1 to get rid of space
            return f'{line1}\n{line2}'
        else:
            return summary


class SFGateParser(WebParser):

    def get_url(self):
        return "http://sfgate.com"

    def parse_list_from_page(self) -> list:
        articles = []
        spotlights = self.soup.find_all(attrs={"class": "dynamicSpotlight--item-header hdn-analytics"}, href=True)

        log.debug(f"spotlights length: {len(spotlights)}")
        for s in spotlights:
            a = Article()
            a.summary = s.get_text()
            a.link = f'{self.get_url()}/{s["href"]}'

            articles.append(a)


        return articles

    def format_article(self, a:Article, max_length: int = 30, **kwargs) -> str:
        summary = a.summary
        if len(summary) > max_length and max_length != 0:
            # split into lines one and two

            last_space_idx = summary[0:max_length].rfind(' ')

            line1 = summary[0:last_space_idx]
            line2 = summary[last_space_idx + 1:]  # +1 to get rid of space
            return f'{line1}\n{line2}'
        else:
            return summary


class AQICNParser(WebParser):

    def get_url(self):
        return "http://aqicn.org/city/bangkok"

    def parse_list_from_page(self) -> list:
        aqi_number = self.soup.find(attrs={"class": 'aqivalue'}).get_text()
        aqi_info = self.soup.find(attrs={"id": 'aqiwgtinfo'}).get_text()
        a = Article(aqi_number, aqi_info)
        return [a]

    def format_article(self, a:Article, max_length: int = 30, **kwargs) -> str:
        # output for BTT
        # "{\"text\":\"newTitle\",
        # \"icon_data\": \"base64_icon_data\",
        # \"icon_path\":\"path_to_new_icon\",
        # \"background_color\": \"255,85,100,255\",
        # \"font_color\": \"100,200,100,255\",
        # \"font_size\": 10}"

        return f'AQI: {a.headline}\n{a.summary}'


