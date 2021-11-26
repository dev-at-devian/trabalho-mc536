import json

game_list_seo = None
game_list_links = None
game_list = []
with open("../../../../data/interim/player_auctions_games.json", "r") as file:
    game_list_seo = json.load(file)
with open("../../../../data/interim/player_auctions_games_url.json", "r") as file:
    game_list_links = json.load(file)

for game in game_list_seo:
    for game2 in game_list_links:
        if game["game_name"] == game2["game_name"]:
            game["game_url"] = game2["game_url"]
            game_list.append(game)

with open("../../../../data/processed/misc/player_auctions_games.json", "w") as file:
    json.dump(game_list, file, indent=4)
