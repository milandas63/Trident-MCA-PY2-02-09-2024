space=30
for i in range (0,11):
    for j in range(0,space):
        print(" ",end="")
    for j in range (1,i):
        print(chr(96+j),end=" ")
    for j in range (i,0,-1):
        print(chr(96+j),end=" ")
    print()
    space-=1



OR


#How many times a particular character has occured
data="Student Allowed"
count=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for each in data:
    asc = ord(each)
    if asc>=65 and asc<=90:
        count[asc-65] = count[asc-65] + 1
    elif asc>=97 and asc<=122:
        count [asc-97] = count[asc-97] +1
for i in range (0,len(count)):
    if count[i]>0:
        print(chr(i+65), "=", count[i])
