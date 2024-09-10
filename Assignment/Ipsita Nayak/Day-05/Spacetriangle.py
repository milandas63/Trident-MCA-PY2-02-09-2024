#SPACE TRIANGLE...............
"""n=int(input("Enter a number:"))
for i in range(n):
    for j in range(i,n):
        print('',end='')
    for j in range(i):
        if(i==n-1 or j==0):
           print("*",end='')
        else:
           print('',end='')
    for j in range(i+1):
        if(i==n-1 or j==i):
           print("*",end='')
        else:
           print('',end='')
    print()"""

space = 10
for i in range(1,10):
    for j in range(0,space):
        print(" ",end=" ")
    for j in range(i,0,-1):
        print(j,end=" ")
    for j in range(2,i+1):
        print(j,end=" ")
    print()
    space=space-1