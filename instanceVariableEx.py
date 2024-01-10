class Employee:
	def __init__(self):
		self.eid=100  #instance variable declaration
		self.ename='sandeep'
	def m1(self):		#instance method
		self.contact=9494949  #instance variable inside the instance method 
		print(self.eid)
emp=Employee()
emp.m1()  #instance method calling by using obj reference 
emp.salary=9000	#instance variable
print(emp.ename)
print(emp.__dict__)