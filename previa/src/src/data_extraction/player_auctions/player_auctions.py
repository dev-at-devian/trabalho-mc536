import sys
import requests
import json
from datetime import datetime
import numpy as np
import pandas as pd

def get_player_auctions_price_history(seo_name, timespan, save=False):
    req = requests.get(f"https://api-pn.playerauctions.com/markettracker/api/{seo_name}/CurrencyChart?timeSpan={timespan}")
    if save:
        with open(f"{seo_name}.json", "w") as file:
            json.dump(req.json(), file)
    else:
        return req.json()

def price_history_json_to_csv(json_obj, filename):
    df = price_history_json_to_dataframe(json_obj)
    df.to_csv(filename)
    pass

def price_history_json_to_dataframe(json_obj):
    x = []
    y = []
    prices = json_obj["Result"]["CurrencyChart"]
    for price in prices:
        price_date = datetime.strptime(price["Date"], "%Y-%m-%d").date()
        price_value = price["AvgOrderPrice"]["USD"]
        x.append(price_date)
        y.append(price_value)
    df = pd.DataFrame(np.array(list(zip(x, y))), columns=["date", "price"])
    df.set_index("date", inplace=True)
    return df


if __name__ == "__main__":
    price_history_json_to_csv(get_player_auctions_price_history(sys.argv[1], 3650), f"../../../../data/processed/prices/coins/{sys.argv[1]}.csv")
