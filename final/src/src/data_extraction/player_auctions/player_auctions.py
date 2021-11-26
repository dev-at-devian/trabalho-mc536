import sys
import requests
import json
from datetime import datetime
import numpy as np
import pandas as pd

def get_game_list(filename):
    with open(filename, "r") as game_names:
        game_list = []
        for game in game_names:
            game_list.append(game.rstrip())
        return game_list

def get_player_auctions_price_history(seo_name, timespan, save=False):
    req = requests.get(f"https://api-pn.playerauctions.com/markettracker/api/{seo_name}/CurrencyChart?timeSpan={timespan}")
    if save:
        with open(f"{seo_name}.json", "w") as file:
            json.dump(req.json(), file)
    else:
        return req.json()

def price_history_json_to_csv(json_obj, filename, external):
    with open(external, "w") as file:
        json.dump(json_obj, file)
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
    if len(sys.argv) > 1:
        price_history_json_to_csv(get_player_auctions_price_history(sys.argv[1], 3650), f"../../../../data/processed/prices/coins/{sys.argv[1]}.csv",  f"../../../../data/external/{sys.argv[1]}.csv")
    else:
        for game in get_game_list("./game_names.txt"):
            price_history_json_to_csv(get_player_auctions_price_history(game, 3650), f"../../../../data/processed/prices/coins/{game}.csv",  f"../../../../data/external/{game}.csv")
