def get_game_list(filename):
    with open(filename, "r") as game_names:
        game_list = []
        for game in game_names:
            game_list.append(game.rstrip())
        return game_list

