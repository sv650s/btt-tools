import logging
import argparse
from util.webparser import SFGateParser, BBCWorldNewsParser
from util.rss import RSSParser, RSSFormatter

# TODO: implement this class and combine all parsers
# TODO: add the following feeds
# "https://www.independent.co.uk/news/world/rss"
# https://martinfowler.com/feed.atom - this is a atom format and not rss
# https://finance.yahoo.com/news/rssindex


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

    # try:
        # define your news sources here
    parsers = [
        RSSParser("BKK",
                  "https://www.bangkokpost.com/rss/data/topstories.xml",
                  "bangkokpost.com"),
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
                    include_headline = True,
                  include_summary = True),
        RSSParser(
            "NPR",
            "https://feeds.npr.org/510355/podcast.xml",
            "npr.org"
        ),
        RSSParser("TC",
                  "http://feeds.feedburner.com/Techcrunch",
                  "techcrunch.com",
                  link_field='comments'),
        RSSParser("YHOO",
                  "https://www.yahoo.com/news/rss",
                  "news.yahoo.com")
        ]
    formatter = RSSFormatter()
    # list of list of articles from all sources
    master_articles = {}

    max_articles_length = 0
    for parser in parsers:
        try:
            articles = parser.get()
            max_articles_length = max_articles_length if max_articles_length > len(articles) else len(articles)
            master_articles[parser] = articles
        except Exception as e:
            log.debug(f"Error getting from parser: {parser}")
            log.debug(e)


    log.debug(f'max_articles_length {max_articles_length}')

    formatted_articles = []
    # flatten a list
    count = 0

    while count < max_articles_length:
        for parser in master_articles.keys():
            articles = master_articles[parser]
            idx = count % len(articles)
            a = articles[idx]
            formatted_articles.append(formatter.format(a))
            log.debug(f'{count} adding: {formatter.format(a)}')
        count += 1

    log.debug(f'total aggregated articles: {len(formatted_articles)}')
    log.debug(f'{formatted_articles}')

    # get right article and print to output
    print(formatted_articles[article_num % len(formatted_articles)], end='')

    # except Exception as e:
    #     print(f"Error Retrieving News: {e}", '')