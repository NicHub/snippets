"""
virtual_serial_port
"""

import sys
import serial
import time

SETTINGS_INO1 = {
    "port": "/dev/cu.usbmodem4011301",
    "baud_rate": 115200,
    "timeout": 1 / 1000,
    "stopbits": 1,
}


def init_serial(settings):
    """___"""
    try:
        settings["handle"] = serial.Serial(
            settings["port"],
            settings["baud_rate"],
            timeout=settings["timeout"],
            stopbits=settings["stopbits"],
        )
    except Exception as e:
        print(e)
        sys.exit()

    settings["handle"].reset_input_buffer()
    settings["handle"].reset_output_buffer()
    settings["handle"].flush()

    return settings


def read_serial(settings):
    """___"""
    try:
        ans = settings["handle"].readline().decode("ascii").strip()
        ans = (-1, ans)[len(ans) > 0]
    except Exception as e:
        print(f"read error: {e}")
        ans = 0

    return ans
    try:
        ans = int(ans)
    except Exception as e:
        print(f"convertion error: {e} ans={ans} len(ans)={len(ans)}")
        ans = 0



def main():
    """___"""
    settings = init_serial(SETTINGS_INO1)
    globalcnt = 0
    # cnt = read_serial(settings)
    cnt=0
    while True:
        globalcnt += 1
        cnt = (cnt + 1) % 256
        ans = read_serial(settings)
        print(ans)
        continue
        if ans != cnt:
            print(
                f"globalcnt = {globalcnt:10d}\n"
                f"cnt       = {cnt:10d}\n"
                f"ans       = {ans:10d}"
            )
            return


if __name__ == "__main__":
    main()
