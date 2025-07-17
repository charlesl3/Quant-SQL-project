SELECT 
    DAYNAME(date) AS weekday,
    ROUND(AVG(volume), 0) AS avg_volume
FROM stock_prices
GROUP BY weekday;
