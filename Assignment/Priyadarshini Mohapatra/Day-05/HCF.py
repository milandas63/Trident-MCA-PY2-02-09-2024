num1=int(input("Enter a number1:"))
num2=int(input("Enter a number2:"))
hcf = 1

for i in range(1, min(num1, num2)):
    if num1 % i == 0 and num2 % i == 0:
        hcf = i
print("Hcf of", num1, "and", num2, "is", hcf)