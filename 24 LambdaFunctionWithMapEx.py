#with out lambda 
from functools import reduce




li=[23,12,56,3,9,18,4]
def squareIt(number):
    return number*number

l1=list(map(squareIt,li))
print(l1)

#With lambda

l1=list(map(lambda x:x*x,[2,1,6,3,9,8,4]))
print(l1)

def addOfAll(x,y):
    return x+y
li1=[23,12,56,3,9,18,4]

result=reduce(lambda x,y:x+y,li1)

print(result)

name='kpmg'

print(name.isalpha())

#p.apply()




