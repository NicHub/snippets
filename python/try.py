"""
try
"""
from multiprocessing import parent_process
import sys


def main(case=0):
    try:
        if case == 1:
            # raise KeyboardInterrupt
            print("Press CTRL-C to abort.")
            while True:
                pass
        elif case == 2:
            raise Exception("Oups !")
        else:
            pass
    except KeyboardInterrupt:
        print("CTRL-C pressed\nThat’s all Folks!")

        for line in sys.stdin:
            print(line)
        print(f"ans = {ans}")
        sys.exit()
    except Exception as _e:
        print(_e)
    else:
        print("Else — No error!")
    finally:
        print("Finally — We are done!\n")


if __name__ == "__main__":
    main(3)
    main(2)
    main(1)
