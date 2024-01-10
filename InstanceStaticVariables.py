class Student:
    orgname="accenture"
    country="india"
    def __init__(self,empid,empname):
        Student.clgname="JNTU"
        
        self.empid=empid
        self.empname=empname
        print(empid," ",empname)

    def my_fun(self,stuid,stuname):
        age=29                    #local variable
        Student.schoolname="MGU"  #static variable
        self.stuid=stuid          #instance variable
        self.stuname=stuname    
        print(stuid," ",stuname)

student=Student(123,"suresh")        
student.my_fun(111,"mahesh")#instance method calling using obj referenece
print(student.stuid," ",student.stuname)
#del student.stuid            #deleting instanece variable using del
print(Student.country+" "+Student.orgname+" "+Student.clgname )
print(student.country+" "+student.orgname)