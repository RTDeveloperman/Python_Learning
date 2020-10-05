import csv
import hashlib

with open("H:\Python\WorkSpace\Jadi_py\myfile.csv") as hash_file:
    hash_dict=dict()
    for numbers in range(0,9999):
        hashedWord = hashlib.sha256(str(numbers).encode('utf-8')).hexdigest()
        hash_dict[str(hashedWord)]=str(numbers)
    #print(hash_dict)
    reader=csv.reader(hash_file)
    decode=list()
    counter=0
    for lines in reader:
        if lines[1] in list(hash_dict.keys()):  
          decode.append("Password %s is ==> %s" %(lines[0],hash_dict.get(lines[1]))+"\n")
          print(decode[counter])
          counter+=1
         # print("Password %s is ==> %s" %(lines[0],hash_dict.get(lines[1])))
          
        savefile=open("H:\Python\WorkSpace\Jadi_py\decode.txt","w")
        savefile.writelines(decode)
        savefile.close()
    #print(reader)
