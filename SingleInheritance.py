class Employee: #parent class
    x = 10 
    def __init__(self):
        print("am from default constructor")
    def func_msg(self):
         print('Welcome to Employee Class')
 
class Department(Employee): #child class Department inherits Employee
    a = 250
    def func_message(self):
        print('Welcome to Department Class')
        print('This class is inherited from Employee')
emp = Employee()  #creating object for EMployee PVM
print(emp.x)       #calling parent class variable
emp.func_msg()      #calling parent class function 

print('******************')
dept = Department()  #creating Object for Department
print(dept.a)         #calling child class variable
dept.func_message()    #calling child class function
print('*****************')
dept.func_msg()   #calling parent class method using child Object
print(dept.x)  # calling & printing parent class variable using child Object   