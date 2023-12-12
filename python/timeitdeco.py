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
    def wrap(*args, **kwargs):
        ts = time()
        result = f(*args, **kwargs)
        te = time()
        print("func:%r args:[%r, %r] took: %2.4f sec" % \
              (f.__name__, args, kwargs, te-ts))
        return result
    return wrap


def tictoc(func):
    """Decorator to measure the execution time of a function."""

    def pretty_time_delta(seconds):
        _s = int(seconds)
        days, _s = divmod(_s, 86400)
        hours, _s = divmod(_s, 3600)
        minutes, _s = divmod(_s, 60)
        if days > 0:
            return "%d d %d h %d m %d s" % (days, hours, minutes, _s)
        elif hours > 0:
            return "%d h %d m %d s" % (hours, minutes, _s)
        elif minutes > 0:
            return "%d m %d s" % (minutes, _s)
        elif seconds > 1:
            return f"{seconds:0.1f} s"
        else:
            return f"{seconds * 1000:0.0f} ms"

    def inner1(*args, **kwargs):
        begin = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        silent = False
        if not silent:
            dt = pretty_time_delta(end - begin)
            msg = f"\nTime elapsed in `{func.__name__}`: {dt}"
            print(msg)
        return result

    return inner1
