"""
    Write a program to print all multiplication tables
    between 2 and 30
"""
start = 2
end = 30

def padL(n,l):
    buf = str(n)
    for i in range(len(buf),l):
        buf = " "+buf
    return buf

for i in range(start, end+1, 5):
    for j in range(1, 11):
        for k in range(i, i+5):
            if k>end:
                break
            print(padL(k,2),"x",padL(j,2),"=",padL((j*k),3),"  ", end="")
        print()
    print()
print()
