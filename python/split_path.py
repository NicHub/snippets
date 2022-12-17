"""

"""
#%%

import os


def split_path(file_path):
    """___"""
    file_path = os.path.expanduser(file_path)
    file_path = os.path.normpath(file_path)
    file_path_splitext = os.path.splitext(file_path)
    file_parts = file_path_splitext[0].split(os.sep)
    file_parts.append(file_path_splitext[-1])
    return file_parts


if __name__ == "__main__":
    file_path = (
        "..//data/2022-12-08_12-35-18-flowdata-ege503-on6-off4-nozzlefalse-boom293.csv"
    )
    file_parts = split_path(file_path)
    print(file_parts)
