"""
https://realpython.com/python-logging/

"""

import logging
import sys


def init_logger():
    """___"""
    # Logging levels
    # 50 CRITICAL, 40 ERROR, 30 WARNING, 20 INFO, 10 DEBUG, 0 NOTSET
    logging.basicConfig(
        stream=sys.stdout,
        format="### line #%(lineno)-3s — %(levelname)s : %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        level=logging.DEBUG,
    )
    # logging.critical("critical Logger init done")
    # logging.error("error Logger init done")
    # logging.warning("warning Logger init done")
    # logging.info("info Logger init done")
    # logging.debug("debug Logger init done")


if __name__ == "__main__":
    init_logger()
