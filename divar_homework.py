import requests
import re
import mysql.connector
import arabic_reshaper
from bidi.algorithm import get_display
def Farsi(str_text):
    reshaped_text = arabic_reshaper.reshape(str_text)
    bidi_text = get_display(reshaped_text)
    return bidi_text
def regexParse():
    info=dict()
    info_array=list()
    for page in range(1,3):
        req= requests.get('https://divar.ir/s/mashhad/classic-car?page=%i'%page)
        if req.status_code==200:
            print("O.k")
            htmlOfPage=req.text
            car_name=re.findall(r'<div class="kt-post-card__title">(.+?)</div><div class="kt-post-card__top-description kt-post-card-description">(.+?)</div>',htmlOfPage)
            info_array.extend(car_name)
            for name,price in car_name:
                info[name]=price
                
    #print(info)
    #print(info_array)

    cnx = mysql.connector.connect(user='pyhton_user', password='6610557',
                                host='127.0.0.1',
                                database='python_divar')
    cursor=cnx.cursor()

    for i in info_array:
        #print('%s  price :  %s'%(Farsi(i[0]),Farsi(i[1])))
        cursor.execute("INSERT INTO classic_car VALUES('%s','%s')" %(i[0],i[1]))
        cnx.commit()




def Withb4s_lib():
    from bs4 import BeautifulSoup
    requ=requests.get('https://divar.ir/s/mashhad/classic-car?page=1')
    if requ.status_code==200:
        html_divar=requ.text
        soup=BeautifulSoup(html_divar,'html.parser')
        val=soup.findAll('div',attrs={'class':'kt-post-card__title'})
        for carName in val:
            print(Farsi(carName.text) )

Withb4s_lib()