"""

handle_keyboard_interrupt

"""

import signal
import sys
import time

KEYBOARD_INTERRUPT = False

def exit_func(*argv):
    global KEYBOARD_INTERRUPT
    KEYBOARD_INTERRUPT = True
    print("\b \b" * 2, end="", flush=True)


signal.signal(signal.SIGINT, exit_func)


def main():
    """___"""
    for _ in range(10):
        if KEYBOARD_INTERRUPT:
            break
        print("░", end="", flush=True)
        time.sleep(0.05)
    for _ in range(10):
        print("\b \b", end="", flush=True)
        if KEYBOARD_INTERRUPT:
            continue
        time.sleep(0.05)


if __name__ == "__main__":
    sys.stdin = open('stdout.txt', 'w')
    while True:
        main()
        if KEYBOARD_INTERRUPT:
            print("\nKEYBOARD_INTERRUPT detected, stop program.")
            sys.exit(0)
