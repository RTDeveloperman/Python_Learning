import random
main_number=random.randint(1,100)
numbers=int(input("Insert your Number : "))

count=0
while numbers !=main_number:
    if numbers>main_number:
        print("your number is bigger")
    elif numbers<main_number:
        print("your number is smaller")
    else:
        print("tabrik")
        break
    count+=1
    numbers=int(input("Insert your Numbers : "))
print("tabrik")
print("tedad hads : ",count)
