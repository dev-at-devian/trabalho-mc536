from zipfile import ZipFile
from io import BytesIO
import requests
import pandas as pd
from datetime import datetime

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
        zf.extractall("./extracted/")

    with open(f"./extracted/{symbol}-{interval}-{year}-{month:02}.csv", "r") as file:
        df = pd.read_csv(file, header=None, usecols=[0, 1], names=["date", "opening_price"])
        df["date"] = df["date"].apply(lambda x: datetime.utcfromtimestamp(x/1000))
        return df

def get_binance_data_range(symbol, start_date, end_date, interval=intervals['daily']):
    # TODO
    pass

