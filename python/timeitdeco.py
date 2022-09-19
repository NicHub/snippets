"""timeit decorator

Source:

    https://stackoverflow.com/a/27737385/3057377


Usage:

    from timeitdeco import timeitdeco

    @timeitdeco
    def function_to_be_timed():
        pass

"""

from functools import wraps
from time import time


def timeitdeco(f):
    @wraps(f)
    def wrap(*args, **kw):
        ts = time()
        result = f(*args, **kw)
        te = time()
        print("func:%r args:[%r, %r] took: %2.4f sec" % \
              (f.__name__, args, kw, te-ts))
        return result
    return wrap
