
class Parent:
    result=200
    def m1(self):
        print("am from m1 method of Parent class")
    def m2(self):
        print("am from m2 method of Parent class")
class Child(Parent):
    def m3(self):
        print("am from m3 method of child class")
obj=Parent()
obj.m1()
obj.m2()
print(obj.result)
obj1=Child()
obj1.m3()
obj1.m1()
obj1.m2()
print(obj1.result)