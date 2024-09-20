class MainError(ValueError):
    def _init_(self):
        msg =""
class MissingKeyError(MainError):
    def _init(self):
        msg = "Missing Key Error"
class MissingValueError(MainError):
    def _init(self):
        msg = "Missing Value Error"       
 
               
dic={"Swati":"124","Hara":"123","Ipsita":"345","Priya":"678"}
for Key,Value in dic.items():
    try:
        if Key=="":
            raise MissingKeyError()
        elif Value=="":
            raise MissingValueError()
        print("Username and Password is a valid")
    except MissingKeyError:
        print("Username is Invalid")
    except MissingValueError:
        print("Password is Invalid") 
    