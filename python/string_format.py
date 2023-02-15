
num = 3.14

_s = f"display float = {num:0.3f}"
print(_s)

_s = "display float = {num:0.1f}".format(num=3.14)
print(_s)


txt1 = "My name is {fname}, I'm {age}".format(fname = "John", age = 36)
print(txt1)
txt2 = "My name is {0}, I'm {1}".format("John",36)
print(txt2)
txt3 = "My name is {}, I'm {}".format("John",36)
print(txt3)
