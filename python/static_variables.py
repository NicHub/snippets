"""
https://stackoverflow.com/questions/279561/what-is-the-python-equivalent-of-static-variables-inside-a-function?rq=2
"""


import timeit


# Fastest is with global
def foo0():
    global counter
    counter += 1


# Fast but need foo1.counter to be set below the function.
def foo1():
    foo1.counter += 1


# Almost as fast as foo1 but doesn’t need foo2.counter to be initialized outside of the function
def foo2():
    try:
        foo2.counter += 1
    except:
        foo2.counter = 1


# With `getattr` the code is compact but 20 % slower.
def foo3():
    foo3.counter = getattr(foo3, "counter", 0) + 1


# With `not hasattr` the code is compact but 35 % slower.
def foo4():
    if not hasattr(foo4, "counter"):
        foo4.counter = 0
    foo4.counter += 1


counter = 0
print(f"{timeit.timeit(lambda: foo0(), number=1000000):0.6f}")
print(counter)

foo1.counter = 0
print(f"{timeit.timeit(lambda: foo1(), number=1000000):0.6f}")
print(foo1.counter)

print(f"{timeit.timeit(lambda: foo2(), number=1000000):0.6f}")
print(foo2.counter)

print(f"{timeit.timeit(lambda: foo3(), number=1000000):0.6f}")
print(foo3.counter)

print(f"{timeit.timeit(lambda: foo4(), number=1000000):0.6f}")
print(foo4.counter)


