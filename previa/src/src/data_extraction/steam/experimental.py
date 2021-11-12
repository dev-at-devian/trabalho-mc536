import requests

overview_url = r"https://steamcommunity.com/market/priceoverview/?appid={appid}&currency=7&market_hash_name={hash_name}"
history_url = "https://steamcommunity.com/market/pricehistory/?country=US&currency=7&appid={appid}&market_hash_name={hash_name}"

cookie = {'steamLogin': '---'}
data = requests.get(history_url, cookies=cookie)

