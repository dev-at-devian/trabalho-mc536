def set_recursive_iterations(iterations):
    query = f"""
SET SESSION MAX_RECURSIVE_ITERATIONS = {iterations};
    """
    return query

def get_table(table):
    query = f"""
SELECT * FROM {table};
    """
    return query

def sma(table, days):
    query = f"""
WITH SMA AS (
SELECT date, avg(price) OVER(
          ORDER BY date
          ROWS BETWEEN {days-1} PRECEDING AND CURRENT ROW)
          AS sma, ROW_NUMBER() OVER() AS rn
FROM {table})
SELECT date, sma from SMA;
    """
    return query

def ema(table, days):
    query = f"""
WITH RECURSIVE COIN AS (
    SELECT *, ROW_NUMBER() OVER () rn FROM {table}
), SMA AS (
SELECT date, avg(price) OVER(
          ORDER BY date
          ROWS BETWEEN {days-1} PRECEDING AND CURRENT ROW)
          AS sma, ROW_NUMBER() OVER() AS rn
FROM COIN), t as (
SELECT date, sma as ema, ROW_NUMBER() OVER () rn FROM
(SELECT date, sma FROM SMA WHERE rn <= {days}
UNION 
SELECT Date as date, Price as sma FROM COIN WHERE rn > {days}) x
), EMA
AS (
      SELECT * FROM t WHERE rn <= {days}
      UNION ALL
      SELECT * FROM (SELECT t2.date, ( (t2.ema*(2/({days}+1))) + (EMA.ema*(1-(2/({days}+1)))) ), t2.rn from EMA join t t2 on EMA.rn = t2.rn - 1 ORDER BY t2.date DESC LIMIT 1) X
    )
SELECT date, ema
FROM EMA;
    """
    return query

def bollinger(table, days):

    query = f"""
SELECT
    date,
    AVG(price) OVER (ORDER BY date ROWS {days-1} PRECEDING) + (STDDEV(price) OVER (ORDER BY date ROWS {days-1} PRECEDING) * 2) AS upper_bollinger,
    AVG(price) OVER (ORDER BY date ROWS {days-1} PRECEDING) - (STDDEV(price) OVER (ORDER BY date ROWS {days-1} PRECEDING) * 2) AS lower_bollinger
FROM
    {table} AS t
    """
    return query

def rsi(table, days):
    query = f"""
WITH RECURSIVE COIN AS (
    SELECT *, ROW_NUMBER() OVER () rn FROM {table}
), PERCENTAGE_CHANGE AS(
    SELECT date, 
           price, 
           100*((price-previous_price)/previous_price) percentage_change
    FROM (
        SELECT date, 
               price,
               (avg(price) OVER(
                    ORDER BY date
                    ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING))
                AS previous_price, 
                row_number() over () AS rn
        FROM COIN
    ) AS t1
), PERCENTAGE_GAIN_AND_LOSS AS (
        SELECT date, 
               price,
               percentage_change,
               (CASE WHEN percentage_change > 0 THEN percentage_change ELSE 0 END) AS percentage_gain,
               (CASE WHEN percentage_change < 0 THEN abs(percentage_change) ELSE 0 END) AS percentage_loss,
               ROW_NUMBER() OVER () AS rn
        FROM PERCENTAGE_CHANGE
), RSI_1 AS (
    SELECT date,
           percentage_gain,
           percentage_loss,
           average_gain,
           average_loss,
           100-(100/(1+(average_gain/average_loss))) rsi_1,
           ROW_NUMBER() OVER () as rn
    FROM (
        SELECT date, 
               price, 
               percentage_gain,
               percentage_loss,
               avg(percentage_gain) OVER (ORDER BY date ROWS {days-1} PRECEDING) AS average_gain,
               avg(percentage_loss) OVER (ORDER BY date ROWS {days-1} PRECEDING) AS average_loss,
               ROW_NUMBER() OVER () AS rn
        FROM PERCENTAGE_GAIN_AND_LOSS
    ) X 
), RSI_2 as (
    SELECT * FROM RSI_1 WHERE rn <= {days}
    UNION ALL
    SELECT * FROM (
    SELECT 
        RSI_1_D.date,
        RSI_1_D.percentage_gain,
        RSI_1_D.percentage_loss,
        RSI_1_D.average_gain, 
        RSI_1_D.average_loss,
        100 - (100/(1+( ((RSI_2.average_gain*{days-1})+RSI_1_D.percentage_gain)/((RSI_2.average_loss*{days-1})+RSI_1_D.percentage_loss) ))),
        RSI_1_D.rn
    FROM RSI_2 JOIN RSI_1 RSI_1_D ON RSI_2.rn = RSI_1_D.rn - 1
    ORDER BY RSI_1_D.date DESC LIMIT 1
    ) x
    
)
SELECT date, rsi_1 as rsi FROM RSI_2;
    """
    return query
