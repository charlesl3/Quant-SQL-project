SELECT 
    date,
    ticker,
    close,
    close - FIRST_VALUE(close) OVER (ORDER BY date) AS cumulative_return
FROM stock_prices;
