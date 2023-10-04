"""

datetime | strftime() and strptime() Format Codes
https://docs.python.org/3/library/datetime.html#strftime-and-strptime-format-codes

time | strftime() and strptime() Format Codes
https://docs.python.org/3/library/time.html#time.strftime


clock
https://blog.adafruit.com/2022/05/27/john-parks-circuitpython-parsec-setting-real-time-clock-with-ntp-timeserver-adafruit-johnedgarpark-adafruit-circuitpython/

"""

import datetime
import time
import numpy as np

if __name__ == "__main__":
    # DATETIME
    now = datetime.datetime.now()

    print("\n# strftime WITH datetime")
    print(now.strftime("%Y-%m-%d_%H-%M-%S"))
    print(now.strftime("%Y-%m-%dT%H:%M:%S"))
    print(now.strftime("%Y-%m-%d %H:%M:%S.%f"))

    print("\n# strptime WITH datetime")
    print(datetime.datetime.strptime("2023-02-07_12-34-56", "%Y-%m-%d_%H-%M-%S"))
    print(datetime.datetime.strptime("2023-02-07T12:34:56", "%Y-%m-%dT%H:%M:%S"))
    print(
        datetime.datetime.strptime("2023-02-07 12:34:56.999999", "%Y-%m-%d %H:%M:%S.%f")
    )

    # TIME
    localtime = time.localtime()

    print("\n# strftime WITH time")
    print(time.strftime("%Y-%m-%d_%H-%M-%S", localtime))
    print(time.strftime("%Y-%m-%dT%H:%M:%S", localtime))
    print(time.strftime("%Y-%m-%d %H:%M:%S.%f", localtime))  # Doesn’t work

    print("\n# strptime WITH time")
    print(time.strptime("2023-02-07_15-35-47", "%Y-%m-%d_%H-%M-%S"))
    print(time.strptime("2023-02-07T15:35:47", "%Y-%m-%dT%H:%M:%S"))
    print(time.strptime("2023-02-07 12:34:56.999999", "%Y-%m-%d %H:%M:%S.%f"))

    # NUMPY
    print(f"\n# numpy {np.__version__}")
    print(np.datetime64("today"))
    print(np.datetime64("now"))
    # print(np.datetime64("2001-01-01T00:00:00-0200"))
    now = np.datetime64("now").__str__()
    now = f"{now[0:10]}_{now[11:13]}-{now[14:16]}-{now[17:19]}"
    print(now)
