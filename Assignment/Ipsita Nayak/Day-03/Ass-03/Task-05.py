#Swap the content of 2 numeric variables without using a third variable
a=int(input("Enter a number:"))
b=int(input("Enter a number:"))
a=a+b;
b=a-b;
a=a-b;
print("after swapping a:",a)
print("after swapping b:",b)

