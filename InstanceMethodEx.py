class Student:
	def __init__(self,name,marks):
		self.name=name
		self.marks=marks
		self.display()
	def display(self):
		print('Hello ',self.name)
		print('your marks :',self.marks)
	def grade(self):
		if self.marks>=60:
			print('First Grade')
		elif self.marks>=50:
			print('Second Grade')	
		elif self.marks>=40:
			print('Third Grade')
		else:
			print('Failed')
	 
name1=input('Enter your name :')
marks1=int(input('Enter your marks :'))
student=Student(name1,marks1)
student.display()
student.grade()