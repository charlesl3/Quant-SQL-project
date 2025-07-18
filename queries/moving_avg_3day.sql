CREATE OR REPLACE VIEW moving_avg_3day AS
SELECT 
    Date,
    Ticker,
    Close,
    ROUND(
        AVG(Close) OVER (
            PARTITION BY Ticker 
            ORDER BY Date 
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ), 
        2
    ) AS MA_3_Close
FROM stock_prices;

SELECT * 
FROM moving_avg_3day;
