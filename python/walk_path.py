"""

https://docs.python.org/3/library/os.html#os.walk

# NOTES

    topdown = True
    L’arborescence des répertoires est parcourue depuis le sommet
    topdown = False
    L’arborescence des répertoires est parcourue depuis les racines

    `sort()` is faster than `sorted`
    https://pythonsimplified.com/difference-between-sort-and-sorted-in-python/

"""
import os
from pprint import pprint


def walk(pathtowalk):
    """___"""
    filepaths = []
    for dirpath, dirnames, filenames in os.walk(pathtowalk):
        # Filter out unwanted directories.
        unwanted_dirnames = [".git", "temp"]
        for unwanted_dirname in unwanted_dirnames:
            if unwanted_dirname in dirnames:
                dirnames.remove(unwanted_dirname)
        for filename in filenames:
            # Filter out unwanted file names.
            if filename in [".DS_Store"]:
                continue
            # Filter out unwanted file extensions.
            _, ext = os.path.splitext(filename)
            if ext not in [".jpeg"]:
                continue
            filepath = os.path.join(dirpath, filename)
            filepaths.append(filepath)

    # Sort alphabetically.
    filepaths.sort(key=str.lower)
    return filepaths


if __name__ == "__main__":
    pathtowalk = "~/erx-s3/erx-technical-documentation/"
    pathtowalk = os.path.expanduser(pathtowalk)
    filepaths = walk(pathtowalk)
    pprint(filepaths)
