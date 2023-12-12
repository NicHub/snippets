"""

"""

import time
import math


def tictoc(func):
    """Decorator to measure the execution time of a function."""

    def inner1(*args, **kwargs):
        begin = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        silent = False
        if not silent:
            msg = f"Time elapsed in `{func.__name__}`: {end - begin:0.3f} s"
            print(msg)
        return result

    return inner1


def sanity_checks(func):
    """
    Decorator to perform some sanity checks.
    """

    def inner1(*args, **kwargs):
        _l = len(args[0])
        if _l == 0:
            ans = None
        elif _l == 1:
            ans = args[0][0]
        else:
            ans = func(*args, **kwargs)
        return ans

    return inner1


@tictoc
def factorial(num):
    time.sleep(1)
    print(math.factorial(num))


@sanity_checks
def dummy(lst):
    return lst


factorial(10)
print(dummy([2, 3]))
print(dummy([2]))
print(dummy([]))
