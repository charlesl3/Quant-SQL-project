CREATE TABLE stock_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    open FLOAT,
    close FLOAT,
    volume BIGINT,
    ticker VARCHAR(10)
);
