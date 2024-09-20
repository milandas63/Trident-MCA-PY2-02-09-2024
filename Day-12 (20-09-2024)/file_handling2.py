"""
        What is your name?  xxxxxxxxxxxxxxxxxxx
        Your age:           #####
        Date of birth:      dd-mm-yyyy
        Gender [M/F]:       x
        Mobile No.:         ##########
        Email-id:           xxxxxxxxxxxxxxxxxxx
"""
more = True
name = ""
age = ""
dob = ""
gender = ""
mobile = ""
email = ""

try:
    handle = open("student.csv", "a")

    while(more):
        for i in range(0,26):
            print()
        print("STUDENT INFORMATION SYSTEM")
        print("--------------------------")
        name   = input("What is your name? ".ljust(24))
        age    = input("Your age: ".ljust(24))
        dob    = input("Date of birth: ".ljust(24))
        gender = input("Gender [M/F]: ".ljust(24))
        mobile = input("Mobile No.: ".ljust(24))
        email  = input("Email-id: ".ljust(24))
        print()
        buffer = name + "," + age + "," + dob + "," + gender + "," + mobile + "," + email + "\r\n"
        handle.write(buffer)
        more = input("More [Y/N]: ").upper().startswith("Y")
except Exception:
    print("Error")
