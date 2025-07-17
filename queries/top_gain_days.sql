SELECT 
    date,
    ticker,
    ROUND(close - open, 2) AS absolute_change,
    ROUND((close - open)/open * 100, 2) AS percent_change
FROM stock_prices
ORDER BY percent_change DESC
LIMIT 5;
