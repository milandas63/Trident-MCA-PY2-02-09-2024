space=40
star=1
for i in range(0,19):
  for j in range(0,space):
      print(" ",end=" ")
  for j in range(0,star):
      print("*",end=" ")
  print()
  if i<9:
     space=space-1
     star=star+2
  else:
     space=space+1
     star=star-2
