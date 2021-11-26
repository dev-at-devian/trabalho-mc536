import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import matplotlib.cm as cm
from datetime import datetime
from matplotlib.collections import LineCollection
from matplotlib.collections import PolyCollection

def plot_prices(fig, ax, x, y):
    points = np.array([x, y]).T.reshape(-1, 1, 2)
    segments = np.concatenate([points[:-1], points[1:]], axis=1)

    norm = plt.Normalize(x.min(), x.max())
    lc = LineCollection(segments, cmap=cm.plasma, norm=norm)

    lc.set_array(x)
    lc.set_linewidth(1.5)
    line = ax.add_collection(lc)
    ax.autoscale_view()

    m = cm.ScalarMappable(norm=norm, cmap=cm.plasma)
    for segment in segments:
        ax.fill_between(segment[:,0], segment[:,1], interpolate=True, color=m.to_rgba(segment[0,0]), alpha=0.05)

def format_graph(fig, ax, x, y):
    ax.set_title("Price Chart - OSRS/USD")
    ax.set_xlabel("Date")
    ax.set_ylabel("Price (USD)")
    ax.set_xlim([x.min(), x.max()])
    ax.set_ylim([0, y.max()*1.1])
    ax.xaxis.set_major_locator(mdates.YearLocator())
    ax.xaxis.set_minor_locator(mdates.MonthLocator())
    ax.xaxis.set_major_formatter(mdates.DateFormatter("%Y"))
    #ax.xaxis.set_minor_formatter(mdates.DateFormatter("%b"))
    ax.yaxis.set_major_formatter('${x:1.2f}')
    fig.set_facecolor("#06000C")
    ax.set_facecolor("#06000C")

if __name__ == "__main__":
    plt.style.use("./style.mplstyle")
    df = pd.read_csv("../crypto/BTCUSDT.csv")
    fig, ax = plt.subplots()
    #x = [datetime.strptime(x, "%Y-%m-%d") for x in df["date"]]
    x = np.array([mdates.datestr2num(x) for x in df["date"]])
    y = df["price"]
    format_graph(fig, ax, x, y)
    plot_prices(fig, ax, x, y)
    plt.tight_layout()
    plt.grid(alpha=0.1)
    plt.show()


