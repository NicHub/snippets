#!/usr/bin/env python3

import os
import sys

# Main code
# ...

# Exit code
sys.stderr = open(os.devnull, "w")
pid = os.getpid()
os.kill(pid, 2)


# # Ça, ça fonctionne pas :
# import sys
# sys.exit(130)
