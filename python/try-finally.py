"""
0.
"""

try:
    raise ZeroDivisionError("division by 0")
except NotImplementedError:
    print("I am never executed because NotImplementedError is never raised.")
except ZeroDivisionError:
    print("I am executed only if ZeroDivisionError was raised.")
finally:
    print("I am always executed regardless if an handled or unhandled error was raised or not.")
print("I am always executed too.")
print("The program can continue to run.\n")

"""
1.
"""

try:
    raise ZeroDivisionError("division by 0")
except NotImplementedError:
    print("I am never executed because NotImplementedError is never raised.")
except Exception as _e:
    print("I am executed only if an unhandled error was raised.")
    print(f"In this case it is a “{_e}” error.")
finally:
    print("I am always executed regardless if an unhandled error was raised or not.")
print("I am always executed too.")
print("The program can continue to run.\n")

"""
2.
"""

try:
    print("The program will stop on the next line with an exception.")
    raise ZeroDivisionError("division by 0")
    print("I am never executed.")
except NotImplementedError:
    print("I am never executed because NotImplementedError is never raised.")
print("I am never executed, because the exception was not catched.")

"""
3.
"""

try:
    raise ZeroDivisionError("division by 0")
except NotImplementedError:
    print("I am never executed because NotImplementedError is never raised.")
finally:
    print("I am always executed regardless if an unhandled error was raised or not.")
    print("But the program stops here with an exception.")
print("I am never executed, because the exception was not catched.")
