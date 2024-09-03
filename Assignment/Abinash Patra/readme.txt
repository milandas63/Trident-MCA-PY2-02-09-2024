space=40
star=1
for i in range(0,10):
  for j in range(0,space):
      print(" ",end=" ")
  for j in range(0,star):
      print("*",end=" ")
  print()
  space=space-1
  star=star+2
for i in range(0,11):
  for j in range(0,space):
      print(" ",end=" ")
  for j in range(0,star):
      print("*",end=" ")
  print()
  space=space+1
  star=star-2
