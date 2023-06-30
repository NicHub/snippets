import signal
from time import sleep


def __quit_gracefully(_, __):
    # Do here whatever is needed to quit the program gracefully.
    print("\b\b\033[K", end="", flush=True)
    exit(0)


def __quit_gracefully_init():
    # Choose the signals that will stop the program if they are
    # available on the current platform.
    # E.g. SIGQUIT is available on macOS but not on Windows.
    signal_names = [
        signal_name
        for signal_name in ("SIGINT", "SIGQUIT", "SIGTERM")
        if signal_name in dir(signal.Signals)
    ]
    # Assign handler to signals.
    for signal_name in signal_names:
        signal.signal(getattr(signal, signal_name), __quit_gracefully)


def main():
    sleep(60)


if __name__ == "__main__":
    __quit_gracefully_init()
    while True:
        main()
