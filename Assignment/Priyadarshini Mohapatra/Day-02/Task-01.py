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