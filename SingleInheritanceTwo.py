class Employee:        #parent class

    def func_msg(self):
        print('Welcome to Employee Class')
 
class Department(Employee):  #child class
    pass                      #class is empty
 
emp = Employee()
emp.func_msg()
 
print('--------------')
dept = Department()
dept.func_msg() # Calling Parent Method