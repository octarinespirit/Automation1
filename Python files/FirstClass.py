#First we are creating a class
class A:
    #This is a class method
    def welcome(self):
        print("This is a class function")

#To call any member of class, create object of that class
obj=A()

#Call functions of class by using object
obj.welcome()
