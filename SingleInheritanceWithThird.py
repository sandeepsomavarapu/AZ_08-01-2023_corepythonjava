class Employee: #parentclass
    x = 10  
    def func_msg(self):
        print('Welcome to Employee Class')
class Department(Employee): #child class
    a = 250
    b = Employee.x + 22 #calling super class variable in childclass

    def func_message(self):
        print('Welcome to Department Class')
 
    def func_changed(self): #calling super class varibale in child class function
        print('New Value = ', Employee.x + 449)
 
emp = Employee()
print(emp.x)
emp.func_msg() 
print('--------------')
dept = Department()
print(dept.a)
print(dept.b)
dept.func_message()
dept.func_changed()