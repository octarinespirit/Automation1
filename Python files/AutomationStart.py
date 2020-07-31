#   Whenever we are importing any module, that module executable code will run
import PyModule

#   Here we are calling module functions by using module name
PyModule.testingPythonModuleFunctions()

x=PyModule.sum(100,50)
print(x)

#   We need to create an object of the class written in any module
obj=PyModule.A()
obj.testing()