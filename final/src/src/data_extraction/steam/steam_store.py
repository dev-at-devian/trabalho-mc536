import sys; sys.path.append("../util")
import requests
import json
from json_templates import game_info
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

def get_steam_game_metadata(appid):
    url = f"https://store.steampowered.com/api/appdetails?appids={appid}&cc=US"
    req = requests.get(url).json()[str(appid)]
    if req["success"]:
        game = game_info.copy()
        data = req["data"]
        game["name"] = data["name"]
        game["description"] = data["short_description"]
        game["steam"]["steam_game"] = True
        game["steam"]["appid"] = data["steam_appid"]
        game["developers"] = data["developers"]
        game["publishers"] = data["publishers"]
        game["keywords"] = data["categories"]
        game["platforms"] = data["platforms"]
        game["genres"] = data["genres"]
        game["release_date"] = datetime.strptime(data["release_date"]["date"], "%b %d, %Y").strftime("%Y-%m-%d")
        return game
    return None


def get_steam_games_metadata(*argv):
    metadata_list = []
    for appid in argv:
        metadata = get_steam_game_metadata(appid)
        if metadata is not None:
            metadata_list.append(metadata)
    return metadata_list



def price_history_json_to_csv(json_obj, filename):
    df = price_history_json_to_dataframe(json_obj)
    df.to_csv(filename)

def price_history_json_to_dataframe(json_obj):
    x = []
    y = []
    prices = json_obj["prices"]
    for price in prices:
        price_date = datetime.strptime(price[0], "%b %d %Y %H: +0").date()
        price_value = price[1]
        x.append(price_date)
        y.append(price_value)
    return pd.DataFrame(np.array(list(zip(x, y))), columns=["date", "price"])


"""
with open("data.json", "w", encoding="utf-8") as file:
    json.dump(get_steam_games_metadata(440, 218620, 271590), file, indent=4)
"""

if __name__ == "__main__":
    with open("../../../../data/processed/games/TF2.json", "w") as file:
        json.dump(get_steam_game_metadata(440), file)
