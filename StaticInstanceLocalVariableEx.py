class Student:
    schoolname="HPS" #static variable
    def __init__(self,name): #local variable
        print("param constructor")
        self.name=name  #instance  variable
    def display(self):#instance method
        self.age=22
        print(self.name," ",Student.schoolname)
    def sayHello(self):#instance method
        self.display()
        print("hello everyone")
    @classmethod
    def  addOfTwo(cls,a,b):
        print(a+b)
    @staticmethod
    def  mulofTwo(a,b):
        print(a*b)
student= Student("mahesh")
student1= Student("sandeep")
student.display()
student1.display() #instance method calling
print(Student.schoolname)
student.sayHello()
#instance,static,local
Student.addOfTwo(23,24)
student.addOfTwo(34,35)
student.mulofTwo(2,3)
Student.mulofTwo(30,40)