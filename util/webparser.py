from bs4 import BeautifulSoup
import abc
import logging
import requests

log = logging.getLogger(__name__)

class Article:

    def __init__(self,
                 source: str = None,
                 headline: str = None,
                 summary: str = None,
                 link: str = None):
        self.source = source
        self.headline = headline
        self.summary = summary
        self.link = link

    def __str__(self):
        return (f'Article:\n'
                f'\source: {self.source}\n'
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
    def get_source(self) -> str:
        """
        get common name for source
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

    def format_link(self, new_link: str) -> str:
        """
        formats the link we get from page into a full path
        default implementaton puts the get_url() in front
        :param new_link:
        :return:
        """
        return f'{self.get_url()}{new_link}'


    def format(self, a:Article, **kwargs) -> str:
        """
        formats an a object
        :param a:
        :param max_length:
        :return:
        """
        return f'{a.source}|{a.summary}|{a.link}'

    def get(self) -> list:
        """

        :return: list of articles from source
        """
        response = requests.get(self.get_url())
        response.content.decode('utf-8')
        self.soup = BeautifulSoup(response.text, 'lxml')

        return self.parse_list_from_page()

class BKKPostParser(WebParser):

    def get_url(self):
        return "http://bangkokpost.com"

    def get_source(self) -> str:
        return "BKK"

    def parse_list_from_page(self) -> list:
        articles = []

        # get top story
        a = Article()
        top_stories = self.soup.find(attrs={"class": 'home-highlights'})
        a.source = self.get_source()
        a.summary = top_stories.find("p").get_text()
        a.headline = top_stories.find(attrs={"class": "cx-exclude-id"}).get_text()
        a.link = top_stories.find(attrs={"class": "cx-exclude-id"})['href']

        articles.append(a)


        # get highlights
        highlights = self.soup.find(attrs={"class": "article-highlights-side"})

        if highlights is not None:
            detail_list = highlights.find_all(attrs={"class": "list-detail"})
            for i in detail_list:
                href = i.find(attrs={"class": "cx-exclude-id"})
                headline = href.get_text()
                link = self.format_link(href["href"])
                summary = i.find('p').get_text()

                a = Article(self.get_source(), headline, summary, link)
                articles.append(a)

                log.debug(f'headline: {headline}')
                log.debug(f'summary: {summary}')
                log.debug(f'link: {link}\n\n')
        else:
            a = Article(source=self.get_source(),
                        headline="BKK Error",
                        summary="BKK Error",
                        link=self.get_url())


        return articles



class SFGateParser(WebParser):

    def get_url(self):
        return "http://sfgate.com"

    def get_source(self) -> str:
        return "SFGate"

    def parse_list_from_page(self) -> list:
        articles = []
        spotlights = self.soup.find_all(attrs={"class": "dynamicSpotlight--item-header hdn-analytics"}, href=True)

        log.debug(f"spotlights length: {len(spotlights)}")
        for s in spotlights:
            a = Article()
            a.source = self.get_source()
            a.summary = s.get_text()
            a.link = self.format_link(s['href'])

            articles.append(a)


        return articles



class AQICNParser(WebParser):

    def get_url(self):
        return "http://aqicn.org/city/thailand/bangkok/chulalongkorn-hospital"

    def get_source(self) -> str:
        return "AQICN"

    def parse_list_from_page(self) -> list:
        aqi_number = self.soup.find(attrs={"class": 'aqivalue'}).get_text()
        aqi_info = self.soup.find(attrs={"id": 'aqiwgtinfo'}).get_text()
        a = Article(self.get_source(), aqi_number, aqi_info)
        log.debug(f'a: {a}')
        return [a]

    def format(self, a:Article, **kwargs) -> str:
        # output for BTT
        # "{\"text\":\"newTitle\",
        # \"icon_data\": \"base64_icon_data\",
        # \"icon_path\":\"path_to_new_icon\",
        # \"background_color\": \"255,85,100,255\",
        # \"font_color\": \"100,200,100,255\",
        # \"font_size\": 10}"

        return f'{a.headline}'


class BBCWorldNewsParser(WebParser):

    def get_url(self):
        return "https://www.bbc.com/news/world"

    def get_source(self) -> str:
        return "BBC"

    def parse_list_from_page(self) -> list:
        articles = []

        # get top story
        main_headline_and_link = self.soup.find(attrs={
            "class": "gs-c-promo-heading gs-o-faux-block-link__overlay-link gel-paragon-bold gs-u-mt+ nw-o-link-split__anchor"})
        main_summary = self.soup.find(attrs={"class":
                             "gs-c-promo-summary gel-long-primer gs-u-mt nw-c-promo-summary"}).get_text()
        top_article = Article(
            source = self.get_source(),
            headline = main_headline_and_link.get_text(),
            summary = main_summary,
            link = self.format_link(main_headline_and_link['href'])
        )
        articles.append(top_article)
        log.debug(f'Top news story: {articles[0]}')


        # get other articles
        other_news_block = self.soup.find(attrs={"class":
                                   "gel-layout gel-layout--equal"})

        other_headline_href = other_news_block.find_all(attrs={"class":
                                                              "gs-c-promo-heading gs-o-faux-block-link__overlay-link gel-pica-bold nw-o-link-split__anchor"})
        other_summary_p = other_news_block.find_all('p')
        # using this method, we also get the summary of main headline - need to remove it
        other_summary_p.pop(0)

        log.debug(f'top headline count: {len(other_headline_href)}')
        log.debug(f'top summary count: {len(other_summary_p)}')


        idx = 0
        for href in other_headline_href:
            a = Article(source = self.get_source(),
                headline = href.get_text(),
                summary = other_summary_p[0].get_text(),
                link = self.format_link(href['href']))
            log.debug(f'added a: {a}')
            articles.append(a)
            idx += 1


        return articles

    def format_link(self, new_link: str) -> str:
        """
        override default implementation since get_url is not the base domain for BBC
        :param new_link:
        :return:
        """
        return f'http://www.bbc.com{new_link}'
