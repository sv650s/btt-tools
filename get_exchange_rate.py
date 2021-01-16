"""
Get current exchange rate from USD to THB

Today's rate URL: TBD
https://api.exchangeratesapi.io/latest?base=USD&symbols=USD,THB,GBP

Historical Rates: 
http://api.openrates.io/2000-01-03

"""
import logging
import argparse
from util.json import ExchangeRatesParser, JSONDataSource, ExchangeRateFormatter


log = logging.getLogger(__name__)


if __name__ == "__main__":

    argparser = argparse.ArgumentParser(description='Get exchnage rate')
    argparser.add_argument('--base_currency', metavar='Base Currency', type=str, default="USD",
                           help='Bsse currency to get rates on')
    argparser.add_argument('--target_currency', metavar='Target Currency', type=str, default="THB",
                           help='Target currenty to convert to')
    argparser.add_argument('--history_days', metavar='Historical Data (Days)', type=str, default=30,
                           help='How far back to get historical data')
    argparser.add_argument('--log_level', default="ERROR", help='Specify logging level. Default ERROR')
    args = argparser.parse_args()

    if args.log_level is not None:
        log_level = getattr(logging, args.log_level.upper(), None)
    logging.basicConfig(level=log_level)
    log = logging.getLogger(__name__)

    base_currency = args.base_currency
    target_currency = args.target_currency
    history_days = args.history_days

    # TODO: update call to use symbols
    # https://api.exchangeratesapi.io/latest?base=USD&symbols=USD,THB,GBP
    # f"https://api.openrates.io/latest?base={base_currency}",
    source = JSONDataSource(
        f"https://api.exchangeratesapi.io/latest?base={base_currency}",
        ExchangeRatesParser(target_currency)
    )
    formatter = ExchangeRateFormatter()

    # try:
    # TODO: implement filter list for the future
    data = source.get_data()

    log.debug(f'data length: {len(data)}')
    if len(data) > 0:
        print(formatter.format(data[0]), end='')
    else:
        print("No data found", end='')

    # except Exception as e:
    #     print(f"Exchange Rate Error {e}")



