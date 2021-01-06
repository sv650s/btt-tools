import logging
import argparse
from util.webparser import BBCWorldNewsParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which article to display')
    parser.add_argument('--max_length', metavar='Maximum Length', type=int, default=40,
                        help='Maximum line length before we try to split')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    article_num = args.article_num
    # max length of first line
    max_length = args.max_length

    try:
        if args.log_level is not None:
            log_level = getattr(logging, args.log_level.upper(), None)
        logging.basicConfig(level=log_level)
        log = logging.getLogger(__name__)

        parser = BBCWorldNewsParser()
        arts = parser.get_info()

        log.debug(f'article count: {len(arts)}')

        print(parser.format_article(arts[article_num % len(arts)],
              max_length), end="")
    except Exception as e:
        print("SFGate Error", end='')
        print(e)