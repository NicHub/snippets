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
import pendulum
import time
now = pendulum.now()

time.sleep(0.1)
pendulum.set_locale('fr')
print(pendulum.now().diff_for_humans(now))
print(pendulum.now().diff(now))
print(pendulum.now().diff(now).seconds)
print(pendulum.now().diff(now).in_words())
print(pendulum.now().subtract(seconds=120).diff(now).in_words())
print(pendulum.now().subtract(minutes=4).diff(now).in_words())
print(pendulum.now().subtract(hours=4).diff(now).in_words())
print(pendulum.now().subtract(days=4).diff(now).in_words())
print(pendulum.now().subtract(days=4).diff_for_humans(now))



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

# DATETIME DELTA
t1 = datetime.datetime.now()
time.sleep(0.2)
t2 = datetime.datetime.now()+ datetime.timedelta(days=20)
tdelta = t2 - t1
if tdelta < datetime.timedelta(seconds=60):
    format = "%S"
print(tdelta)
print(tdelta)


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
print(np.datetime64("now").__str__())
# print(f"{now[0:10]}_{now[11:13]}-{now[14:16]}-{now[17:19]}")

