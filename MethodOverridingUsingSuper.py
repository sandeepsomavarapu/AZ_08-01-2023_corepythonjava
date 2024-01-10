class Employee:
    company ='lti' 
    def message(self):#self current class
        print('This message is from Employee Class')
  
class Department(Employee):
  
    def message(self):#super
        super().message() #calling parent call function
        print('This Department class is inherited from Employee')
        print(super().company) # calling super class variable
  
emp = Employee()
emp.message() #it will call from EMployee class
  
print('------------')
dept = Department()
dept.message() #it will call from child class and 
               # it will call super class function