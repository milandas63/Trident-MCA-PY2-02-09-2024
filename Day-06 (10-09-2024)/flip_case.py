# Write a program to flip the case of a given sentence
#
text = "Quick Brown Fox Jumps Over The Lazy Dog"
line = ""

for each in text:
    asc = ord(each)
    if asc>=65 and asc<=90:
        asc = asc+32
    elif asc>=97 and asc<=122:
        asc = asc-32
    line = line + chr(asc)
print("Original: ", text)
print("FlipText: ", line)
