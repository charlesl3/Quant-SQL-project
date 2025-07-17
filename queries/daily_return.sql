SELECT 
    date,
    ticker,
    close,
    LAG(close) OVER (ORDER BY date) AS prev_close,
    ROUND((close - LAG(close) OVER (ORDER BY date)) / LAG(close) OVER (ORDER BY date), 5) AS daily_return
FROM stock_prices;
