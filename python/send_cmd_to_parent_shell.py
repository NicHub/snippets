"""


lsof -p {parent_pid} | grep /dev/ttys --max-count=1 | awk '{{print $9}}'"

"""

import os
import subprocess
import sys

parent_pid = os.getppid()
parent_tty = os.ttyname(sys.stdout.fileno())

cmd = f"exec 1>{parent_tty} && cd ~/Documents && pwd && cd ~/Desktop && pwd"
print(cmd)
ans = subprocess.run(
    args=cmd, shell=True, capture_output=True, check=False, encoding="utf-8")

print(parent_pid)
print(parent_tty)
print(ans)