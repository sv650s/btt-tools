import logging
import argparse
from util.webparser import BKKPostParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which article to display')
    parser.add_argument('--max_length', metavar='Maximum Length', type=int, default=40,
                        help='Maximum line length before we try to split')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    max_length = args.max_length
    article_num = args.article_num

    parser = BKKPostParser()

    try:
        articles = parser.get_info()

        log.debug(f'articles length: {len(articles)}')
        if len(articles) > 0:
            print(parser.format_article(articles[article_num % len(articles)]), end='')
        else:
            print("No articles found", end='')

    except Exception as e:
        print("BBK Post Error", end='')
        log.error(e)


