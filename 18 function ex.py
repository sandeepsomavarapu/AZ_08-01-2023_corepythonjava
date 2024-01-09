def f(a, L=5):
	res=a+L
	print(res)
f(40,35) #Default arguments
f(1)
f(L=20,a=40) #keyword arguments
def arbitaryArgumentsFunction(*args):
	print(args[0]+" "+args[1]+" "+args[2])

def my_function(**kid):#keyword and arbitary arguments
  print("His last name is " + kid["lname"])

my_function(fname = "Tobias", lname = "Refsnes")
    
def f1(b=10, L=10):#keyword arguments
	res=b+L
	print(res)

f1(L=50,b=30)
arbitaryArgumentsFunction("sandeep","naresh","suresh")

def calci(a,b):
	sum=a+b
	sub=a-b
	mul=a*b
	div=a/b
	return sum,sub,div,mul
result=calci(30,50)

for i in result:
	print(i)