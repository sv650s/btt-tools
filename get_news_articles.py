import logging
import argparse
from util.webparser import SFGateParser, BBCWorldNewsParser
from util.rss import RSSParser

# TODO: implement this class and combine all parsers


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get articles from various sources')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1, required=True,
                        help='Which a to display')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    article_num = args.article_num

    # parameter validation
    if article_num < 1:
        print("ERROR: article_num must be > 0")
        exit(1)

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    try:
        # define your news sources here
        parsers = [
                   RSSParser("BKK",
                              "https://www.bangkokpost.com/rss/data/topstories.xml",
                              "bangkokpost.con"),
                    RSSParser("BBC",
                              "http://feeds.bbci.co.uk/news/video_and_audio/world/rss.xml",
                              "bbc.com"),
                    RSSParser(
                              "NYT",
                              "https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml",
                              "nytimes.com"),
                    RSSParser(
                              "SFGate",
                              "https://www.sfgate.com/bayarea/feed/Bay-Area-News-429.php",
                              "sfgate.com",
                              include_summary = False)
            ]
        # list of list of articles from all sources
        master_articles = {}

        max_articles_length = 0
        for parser in parsers:
            articles = parser.get()
            max_articles_length = max_articles_length if max_articles_length > len(articles) else len(articles)
            master_articles[parser] = articles

        log.debug(f'max_articles_length {max_articles_length}')

        formatted_articles = []
        # flatten a list
        count = 0

        while count < max_articles_length:
            for parser in master_articles.keys():
                articles = master_articles[parser]
                idx = count % len(articles)
                a = articles[idx]
                formatted_articles.append(parser.format(a))
                log.debug(f'adding: {parser.format(a)}')
            count += 1

        log.debug(f'total aggregated articles: {len(formatted_articles)}')
        log.debug(f'{formatted_articles}')

        # get right article and print to output
        print(formatted_articles[article_num % len(formatted_articles)], end='')

    except Exception as e:
        print(f"Error Retrieving News: {e}", '')