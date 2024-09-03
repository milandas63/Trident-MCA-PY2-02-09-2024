# Single line comments
"""
    Write a program to print a pyramid using astericks
"""
print("Hello World!")

space = 40
star = 1
# for([initializer]; [condition]; [incrementor]) [{}]
for i in range(0,10):
    for j in range(0, space):
        print(" ", end="")
    for j in range(0, star):
        print("*", end="")
    print()
    space = space-1
    star = star+2

