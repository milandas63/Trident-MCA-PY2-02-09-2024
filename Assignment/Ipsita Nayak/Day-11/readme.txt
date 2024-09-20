class BelowMinimumAgeError(AgeError):
    def __init__(self):
        msg = "Minimum Age Error"
class OverMaximumAgeError(AgeError):
    def __init__(self):
        msg = "Maximum Age Error"
class ZeroAgeError(AgeError):
    def __init__(self):
        msg = "Zero Age Error"
class NegativeAgeError(AgeError):
    def __init__(self):
        msg = "Negative Age Error"
ages = [25,56,13,34,66,-34,71,21,0,45,91,89,-32,17,0]
for age in ages:
    msg = ""
    try:
        if age<0:
            msg = "Negative Age Error"
            raise NegativeAgeError()
        elif age==0:
            msg = "Zero Age Error"
            raise ZeroAgeError()
        elif age<18:
            msg = "Minimum Age Error"
            raise BelowMinimumAgeError()
        elif age>90:
            msg = "Maximum Age Error"
            raise OverMaximumAgeError()
        print(age, "is a valid age")
    except NegativeAgeError:
        print(age, "is", msg)
    except ZeroAgeError:
        print(age, "is", msg)
    except BelowMinimumAgeError:
        print(age, "is", msg)
    except OverMaximumAgeError:
        print(age, "is", msg)
