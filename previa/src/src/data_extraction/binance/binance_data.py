from zipfile import ZipFile
from io import BytesIO
import requests
import pandas as pd
from datetime import datetime, timedelta
from dateutil.relativedelta import relativedelta
import sys

intervals = {
    "every1min": "1m",
    "every3min": "3m",
    "every5min": "5m",
    "every15min": "15m",
    "every30min": "30m",
    "every1hour": "1h",
    "every2hours": "2h",
    "every4hours": "4h",
    "every6hours": "6h",
    "every8hours": "8h",
    "every12hours": "12h",
    "daily": "1d",
    "every3days": "3d",
    "weekly": "1w",
    "monthly": "1mo"
}

def get_binance_data(symbol, date, interval=intervals['daily']):
    base_url = "https://data.binance.vision"
    year = date.year
    month = date.month
    url = f"{base_url}/data/spot/monthly/klines/{symbol}/{interval}/{symbol}-{interval}-{year}-{month:02}.zip"

    req = requests.get(url, allow_redirects=True)

    with ZipFile(BytesIO(req.content)) as zf:
        zf.extractall("../../../../data/external/binance_extracted")

    with open(f"../../../../data/external/binance_extracted/{symbol}-{interval}-{year}-{month:02}.csv", "r") as file:
        df = pd.read_csv(file, header=None, usecols=[0, 1], names=["date", "price"])
        df["date"] = df["date"].apply(lambda x: datetime.utcfromtimestamp(x/1000))
        df.set_index("date", inplace=True)
        return df

def get_binance_data_range(symbol, start_date, end_date, interval=intervals['daily']):
    df = pd.DataFrame([], columns=["date", "price"])
    df.set_index("date", inplace=True)
    dates = []
    cur_date = start_date.replace(day=1)
    while not ((cur_date.month == end_date.month) and (cur_date.year == end_date.year)):
        dates.append(cur_date)
        cur_date = cur_date + relativedelta(months=1)
    dates.append(cur_date)
    for date in dates:
        df = df.append(get_binance_data(symbol, date))
    return df

if __name__ == "__main__":
    symbol = sys.argv[1]
    #start_date = datetime.strptime("2017-08-01", "%Y-%m-%d")
    start_date = datetime.strptime("2021-03-01", "%Y-%m-%d")
    end_date = datetime.strptime("2021-10-01", "%Y-%m-%d")
    df = get_binance_data_range(symbol, start_date, end_date)
    df.to_csv(f"../../../../data/processed/prices/crypto/{symbol}.csv")
