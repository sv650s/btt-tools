import logging
import argparse
from util.rss import RSSParser, RSSFormatter

# TODO: implement this class and combine all parsers
# TODO: add the following feeds
# "https://www.independent.co.uk/news/world/rss"
# https://martinfowler.com/feed.atom - this is a atom format and not rss
# https://finance.yahoo.com/news/rssindex


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get data from various sources')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which article to display. Must be >= 1. Numbers below that will be set to 1')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    article_num = args.article_num

    # parameter validation
    if article_num < 1:
        article_num = 1

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
        RSSParser("BKK",
                  "https://www.bangkokpost.com/rss/data/most-recent.xml",
                  "bangkokpost.com"),
        RSSParser("BBC",
                  "http://feeds.bbci.co.uk/news/world/us_and_canada/rss.xml",
                  "bbc.com"),
        RSSParser("BBC-World",
                  "http://feeds.bbci.co.uk/news/video_and_audio/world/rss.xml",
                  "bbc.com"),
        # CNN Top Stories
        RSSParser("CNN",
                  "http://rss.cnn.com/rss/cnn_topstories.rss",
                  "cnn.com"),
        # CNN World News
        RSSParser("CNN-World",
                  "http://rss.cnn.com/rss/edition_world.rss",
                  "cnn.com"),
        # NYT Home Page
        RSSParser("NYT",
                  "https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml",
                  "nytimes.com"),
        # NYT World News
        RSSParser("NYT-World",
                  "https://rss.nytimes.com/services/xml/rss/nyt/World.xml",
                  "nytimes.com"),
        # SF Gate Top News Stories
        RSSParser("SFGate",
                  "https://www.sfgate.com/bayarea/feed/Bay-Area-News-429.php",
                  "sfgate.com",
                    include_headline = True,
                  include_summary = True),
        RSSParser("NPR",
                  "https://feeds.npr.org/1001/rss.xml",
                  "npr.org"),
        RSSParser("TC",
                  "http://feeds.feedburner.com/Techcrunch",
                  "techcrunch.com",
                  link_field='comments'),
        RSSParser("YHOO",
                  "https://www.yahoo.com/news/rss",
                  "news.yahoo.com")
        # TODO: ATOM structure might be different and we might need a new parser
        # RSSParser("MF",
        #           "https://martinfowler.com/feed.atom",
        #           "martinflowler.com")
        ]
    formatter = RSSFormatter()
    # list of list of data from all sources
    master_articles = {}

    # this is max articles per source - we will fill up this number of slots per source later in our master list
    max_articles_length = 0
    for parser in parsers:
        try:
            articles = parser.get()
            max_articles_length = max_articles_length if max_articles_length > len(articles) else len(articles)
            log.debug(f"max_articles_length: {max_articles_length}")
            master_articles[parser] = articles
        except Exception as e:
            log.debug(f"Error getting from parser: {parser}")
            log.debug(e)


    log.debug(f'max_articles_length: {max_articles_length}')

    formatted_articles = []
    # flatten a list
    count = 0

    while count < max_articles_length:
        for parser in master_articles.keys():
            articles = master_articles[parser]
            log.debug(f"len(articles) {len(articles)} count {count}")
            idx = count % len(articles)
            a = articles[idx]
            formatted_articles.append(formatter.format(a))
            log.debug(f'{count} adding: {formatter.format(a)}')
        count += 1

    log.debug(f'total aggregated data: {len(formatted_articles)}')
    log.debug(f'{formatted_articles}')

    # get right article and print to output
    print(formatted_articles[article_num % len(formatted_articles)], end='')

    # except Exception as e:
    #     print(f"Error Retrieving News: {e}", '')