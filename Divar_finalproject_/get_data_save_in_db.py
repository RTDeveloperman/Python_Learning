import  requests
from bs4 import BeautifulSoup
import re
import mysql.connector
def convertv(text):
    if text=='ندارد':
        return '0'
    else:
        return '1'
def ConvertZrea_To_AreaCode(Strr):
        print(Strr)
        cnx = mysql.connector.connect(user='pyhton_user', password='6610557',
                                host='127.0.0.1',
                                database='divar_py_finalproject')
        cursor=cnx.cursor()
        #list_areaCode= cursor.execute("SELECT id FROM area INNER JOIN apartment ON %s LIKE '%arename%' "%Strr)
       # list_areaCode= cursor.execute(""" SELECT apartment.address, 
        # area.id,
        # area.arename
        # FROM  apartment
        # JOIN  area ON '%s' LIKE CONCAT('%s',area.arename ,'%s')""" %(Strr,"%","%"))

        cursor.execute(""" SELECT id FROM area WHERE '%s' LIKE CONCAT('%s',area.arename ,'%s') LIMIT 1""" %(Strr,"%","%"))
        for idd in cursor:
            print(idd)
            if type(idd[0]) is int :
                return idd[0]
                #print(idd[0])
                #print(type(idd[0]))
            else:
                return '-1'
               # print('-1')

        return '1'    
        #print(type(list_areaCode))



def getdatafromdivar():
    for i in range(8,21):
        req=requests.get('https://divar.ir/s/mashhad/buy-apartment?page=%i'%i)
        if req.status_code==200:
            html_text_listpage=req.text
            soup=BeautifulSoup(html_text_listpage,'html.parser')
            items=soup.find_all('a',attrs={'class':'kt-post-card kt-post-card--outlined kt-post-card--bordered'})
            for link in items:
            #for link in range(1,2):
                item_href='https://divar.ir%s'%link['href']
                #item_href='https://divar.ir/v/wXfN16tl'#'https://divar.ir/v/wXetwAYb'#'https://divar.ir/v/wXdVPP3X'#'https://divar.ir/v/wXdhfyXt'
                item_req=requests.get(item_href)
                if item_req.status_code==200:
                    html_text_item=item_req.text
                    soup_item=BeautifulSoup(html_text_item,'html.parser')
                    item_details_name=soup_item.find('h1',attrs={'class':'kt-page-title__title kt-page-title__title--responsive-sized'})
                    #item_details_name=re.findall(r'<h1 class="kt-page-title__title kt-page-title__title--responsive-sized">(.)</h1>',item_details_h1)
                    item_details_place=soup_item.find('a',attrs={'class':'kt-unexpandable-row__action kt-text-truncate'})
                    item_details_others=soup_item.find_all('p',attrs={'class':'kt-unexpandable-row__value'})
                    tempdetailList=Beautifulltext(item_href,item_details_name,item_details_place, item_details_others)
                    saveIndb(tempdetailList)


                    #print(item_details_others)
                    #print(tempdetailList)
                   # for detail in item_details_others:
                       # print(detail.text)
                   # print(item_details_place.text)




def Beautifulltext(link,name,place,item):

    print(item)
    print(link)
    newitem=list()
    #item[0].text=item[0].text.strip()
    #print(item[0].text.strip())
    gh1=item[0].text.strip()
    #gh2=re.findall(r'(^\d*|٫\d*|٫\d*)',item[1].text.strip())
    gh2=re.findall(r'(\d.)',item[1].text.strip())
    gh2=re.sub(r'٫','',''.join(gh2))
    gh3=re.findall(r'(\d*\d)',item[2].text.strip())[0]#item[2].text.strip()
    gh4=str(list(map(lambda x: '1' if x=='یک' else ('2' if x=='دو' else('3' if x=='سه' else '4')),item[3].text.strip().split(',')))[0])
    gh5=re.sub(r'٫','',re.sub(r'تومان','',item[4].text.strip()))
    if not gh5.strip().isnumeric():
        gh5=0
    if len(item)>=8:
        tempfloor=re.sub(r'از','',item[7].text).strip().split('  ')
        if len(tempfloor)==2:
            if not tempfloor[0].strip().isnumeric():
                gh6=0
            else: 
                gh6=tempfloor[0]
            gh7=tempfloor[1]
        else:
            if isinstance(tempfloor[0], str):
                gh6=0
                gh7=0
            else:
                gh6=tempfloor[0]
                gh7=0
    else:
        gh6=0
        gh7=0
    #re.sub(r'از','',text1).strip().split('  ')#6
    #item[7]=list(map(lambda x: 0 if x=='ندارد' else 1 ),item[7].strip())[0]
    if len(item)>=9:
         gh8=convertv(item[8].text)
    else:
         gh8='-1'
    if len(item)>=10:
         gh9=convertv(item[9].text)
    else:
         gh9='-1'
    if len(item)>=11:
         gh10=convertv(item[10].text)
    else:
         gh10='-1'
    #print(newitem[:4],re.sub(r'از','',item[6].text).strip().split('  '),newitem[7:])
    newitem.append(name.text.strip())
    newitem.append(place.text.strip())
    newitem.append(gh1)
    newitem.append(gh2)
    newitem.append(gh3)
    newitem.append(gh4)
    newitem.append(gh5)
    newitem.append(gh6)
    newitem.append(gh7)
    newitem.append(gh8)
    newitem.append(gh9)
    newitem.append(gh10)
    newitem.append(link)
    return newitem
