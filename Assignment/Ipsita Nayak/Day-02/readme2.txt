space=20
star=1
for i in range(0,10):
    for j in range (0,space):
        print(" ",end=" ")
    for k in range(1,2*i):
        if k==1 or k==2*i-1 or j==10:
            print("*",end=" ")
        else:
            print(" ",end=" ")
    print()
    space=space-1
    
