from lxml import html
import requests
from selenium import webdriver
from selenium.webdriver.firefox.options import Options

def playerauctions_coin_info_scrape(game_url):
    options = Options()
    options.headless = True
    browser = webdriver.Firefox(options=options)
    browser.get(f"https://www.playerauctions.com/market-price-tracker/{game_url}")
    #r = requests.get(f"https://www.playerauctions.com/market-price-tracker/{game_url}")
    html_content = html.fromstring(browser.page_source)
    browser.quit()
    unit = int(str(html_content.xpath('//*[@id="mainTitle"]/text()')[0]).split("(")[1][:-1] \
               .replace("M", "000000").replace("K", "000"))
    txt = str(html_content.xpath('//h1[@class="title-game"]/text()')[0]).split(" ")
    print(unit)
    no_nos = ["How", "Much", "is", "it", "Worth", "in", "Dollars", "?", "Dollars?", "Prices", "Prices:"]
    new_txt = txt.copy()
    for i in txt:
        if i in no_nos:
            new_txt.remove(i)
    return [" ".join(new_txt), unit]

print(playerauctions_coin_info_scrape("wow"))
