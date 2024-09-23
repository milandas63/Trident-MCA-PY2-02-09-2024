import module_str as m

try:
    print(m.padLeft("Trident Academy",50))
    print(m.padCenter("Trident Academy",50))
    print(m.padRight("Trident Academy",50))
    raise m.SeriousError()
except m.SeriousError as e:
    print("Serious Error")