def saveIndb(i):
    cnx = mysql.connector.connect(user='pyhton_user', password='6610557',
                                host='127.0.0.1',
                                database='divar_py_finalproject')
    cursor=cnx.cursor()
    print(i)
   # cursor.execute("INSERT IGNORE INTO apartment VALUES('%s','%s','%s','%i','%i','%i','%i','%i','%s','%i','%i','%i','%i','%i','%s')" %(i[0],i[1],i[2],int(i[3]),int(i[4]),int(i[5]),int(i[6]),0,' ',int(i[8]),int(i[7]),int(i[9]),int(i[10]),int(i[11]),i[12]))
   # for useing the REPLACE INTO query must a field was a uniq and my link field nos is uniq
    cursor.execute("REPLACE INTO apartment (name, address, kind,space,year,bedroom,price_total,price_meter,Advertiser,floor_total,floor,elevator,parking,warehouse,link,area_id) VALUES('%s','%s','%s','%i','%i','%i','%i','%i','%s','%i','%i','%i','%i','%i','%s',%i)" %(i[0],i[1],i[2],int(i[3]),int(i[4]),int(i[5]),int(i[6]),0,' ',int(i[8]),int(i[7]),int(i[9]),int(i[10]),int(i[11]),i[12],int(ConvertZrea_To_AreaCode(i[1]))))
    cnx.commit()


def AI(newdata):
    from sklearn import tree
    x=[]
    y=[]
    cnx = mysql.connector.connect(user='pyhton_user', password='6610557',
                                host='127.0.0.1',
                                database='divar_py_finalproject')
    cursor=cnx.cursor()
    cursor.execute('SELECT space,year,bedroom,floor_total,floor,elevator,parking,warehouse,price_total,area_id FROM apartment')
    for (space,year,bedroom,floor_total,floor,elevator,parking,warehouse,price_total,area_id) in cursor:
        x.append([space,year,bedroom,floor_total,floor,elevator,parking,warehouse,area_id])  
        y.append([price_total])
        
    clf=tree.DecisionTreeClassifier()
    clf=clf.fit(x,y)
    #newdata=[[200,1398,4,2,1,1,1,1],[125,1398,3,4,1,1,1,0]]
    return clf.predict(newdata)
   

    


#getdatafromdivar()
newdata=[[200,1398,4,2,1,1,1,1,23],[125,1398,3,4,1,1,1,0,24]]
print(AI(newdata))
def Farsi(str_text):
    import arabic_reshaper
    from bidi.algorithm import get_display
    reshaped_text = arabic_reshaper.reshape(str_text)
    bidi_text = get_display(reshaped_text)
    return bidi_text
def mytest():
    with open ('H:\Python\WorkSpace\Jadi_py\Divar_finalproject\etest.html') as testhtml:
        soup=BeautifulSoup(testhtml,'html.parser')
        list_manategh=soup.find_all('span',attrs={'lang':'AR-SA','dir':'RTL'})
        #f = open("H:\Python\WorkSpace\Jadi_py\FinalProject\html_test.txt", "r").read()
        cnx = mysql.connector.connect(user='pyhton_user', password='6610557',
                                host='127.0.0.1',
                                database='divar_py_finalproject')
        cursor=cnx.cursor()
        
        for item in list_manategh:
            cursor.execute("REPLACE INTO area (areacode, arename, citycode,cityname) VALUES('%i','%s','%i','%s')" %(1,item.text,2,'مشهد'))
            cnx.commit()
          # print(item.text)



#mytest()
#print(Farsi('محمد مهدی'))
#ConvertZrea_To_AreaCode('fdg')
#getdatafromdivar()