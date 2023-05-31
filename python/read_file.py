"""

# READ AND WRITE MODES
"r" — Read — Default value. Opens a file for reading, error if the file does not exist
"a" — Append — Opens a file for appending, creates the file if it does not exist
"w" — Write — Opens a file for writing, creates the file if it does not exist
"x" — Create — Creates the specified file, returns an error if the file exists

# FILE TYPES
"t" — Text — Default value. Text mode
"b" — Binary — Binary mode (e.g. images)

"""
#%%


def read_small_file(filename):
    """___"""
    with open(filename, "rt", encoding="utf-8") as _f:
        full_content = _f.read()
        full_content = _f.split("\n")
    print(full_content)


def read_big_file(filename):
    """___"""
    with open(filename, "rt", encoding="utf-8") as _f:
        for line in _f:
            print(line.strip())


if __name__ == "__main__":
    read_small_file(__file__)
    read_big_file(__file__)
