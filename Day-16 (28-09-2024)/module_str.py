def padLeft(s,l):
    r = s
    for i in range(len(s),l):
        r = " "+r
    return r

def padRight(s,l):
    r = s
    for i in range(len(s),l):
        r = r+" "
    return r

def padCenter(s,l):
    r = str(s)
    for i in range(len(r),l):
        if(i%2==0):
            r = " "+r
        else:
            r = r+" "
    return r

def replicate(d, l):
    r = ''
    for i in range(0,l):
        r = r+d
    return r;

class SeriousError(Exception):
    def __init__(self):
        msg = "Error"
