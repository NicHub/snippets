"""

"""
import os


def walk(path_to_walk):
    """ ___ """
    for root, _, files in os.walk(path_to_walk, topdown=False):
        for fname in files:
            if fname in [".DS_Store"]:
                continue
            _, ext = os.path.splitext(fname)
            if ext in [".jpg"]:
                fpath = os.path.join(root, fname)
                print(fpath)


if __name__ == "__main__":
    path_to_walk = os.path.expanduser("~")
    walk(path_to_walk)
