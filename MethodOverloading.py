class Test:
	def add(self,a=None,b=None,c=None):
		if a!=None and b!=None and c!=None:
			print('additin of three numbers :',a+b+c)
		elif a!=None and b!=None:
			print('addition of 2 numbers :',a+b)
		else:
			print('please provide atleast 2 values')
t=Test()
t.add(123,13,124)

t.add(12,13)

t.add(12)