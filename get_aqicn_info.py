import logging
import argparse
from util.webparser import AQICNParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get AQI information for BKK')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which a to display')
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

        parser = AQICNParser()
        arts = parser.get()

        log.debug(f'a count: {len(arts)}')
        log.debug(f'arts: {arts}')

        print(parser.format(arts[0]), end="")
    except Exception as e:
        print("AQICN Error", end='')
        print(e)