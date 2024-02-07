"""
See also:
https://www.pythonpool.com/keyboardinterrupt/
"""

import sys


def main():
    input()


def gracefull_KeyboardInterrupt():
    sys.excepthook = lambda type, value, traceback: (
        print("\r" "\033[2K" "\033[A", end="", flush=True)
        if issubclass(type, KeyboardInterrupt)
        else None
    )


if __name__ == "__main__":
    gracefull_KeyboardInterrupt()
    main()
