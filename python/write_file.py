"""

"""
#%%

import os

NEWLINE = os.linesep


def write_file(filename, content):
    """___"""
    with open(file=filename, mode="wt", encoding="utf-8") as _f:
        _f.write(content)


if __name__ == "__main__":
    write_file("write_file.txt", f"Coucou,{NEWLINE}c’est moi !{NEWLINE}")
