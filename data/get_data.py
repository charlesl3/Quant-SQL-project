import yfinance as yf

df = yf.download(["AAPL"], start="2024-01-01", end="2024-06-30")

# Flatten MultiIndex columns
df.columns = df.columns.get_level_values(0)

df.reset_index(inplace=True)
df["Ticker"] = "AAPL"
df = df[["Date", "Open", "Close", "Volume", "Ticker"]]
df.to_csv("data_aapl.csv", index=False)