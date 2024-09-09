str=input("Enter the word:")
for i in range(0,len(str)):
     count=1
     for j in range (i+1,len(str)):
        if str[i]==str[j]:
            count=count+1
     if str[i] not in str[:i]:
        print(str[i],"=",count)