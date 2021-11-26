import mysql.connector
import matplotlib.pyplot as plt
import numpy as np
from datetime import datetime
from render_graph import format_graph, plot_prices
import matplotlib.dates as mdates
from stats_queries import sma, ema, rsi, bollinger, set_recursive_iterations

plt.style.use("./style.mplstyle")
fig, ax = plt.subplots()

mydb = mysql.connector.connect(
  host="localhost",
  user="devian",
  password="oursql",
  database="testing"
)

mycursor = mydb.cursor()

mycursor.execute(set_recursive_iterations(100000))

mycursor.execute("""
SELECT * FROM ADA;
""")

values = np.array(mycursor.fetchall())

mycursor.execute(sma("ADA", 20))

sma_30day = np.array(mycursor.fetchall())

mycursor.execute(ema("ADA", 20))

ema_30day = np.array(mycursor.fetchall())

mycursor.execute(rsi("ADA", 20))

rsi_30day = np.array(mycursor.fetchall())

mycursor.execute(bollinger("ADA", 20))

bollinger_bands = np.array(mycursor.fetchall())

x = np.array([mdates.date2num(x) for x in values[:,0]])
y = np.array([float(i) for i in values[:,1]])

format_graph(fig, ax, x, y)
plot_prices(fig, ax, x, y)
plt.plot(sma_30day[:,0], sma_30day[:,1])
plt.plot(ema_30day[:,0], ema_30day[:,1])
plt.plot(rsi_30day[2:,0], rsi_30day[2:,1]/100)
plt.plot(bollinger_bands[:,0], bollinger_bands[:,1], linewidth=1)
plt.plot(bollinger_bands[:,0], bollinger_bands[:,2], linewidth=1)
plt.show()
