#1,3,5,11,21,.........(n,n+2+1,n*2-1,n*2+1,..........)
n=1
#print(n,end=',')
for i in range(1,10):
    if i%2==1:
        n=n*2-1
    else:
        n=n*2+1
    print(n,end=',')  