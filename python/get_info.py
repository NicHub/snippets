import numpy

print(numpy.__all__)
print(numpy.__version__)

import sys
print("\n# sys")
print(sys.version)
print(f"Python     : {sys.version.split(' ')[0]}")

import platform
print("\n# platform")
print(platform.python_version())
