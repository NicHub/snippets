"""
Exit code → 130 (Interrupted)
"""

import atexit
import sys


def main():
    input()


def gracefull_KeyboardInterrupt():
    sys.excepthook = lambda type, value, traceback: (
        print("\r" "\033[2K" "\033[2K", end="", flush=True)
        if issubclass(type, KeyboardInterrupt)
        else None
    )


@atexit.register
def goodbye():
    print("\033[E" "That’s all Folks!", end="", flush=True)


if __name__ == "__main__":
    gracefull_KeyboardInterrupt()
    main()
