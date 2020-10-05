
string = "salam. reza is Here and Trying to type pythone code"
counter=dict()
for letter in string:
    counter[letter]=counter.get(letter,0)+1
print (counter)
for i in list(counter.keys()):
    print("%s ta %s dar jamle hast" %(counter[i],i))