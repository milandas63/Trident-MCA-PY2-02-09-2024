#TRIANGLE USING STAR..............
n=int(input("Enter a number:"))
for i in range(n):
    for j in range(i,n):
        print(" ",end='')
    for j in range(i):
        print("*",end='')
    for j in range(i+1):
        print("*",end='')
    print()