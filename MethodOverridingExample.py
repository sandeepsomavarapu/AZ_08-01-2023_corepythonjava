# Python Method Overriding
 
class Employee:
      
    def message(self):
        print('This message is from Employee Class')
	
  
class Department(Employee):
  
    def message(self): #overriding from parent class to child class
        print('This Department class is inherited from Employee')
  
emp = Employee()
emp.message()
  
print('------------')
dept = Department()
dept.message()
