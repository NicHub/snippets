#!/usr/bin/env python3

# Example of how to make a *.command file with Python.
# A *.command file is run by double clicking on it.
# Make it executable with `chmod +x`.
# Change the shebang if you don’t want to use another Python interpreter.

import os
import sys

# The error message will be sent to /dev/null so as not to be displayed.
sys.stderr = open(os.devnull, "w")

# Get PID of current script.
pid = os.getpid()

# Send signal SIGINT (2) to simulate keyboard interrupt.
# This returns error code 130.
os.kill(pid, 2)
