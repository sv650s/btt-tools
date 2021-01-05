import requests
from bs4 import BeautifulSoup
import logging
import pandas as pd
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

    # # get homepage
    # url = 'http://bangkokpost.com'
    # response = requests.get(url)
    # data = response.content.decode('utf-8')
    # soup = BeautifulSoup(response.text, 'lxml')
    #
    # top_stories = soup.find(attrs={"class": 'home-highlights'})
    #
    # summary = top_stories.find("p").get_text()
    # headline = top_stories.find(attrs={"class": "cx-exclude-id"}).get_text()

    a = articles[0]

    if args.mode == "headline":
        print(f'{a.headline}', end='')
    elif args.mode == "summary":
        print(f'{a.summary}', end='')
    else:
        print(f'{a.headline}\n{a.summary}', end='')

