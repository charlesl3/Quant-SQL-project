# Quantitative Finance SQL Project 🧠📊

This project uses real-world AAPL stock data (2024) and MySQL to analyze price behavior, daily returns, volatility, and more — from a quantitative finance perspective.

## 💾 Data
- Source: Downloaded via Python (see future scripts)
- Format: CSV with columns (date, open, close, volume, ticker)

## 📐 Schema
Defined in `schema/create_stock_prices.sql`

## 🔍 Analyses Performed

- ✅ Average closing price
- ✅ Daily return computation
- ✅ Cumulative return since day 1
- ✅ Top 5 biggest gain days
- ✅ Top 5 biggest moves by absolute change
- ✅ Max volume day
- ✅ Average volume by weekday
- ✅ Flag days where the opening price is significantly different from the previous day's closing price (e.g., > 2% gap up or down)
- ✅ Compute a 3-Day Moving Average of Close Prices

Each SQL query is stored in `queries`.

