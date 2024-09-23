def padLeft(s,l):
    r = s
    for i in range(len(r),l):
        r = " "+r
    return r

def padRight(s,l):
    r = s
    for i in range(len(r),l):
        r = r+" "
    return r

def padCenter(s,l):
    r = s
    for i in range(len(r),l):
        if(i%2==0):
            r = " "+r
        else:
            r = r+" "

    return r

class SeriousError(Exception):
    def __init__(self):
        msg = "Error"
