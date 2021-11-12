import sys; sys.path.append("../util")
from api_keys import igdb_api as api_key
from json_templates import game_info
from datetime import datetime
import json
import requests

def search_igdb_game(query):
    url = 'https://api.igdb.com/v4/games/'
    headers = {"Client-ID": api_key["client_id"],
               "Authorization": f"Bearer {api_key['access_token']}",
               "Accept": "application/json"}
    data = f"search \"{query}\";fields name;"
    req = requests.post(url=url, data=data, headers=headers).json()
    return req


def get_igdb_games_metadata(ids, log=False):
    games = []
    if len(ids) == 1:
        ids = f"({ids[0]})"

    url = 'https://api.igdb.com/v4/games/'
    ic_url = "https://api.igdb.com/v4/involved_companies"
    c_url = "https://api.igdb.com/v4/companies"
    p_url = "https://api.igdb.com/v4/platforms"
    g_url = "https://api.igdb.com/v4/genres"
    r_url = "https://api.igdb.com/v4/release_dates"
    k_url = "https://api.igdb.com/v4/keywords"

    headers = {"Client-ID": api_key["client_id"],
               "Authorization": f"Bearer {api_key['access_token']}",
               "Accept": "application/json"}
    data = f"fields name,summary,involved_companies,platforms,category,genres,release_dates; where id = {ids};"
    #data = f"search \"GTA V\";fields name,summary,involved_companies,platforms,category,genres,release_dates,keywords;"

    req = requests.post(url=url, data=data, headers=headers).json()

    for game in req:
        game_json = game_info.copy()
        game_json["name"] = game["name"]
        if log:
            print(f"Name: {game_json['name']}")
        if "summary" in game:
            game_json["description"] = game["summary"]
        game_json["steam"]["steam_game"] = False
        game_json["steam"]["appid"] = None

        if "involved_companies" in game:
            for company in game["involved_companies"]:
                ic_data = f"fields *; where id = {company};"
                ic_req = requests.post(url=ic_url, data=ic_data, headers=headers).json()[0]
                company_id = ic_req["company"]
                c_data = f"fields name; where id = {company_id};"
                company_name = requests.post(url=c_url, data=c_data, headers=headers).json()[0]["name"]
                if ic_req["developer"]:
                    game_json["developers"].append(company_name)
                if ic_req["publisher"]:
                    game_json["publishers"].append(company_name)

        if log:
            print("Developed by:")
            for dev in game_json['developers']:
                print(f"- {dev}")
            print("Published by:")
            for pub in game_json['publishers']:
                print(f"- {pub}")

        if "keywords" in game:
            for keyword in game["keywords"]:
                k_data = f"fields name; where id = {keyword};"
                keyword_name = requests.post(url=k_url, data=k_data, headers=headers).json()[0]["name"]
                game_json["keywords"].append(keyword_name)

        if log:
            print("Keywords:")
            for k in game_json['keywords']:
                print(f"- {k}")

        if "platforms" in game:
            for platform in game["platforms"]:
                p_data = f"fields name; where id = {platform};"
                platform_name = requests.post(url=p_url, data=p_data, headers=headers).json()[0]["name"]
                game_json["platforms"].append(platform_name)

        if log:
            print("Platforms:")
            for p in game_json['platforms']:
                print(f"- {p}")

        if "genres" in game:
            for genre in game["genres"]:
                g_data = f"fields name; where id = {genre};"
                genre_name = requests.post(url=g_url, data=g_data, headers=headers).json()[0]["name"]
                game_json["genres"].append(genre_name)

        if log:
            print("Genres:")
            for g in game_json['genres']:
                print(f"- {g}")

        if log:
            print("Release dates:")

        if "release_dates" in game:
            earliest_release_date = float("inf")
            for release_date in game["release_dates"]:
                r_data = f"fields date; where id = {release_date};"
                release_date_stamp = requests.post(url=r_url, data=r_data, headers=headers).json()[0]
                if "date" in release_date_stamp:
                    release_date_stamp = release_date_stamp["date"]
                else:
                    continue
                if log:
                    print(f"- {release_date_stamp}")
                if earliest_release_date > release_date_stamp:
                    earliest_release_date = release_date_stamp
            game_json["release_date"] = datetime.fromtimestamp(earliest_release_date).strftime("%Y-%m-%d")
        games.append(game_json)

    return games

if __name__ == "__main__":
    ids = tuple([int(i) for i in sys.argv[1:]])

    games = get_igdb_games_metadata(ids, log=True)
    for game in games:
        with open(f"../../../../data/processed/games/{game['name']}.json", "w") as file:
            json.dump(game, file)
