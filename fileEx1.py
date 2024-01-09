import os  # importing file package os

# print(os.getcwd()) #it will return path of current working dir 
# print('---')
# print(os.listdir()) # it will display  all files from current dir

# b = os.path.getsize('D:\Python FullStack\PDW F Folder\PYTHON\PYTHON\examples\core ex/welcome.txt')# to know the size of file
# print(b)
# read a file

# f_open = open("simple.txt", "r")# open the file
# print(f_open.read()) #it will read character by character 
# f_open.close()      #close the file after reading

# print('---')

# f_open = open("simple.txt", "r")
# print(f_open.read(5)) #it will print five characters
# print(f_open.read(2)) #it will print  two characters
# f_open.close()

# print('--for loop-')
# f_open = open("simple.txt", "r")
# for char in f_open:
#     print(char)
# f_open.close()

# print('--read line--')
# f_sample = open("simple.txt", "r")
# print(f_sample.readline()) # IT WILL PRINT LINE
# print(f_sample.readline(2)) #IT WILL PRINT TWO CHARACTERS 
# f_sample.close()

print('--readlines -return in list')
f_sample = open("simple.txt", "r")
print(f_sample.readlines())#IT WILL PRINT ALL LINES
f_sample.close()




