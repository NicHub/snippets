"""

https://docs.python.org/3/howto/sorting.html

"""

# The `sorted` function returns a new sorted list but does not sort in place.
_l = [5, 2, 3, 1, 4]
print(sorted(_l))
print(_l)

# The `sort()` method, sorts in place.
_l.sort()
print(_l)
