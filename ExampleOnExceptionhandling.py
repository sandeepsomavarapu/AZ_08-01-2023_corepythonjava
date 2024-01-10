#Exception handling 
try:
    f = open('somefile.txt', 'r')
    print(f.read())
    f.close()
except FileNotFoundError:
    print('file not found')
print("remaining lines of code")
	