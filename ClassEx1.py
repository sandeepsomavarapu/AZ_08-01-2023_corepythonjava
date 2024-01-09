class Employee: #constructor overloading not supported by python
    def __init__(self):#constructor
        print("am from default constructor :")
    def welcomeMsg(self):#instance method
        print("am from default function")


emp=Employee()
emp.welcomeMsg()
emp1=Employee()
