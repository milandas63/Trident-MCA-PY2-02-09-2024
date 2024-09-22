#calculator...............................
def calculator():
  num1 = float(input("input 1st number: "))
  num2 = float(input("Input 2nd number: "))

  print("\n Select Operation: ")
  print("1.Addition")
  print("2.Subtraction")
  print("3.Multiplication")
  print("4.Division")

  choice = input("\n operation required[1-4]:")
  if choice == '1': 
    result=num1+num2
    print(result) 
  elif choice == '2':
    result=num1-num2
    print(result)
  elif choice == '3':
    result=num1*num2
    print(result)
  elif choice == '4':
    result=num1/num2
    print(result)
  else:
     print("\nError:Division by zero is not allowed")
calculator()