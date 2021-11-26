from igdb import search_igdb_game
import sys

games = search_igdb_game(sys.argv[1])
for game in games:
    print(f"{game['id']}: {game['name']}")
