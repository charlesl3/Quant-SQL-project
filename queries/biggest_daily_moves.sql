SELECT 
    date,
    open,
    close,
    (close - open) AS daily_change
FROM stock_prices
ORDER BY ABS(close - open) DESC
LIMIT 5;
