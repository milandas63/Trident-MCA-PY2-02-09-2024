class MainError(Exception):
    def __init__(self):
        print("This is an error")


string = "Trident Academy"
diction = {"party":"BJB","name":"Narendra Modi","age":69}
try:
    raise MainError()
    print(100/0)
    print(string[50])
    print(diction["school"])
    print("There is no error")
except MainError:
    print("Main error")
except ZeroDivisionError:
    print("Zero denominator not allowed")
except ArithmeticError:
    print("Arithmetic error")
except IndexError:
    print("Index error")
except KeyError:
    print("Key error")
else:
    print("Nil error")
finally:
    print("Must be executed")
