start = 1
end = 10000
for i in range(start, end+1):
    sum = 0
    div = ""
    for j in range(1,i):
        if i%j==0:
            div = div + str(j) + "+"
            sum = sum+j
    if sum==i:
        print(i,'=',div[:len(div)-1])
