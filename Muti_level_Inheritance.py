class MainClass:  #mutli-level inheritance
    def m1(self):
        print('Welcome to Main Class')
 
class Child(MainClass):  # child class derived from MainClass
    def m2(self):
        print('Welcome to Child Class')
        print('This class is inherited from Main Class') 
class ChildDerived(MainClass):#childDerived  From Child Class
    def m3(self):
        print('Welcome to Derived Class')
        print('This class is inherited from Child Class')
    def m1(self):
        print('current class m1 method')
        print('This class is inherited from Main Class with same name')
print('------------')
chldev = ChildDerived()
chldev.m1() 
print('------------')
#chldev.m2() #super 
print('-----------')
chldev.m3()
