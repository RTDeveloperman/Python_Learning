import os,time,re
def SaveContentListInFile(Addr):
    files_list=os.listdir(Addr) 
    savefile=open("H:\Python\WorkSpace\Change files\Content_List.txt","w")
    for name in files_list:
        savefile.write(name+"\n")
    savefile.close
def watcher(Addr)    :
    path_to_watch = Addr
    before = dict ([(f, re.findall(r'\.(\w{2,4})',f)[0]) for f in os.listdir (path_to_watch)])
    SaveContentListInFile(Addr)
    #print(before)
    while 1:
        time.sleep (10)
        after = dict ([(f, re.findall(r'\.(\w{2,4})',f)[0]) for f in os.listdir (path_to_watch)])
        added = [f for f in after if not f in before]
        removed = [f for f in before if not f in after]
        if added: print ("Added: %s "%added)
        if removed: print ("Removed: %s"%removed)
        before = after

watcher("//192.168.1.39/New folder")