"""

"""

import os


def find_file(pathtowalk):
    """___"""

    pathtowalk = os.path.expanduser(pathtowalk)

    if not os.path.exists(pathtowalk):
        print(f"{pathtowalk} not found abort")
        return
    wanted_dirnames = {
        "evenements",
        "2020-08-19-backup_nicobook",
        "2020-08-20-backup_nicobook",
        "Users",
    }
    unwanted_dirnames = {
        ".git",
        "temp",
        "erx-s3",
        "Downloads",
        "Desktop",
        "Documents",
        "Movies",
        "Music",
        "Sites",
        "2010-10-09-critiscope",
    }
    for dirpath, dirnames, _ in os.walk(pathtowalk, topdown=True):
        level = len(dirpath.split(os.path.sep))
        if level > 10:
            continue
        to_remove_dirnames = unwanted_dirnames & set(dirnames)
        for to_remove_dirname in to_remove_dirnames:
            dirnames.remove(to_remove_dirname)
        # print(level)
        # print(dirpath)
        # if level < 4:
        #     print(dirpath)
        dirnames.sort()
        common_dirs = wanted_dirnames & set(dirnames)
        for common_dir in common_dirs:
            print(f"{dirpath}{os.path.sep}{common_dir}")


if __name__ == "__main__":
    pathtowalk = os.path.expanduser(
        "/Volumes/LaCie/BACKUP/2020-08-20-backup_nicobook/Users/nico"
    )
    pathtowalk = os.path.expanduser(
        "/Volumes/LaCie/BACKUP/2020-08-20-backup_nicobook/Users/nico/Pictures"
    )
    pathtowalk = os.path.expanduser("/Volumes/LaCie")
    find_file(pathtowalk)
