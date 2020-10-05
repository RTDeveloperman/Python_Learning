import re
str='reza_tahmasebi_it@yahoo.com'
print(re.search(r'^\w.+@\w+\.\w{2,3}',str))
webstr="gheymate jahani 5boshke nafte khaf = 16$"
digit_result=re.findall(r'gheymate jahani (\d+)boshke nafte khaf = (\d+)\$',webstr)
boshke,price=digit_result[0]
print(boshke,price)