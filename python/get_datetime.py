"""

"""

import datetime as dt

if __name__ == "__main__":

    override_localnow = True
    if not override_localnow:
        localnow = dt.datetime.now().astimezone()
    else:
        localnow = dt.datetime.strptime(
            "2022-10-05T00:00:00.000000+0200", "%Y-%m-%dT%H:%M:%S.%f%z"
        )
    utcnow = localnow.astimezone(dt.timezone(dt.timedelta(seconds=0), "UTC"))

    print()
    print(localnow)
    print(utcnow)
    print()
    print(localnow.strftime("%Y-%m-%dT%H:%M:%S.%f%z"))
    print(utcnow.strftime("%Y-%m-%dT%H:%M:%S.%f%z"))
    print()
    print(localnow.strftime("%Y-%m-%dT%H:%M:%S%z"))
    print(utcnow.strftime("%Y-%m-%dT%H:%M:%S%z"))
    print()
    print(localnow.strftime("%Y-%m-%dT%H:%M:%S"))
    print(utcnow.strftime("%Y-%m-%dT%H:%M:%S"))
    print()
    print(localnow.strftime("%Y-%m-%d"))
    print(utcnow.strftime("%Y-%m-%d"))
