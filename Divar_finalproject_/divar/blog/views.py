from django.shortcuts import render
from django.http import HttpResponse
from blog.models import Apartment
import json
import importlib.util
spec = importlib.util.spec_from_file_location("get_data_save_in_db", "H:/Python/WorkSpace/Jadi_py/FinalProject/get_data_save_in_db.py")
foo = importlib.util.module_from_spec(spec)
spec.loader.exec_module(foo)

def index(request):
 #   ret='<body>'
 #   name =list()s
 #   data=dict()
 #   allpost=Apartment.objects.all()
  #  for si in allpost:
   #     data[si.name]=str(si.price_total)
   #     name.append(si.name)
   #     ret=ret+'<p>'+si.name+'</p>'
       
   # ret=ret+'</body>'
   
    space =request.GET['space']
    year=request.GET['year']
    bedroom=request.GET['bedroom']
    floor_total=request.GET['floor_total']
    floor=request.GET['floor']
    elevator=request.GET['elevator']
    parking=request.GET['parking']
    warehouse=request.GET['warehouse']
    sttr=space+year+bedroom+floor_total+floor+elevator+parking+warehouse
    input_data= [[int(space),int(year),int(bedroom),int(floor_total),int(floor),int(elevator),int(parking),int(warehouse)]]
   # newdata=[[125,1398,3,4,1,1,1,0]]
    ret='''<body><h1>%s</h1></br><p>%s %s </p></body>'''%('حدود قیمت ملک با مشخصات وارد شده',format (int(foo.AI(input_data)), ',d'),'تومان')
    return HttpResponse( ret)
   # return HttpResponse( sttr)