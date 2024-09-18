#   Repetitively sum all digits of a number to determine the unisum (single digit)?
#   Example:     728394 = 7+2+8+3+9+4 = 33 = 3+3 = 6
#            9778911223 = 9+7+7+8+9+1+1+2+2+3 = 49 = 4+9 = 13 = 1+3 = 4
#            7978168568 = 7+9+7+8+1+6+8+5+6+8 = 65 = 6+5 = 11 = 1+1 = 2


try:
    num = input("Enter a number: ")
    while(True):
        e = 0
        sum = 0
        for n in num:
            e = int(n)
            sum = sum + e
        
        num = str(sum)
        if(len(num)>1):
            print(num)
            continue
        else:
            print(num)
            break
except ValueError:
    print(num,"is not a valid number")
