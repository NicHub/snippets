"""

handle_keyboard_interrupt_simple

"""

import time


def main():
    """___"""
    for _ in range(10):
        print("░", end="", flush=True)
        time.sleep(0.05)
    for _ in range(10):
        print("\b \b", end="", flush=True)
        time.sleep(0.05)


if __name__ == "__main__":
    try:
        while True:
            main()
    except KeyboardInterrupt:
        print("\b \b" * 2, flush=True)
        print(f"Bye bye")
    finally:
        print("That’s all Folks!")
