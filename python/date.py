"""

"""

import datetime

if __name__ == "__main__":

    date = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    print(date)

    date = datetime.datetime.now().strftime("%Y-%m-%dT%H:%M:%S")
    print(date)

    date = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S.%f")
    print(date)
