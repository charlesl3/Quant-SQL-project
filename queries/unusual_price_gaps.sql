CREATE OR REPLACE VIEW gap_view AS
SELECT 
    Date,
    Ticker,
    Open,
    Close,
    LAG(Close) OVER (PARTITION BY Ticker ORDER BY Date) AS Prev_Close,
    ROUND((Open - LAG(Close) OVER (PARTITION BY Ticker ORDER BY Date)) / LAG(Close) OVER (PARTITION BY Ticker ORDER BY Date) * 100, 2) AS Gap_Percent
FROM stock_prices;

SELECT * 
FROM gap_view
WHERE ABS(Gap_Percent) > 2;
