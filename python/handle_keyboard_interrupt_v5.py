"""
Exit code → 0
"""

try:
    # Importing readline disables the display of ^C
    # when the user stops the program with Ctrl+C.
    # The module readline is not avalaible on Windows.
    import readline  # noqa: F401
except ImportError:
    print("module readline is not accessible")
    pass


def main():
    input()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass
