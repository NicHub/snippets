"""
Display disk stats
"""

import shutil
total, used, free = shutil.disk_usage("/")

print("DISK SPACE")
print(f"Total : {total:>16} B = { total // (2**30):>4} GiB" )
print(f"Used  : {used:>16} B = { used  // (2**30):>4} GiB" )
print(f"Free  : {free:>16} B = { free  // (2**30):>4} GiB" )
