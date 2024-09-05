text = "SMALL PROGRAM"

# By index
for eachItem in text:
    print(eachItem, end=" ")
print()
print(text[3])

# Negating
index = -1
for i in range(-1, -len(text)-1, -1):
    print(text[i], end="")
print()

# by Slicing
print( text[6:13] )
print( text[6:13:1] )
print( text[6:13:2] )
print( text[6:13:3] )
print( text[-1:-14:-1] )
print( text[-1:-14:-2] )

x = slice(-2,-14,-1)
print( text[x] )

name = "NARENDRA MODI"
# name[3] = "x"
# print(name)

paragraph = """
This is line one
This is line two
This is line three
"""
print( paragraph )

paragraph = '''
This is line one
This is line two
This is line three
'''
print( paragraph )

s1 = "wpex"
s2 = "software"
if s1==s2:
    print("They are same")
elif s1>=s2:
    print("s1 is greater")
elif s1<=s2:
    print("s1 is smaller")

s3 = s1 + "," + s2
print(s3)


print( len(text) )

print( "MODI" in name)
print( "MODE" in name)
print( "NAREN" in name)

if "MODI" in name:
    print( "Surname is Modi")

college = "Trident Academy"
print( college.upper() )
print( college.lower() )

bigtext = "Quick Brown Fox Jumps Over The Lazy Dog"
x = bigtext.partition("Fox")
print( x )

words = "zzzz aaaa xxxx bbbb tttt uuuu ssss aaaa ccccc"
print( words.replace("aaaa", "qqqq") )

print( words.find("tttt") )
print( words.find("kkkk") )

print( words.rstrip("c") )
print( words.rstrip("a") )

print( bigtext.split(" ") )

print( bigtext.startswith("Q") )
print( bigtext.startswith("q") )
print( words.startswith("Z") )
print( words.startswith("z") )

data = "1OO"
if data.isnumeric():
    print( int(data) )
else:
    print("Data is not numberic")

print( words.index("xxxx"))
#print( words.index("llll"))

sentence = "This is Milan's pen"
print(sentence)
sentence = 'This is Milan\'s pen'
print(sentence)
sentence = 'This\tis\tMilan\'s\tpen'
print(sentence)
bell = "\a\a\a\a\a\a"
print(bell)
char = "\x41"
print(char)


print(f'{text} is the first variable {bigtext}')

count = 0
vowels = "AEIOUaeiou"
for i in bigtext:
    for j in vowels:
        if i==j:
            count = count+1
print("Vowels = ", count)

