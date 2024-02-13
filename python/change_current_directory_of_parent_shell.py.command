#!/usr/bin/env python3

"""

change_current_directory_of_parent_shell

"""

# Example of how to make a *.command file with Python.
# A *.command file is run by double clicking on it.
# Make it executable with `chmod +x`.
# Change the shebang if you don’t want to use another Python interpreter.

import os
import sys

from invoke import run


def change_current_directory_of_parent_shell(target_path):
    """___"""

    cmd = f"""osascript <<END
        on run
            tell application "Terminal"
                set terminalID to id of front window
                do script "cd '{target_path}'" in window id terminalID
            end tell
        end run
END
"""
    print(cmd)
    ans = run(cmd, echo=True,  hide=False, warn=True)
    print(ans)


if __name__ == "__main__":

    # Get PID of current script.
    pid = os.getpid()


    # Change dir
    script_path = os.path.dirname(os.path.realpath(__file__))
    change_current_directory_of_parent_shell(script_path)

    # Send signal SIGINT (2) to simulate keyboard interrupt.
    # This returns error code 130.
    # The error message will be sent to /dev/null so as not to be displayed.
    sys.stderr = open(os.devnull, "w")
    os.kill(pid, 2)

