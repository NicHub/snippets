"""
Exit code → 130 (Interrupted)

See also:
https://www.pythonpool.com/keyboardinterrupt/
"""

import os
import sys


def main():
    input()


if __name__ == "__main__":
    sys.stderr = open(os.devnull, "w")
    main()

