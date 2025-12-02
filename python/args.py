""" """

import sys
from rich import print

if __name__ == "__main__":

    print(f"Number of arguments: {len(sys.argv)}")
    print(f"Argument List: {str(sys.argv)}")

    print("**********")
    print(sys.argv)
    print("##########")

    if len(sys.argv) > 1 and "Jupyter" in sys.argv[1]:
        print("Running in Jupyter notebook")
    else:
        print("Running in Terminal")

    # Other solution
    if len(sys.argv) > 1 and "Jupyter" not in sys.argv[1]:
        print("Running in Terminal")
