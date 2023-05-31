"""

handle_keyboard_interrupt

"""

import signal
import time

KEYBOARD_INTERRUPT = False


def sigint_handler(signal, frame):
    """___"""
    global KEYBOARD_INTERRUPT
    KEYBOARD_INTERRUPT = True
    print("\b \b" * 2, end="", flush=True)


signal.signal(signal.SIGINT, sigint_handler)


def main():
    """___"""
    for _ in range(10):
        if KEYBOARD_INTERRUPT:
            break
        print("░", end="", flush=True)
        time.sleep(0.05)
    for _ in range(10):
        print("\b \b", end="", flush=True)
        if not KEYBOARD_INTERRUPT:
            time.sleep(0.05)


if __name__ == "__main__":
    while True:
        main()
        if KEYBOARD_INTERRUPT:
            print("\nKEYBOARD_INTERRUPT detected, stop program.")
            break
