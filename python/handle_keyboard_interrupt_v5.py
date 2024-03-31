"""
Exit code → 0

Using `import readline` removes ^C.
The module readline is not avalaible on Windows.
"""

try:
    import readline  # noqa: F401
except ImportError:
    pass


def main():
    input()


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass
