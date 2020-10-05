import requests
r=requests.get('https://google.com')
res=requests.get('https://api.livecoin.net/exchange/ticker?currencyPair=BTC/USD')
price=res.json()

print(type(price))
print(price['low'])