import sys; sys.path.append("../util")
from api_keys import backpack_tf as api_key
import requests

print(api_key)
req = requests.get("https://backpack.tf/api")
