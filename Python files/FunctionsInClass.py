class A:
    #Function with no arguments and no return value
    def hello(self):
        print("Hello world!")

    #Function which will take 2 arguments, sum value and display
    def sum(self, a, b):
        c=a+b
        print("Sum is: " + str(c))

    #Function which will take arguments and return value as well
    def mul(self,a,b):
        c=a*b
        return c

obj=A()
obj.hello()

obj.sum(2,3)

x=obj.mul(2,3)
print("The sum of multiply is: " + str(x))