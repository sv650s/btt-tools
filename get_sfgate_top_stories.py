import logging
import argparse
from util.webparser import SFGateParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which a to display')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    article_num = args.article_num

    try:
        if args.log_level is not None:
            log_level = getattr(logging, args.log_level.upper(), None)
        logging.basicConfig(level=log_level)
        log = logging.getLogger(__name__)

        parser = SFGateParser()
        arts = parser.get()

        log.debug(f'a count: {len(arts)}')

        print(parser.format(arts[article_num % len(arts)]), end="")
    except Exception as e:
        print(f"SFGate Error: {e}")