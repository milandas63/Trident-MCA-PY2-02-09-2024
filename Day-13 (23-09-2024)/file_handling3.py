import time as t

try:
    with open("data.csv", "r") as fp:
        for one in iter(lambda: fp.read(1), ""):
            print(one, end=",")
            t.sleep(0.1)
        fp.close()
except Exception as e:
    print("Error while readeing ",e)
