names=['mahesh','naresh','mahi','rajesh','somesh','mahesh','hitesh','mahi','deep']
names1=['sunny','bunny','munny']
result=names1*2
#clear()
print(result)
print(names.index('mahi'))
names.extend(names1)
print(names)
names.remove('naresh')
names.pop()
print(names)
names.append('excelr')#will add value  at the end 
names.insert(1,'excelr hyd')#will add value at the specified position
print(names)
print(type(names))
print(names[0:2])
print(names.count('mahesh'))
print('**********using while loop********')
i=0
while i<len(names):
    print(names[i])
    i=i+1  
print('**********using for loop**********')
for x in names:
    if len(x)<6:
        print(x)
print(names)
names.reverse()
print(names)
names.sort(reverse=False)
print(names)