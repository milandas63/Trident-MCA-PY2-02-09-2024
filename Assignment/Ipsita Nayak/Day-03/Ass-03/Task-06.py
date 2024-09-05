# Modify the previous program such that only multiples of three or five are considered in the
#sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
x = int(input("Enter a number: "))
i = 0
count = 0
while i < x + 1:
    i =i+1
    if i % 3 == 0 or i % 5 == 0:
        print(count)
        count =count+i


