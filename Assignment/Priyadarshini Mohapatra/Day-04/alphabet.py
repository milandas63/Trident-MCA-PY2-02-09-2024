space=30
for i in range (0,11):
    for j in range(0,space):
        print(" ",end=" ")
    for j in range (1,i):
        print(chr(96+j),end=" ")
    for j in range (i,0,-1):
        print(chr(96+j),end=" ")
    print()
    space-=1