"""
    Print all prime number between
    1000 and 3000
"""
start = 1000
end = 3000
count = 0;

def checkPrime(n):
    yn = True;
    for i in range(2, n):
        if n%i==0:
            yn = False; 
            break
    return yn

for i in range(start, end):
    yn = checkPrime(i)
    if yn==True:
        print(i, end=" ")
        count = count+1
        if count>=15:
            count = 0
            print()

