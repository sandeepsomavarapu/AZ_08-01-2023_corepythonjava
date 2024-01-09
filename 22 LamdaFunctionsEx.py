# Anonymous functions / name less function
def my_fun(number):
    return number*number

#syntax: lambda args:expression

squareit=lambda a:a*a

print(squareit(34))
print(squareit(76))

def add(a,b):
    return a+b

addOfTwo=lambda a,b:a+b
print(addOfTwo(11,23))

def largeNumber(a,b):
    if(a>b):
        return a
    else:
        return b

bignumber=lambda a,b:a if a>b else b

print(bignumber(23,28))


#filter(function,sequence)