import sys; sys.path.append("../igdb");  sys.path.append("../player_auctions")
import json
from igdb import search_igdb_game, get_igdb_games_metadata
from lxml import html
import requests
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from player_auctions import price_history_json_to_csv, get_player_auctions_price_history

def playerauctions_coin_info_scrape(game_url):
    options = Options()
    options.headless = True
    browser = webdriver.Firefox(options=options)
    browser.get(f"https://www.playerauctions.com/market-price-tracker/{game_url}")
    html_content = html.fromstring(browser.page_source)
    browser.quit()
    unit = None
    txt = None
    try:
        unit = int(str(html_content.xpath('//*[@id="mainTitle"]/text()')[0]).split("(")[1][:-1] \
                   .replace("M", "000000").replace("K", "000").replace(".", "").replace(",", ""))
    except:
        unit = 1
    try:
        txt = str(html_content.xpath('//h1[@class="title-game"]/text()')[0]).split(" ")
    except:
        txt = ["undefined"]
    print(unit)
    no_nos = ["How", "Much", "is", "it", "Worth", "in", "Dollars", "?", "Dollars?", "Prices", "Prices:"]
    new_txt = txt.copy()
    for i in txt:
        if i in no_nos:
            new_txt.remove(i)
    return [" ".join(new_txt), unit]



initial_list = None
game_list = []
game_id_list = []
game_description_list = []


with open("../../../../data/processed/misc/player_auctions_games.json", "r") as file:
    initial_list = json.load(file)

for game in initial_list:
    game_req = search_igdb_game(game["game_name"])
    if len(game_req) > 0:
        game["game_id"] = game_req[0]["id"]
        game["game_name"] = game_req[0]["name"]
        game_list.append(game)
        game_id_list.append(int(game_req[0]["id"]))
        print(f"Game: {game['game_name']}, ID: {game['game_id']}")


for gid in game_id_list:
    try:
        print(f"For ID: {gid}")
        ginfo = {}
        ginfo = get_igdb_games_metadata(tuple([gid]), log=True)[0]
        game_list_game = None
        for game in game_list:
            if game["game_name"] == ginfo["name"]:
                game_list_game = game

        with open(f"../../../../data/interim/{game_list_game['game_name']}.json", "w") as file:
            json.dump(ginfo, file)

        coin_info = playerauctions_coin_info_scrape(game_list_game["game_url"])
        print(f"Currency: {coin_info[0]}, Unit: {coin_info[1]}")
        ginfo["currencies"] = []
        ginfo["currencies"].append({
                "id": game_list_game["seo_name"],
                "name": coin_info[0],
                "price": {
                    "fixed_price": None,
                    "unit": coin_info[1],
                    "price_table": f"../prices/coins/{game_list_game['seo_name']}.csv"
                }
        })

        print("Saving prices...")
        price_history_json_to_csv(get_player_auctions_price_history(game_list_game['seo_name'], 3650), \
                                  f"../../../../data/processed/prices/coins/{game_list_game['seo_name']}.csv",
                                  f"../../../../data/external/{game_list_game['seo_name']}.csv")
        print("Saved prices")
        print("Saving game data...")
        with open(f"../../../../data/processed/games/{game_list_game['game_name']}.json", "w") as file:
            json.dump(ginfo, file)
        print("Saved game data")
    except:
        continue
