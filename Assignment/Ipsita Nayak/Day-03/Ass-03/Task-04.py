#program that asks the user for a number n and prints the sum of the numbers 1 to nn=int(input("Enter a number"))
num = int(input( "enter a integer: " ))
sum=0
for i in range(1, num+1): 
       sum += i
print("sum=",sum)
