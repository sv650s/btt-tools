import logging
import argparse
from util.newparser import BKKPostParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    parser.add_argument('--mode', metavar='Get Mode', type=str, default='all', required=True,
                        help='What do you want to get? headline, summary, all')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    parser = BKKPostParser()
    articles = parser.get_articles()

    a = articles[0]

    if args.mode == "headline":
        print(f'{a.headline}', end='')
    elif args.mode == "summary":
        print(f'{a.summary}', end='')
    else:
        print(f'{a.headline}\n{a.summary}', end='')

