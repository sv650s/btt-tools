import logging
import argparse
from util.rss import RSSParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    argparser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    argparser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                           help='Which a to display')
    argparser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = argparser.parse_args()

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    article_num = args.article_num

    parser = RSSParser("BKK",
                       "https://www.bangkokpost.com/rss/data/topstories.xml",
                      "bangkokpost.con")

    try:
        articles = parser.get()

        log.debug(f'articles length: {len(articles)}')
        if len(articles) > 0:
            print(parser.format(articles[article_num % len(articles)]), end='')
        else:
            print("No articles found", end='')

    except Exception as e:
        print(f"BKK Error {e}")



