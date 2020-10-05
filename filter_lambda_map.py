mylist=[1,5,9,7,2,0,4,6]
print(list(map(lambda x: x*2,mylist)))

mylist2=[1,5,9,7,2,0,4,6]
print(list(map(lambda x: 'zoj' if x%2==0 else 'fard',mylist2)))

mylist3=[1,5,9,7,2,0,4,6]
print(list(filter(lambda x: x>=5,mylist3)))

mylist4=[1,5,9,7,2,0,4,6]
print(sorted(mylist4))
