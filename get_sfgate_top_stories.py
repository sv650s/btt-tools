import logging
import argparse
from util.newparser import SFGateParser


log = logging.getLogger(__name__)


if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Get top headline from Bangkok Post')
    parser.add_argument('--article_num', metavar='Article Number', type=int, default=1,
                        help='Which article to display')
    parser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = parser.parse_args()

    article_num = args.article_num
    # max length of first line
    max_length = 35

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    parser = SFGateParser()
    articles = parser.get_articles()

    summary = articles[article_num % len(articles)].summary
    if len(summary) > max_length:
        # split into lines one and two

        last_space_idx = summary[0:max_length].rfind(' ')

        line1 = summary[0:last_space_idx]
        line2 = summary[last_space_idx + 1:] # +1 to get rid of space
        print(f'{line1}\n{line2}')
    else:
        print(summary)

