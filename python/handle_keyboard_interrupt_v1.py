"""
Exit code → 0
"""

import signal


def quit_gracefully(_, __):
    print("\r" "\033[2K", end="", flush=True)
    exit(0)


def quit_gracefully_init(callback):

    # List of signals to which the handler will be assigned.
    signal_names = ("SIGINT", "SIGQUIT", "SIGTERM")

    # Remove signals that are not available on the current platform.
    # E.g. SIGQUIT is available on macOS but not on Windows.
    signal_names = [
        signal_name
        for signal_name in signal_names
        if signal_name in dir(signal.Signals)
    ]

    # Assign handler to signals.
    for signal_name in signal_names:
        signal.signal(getattr(signal, signal_name), callback)


def main():
    input()


if __name__ == "__main__":
    quit_gracefully_init(quit_gracefully)
    main()
