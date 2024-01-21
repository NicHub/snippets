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
        format="%(levelno)s " "%(module)-11s " "%(lineno)3s. " "%(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        level=logging.DEBUG,
    )

    # https://stackoverflow.com/a/66345269/3057377
    # Silence other loggers
    for log_name, log_obj in logging.Logger.manager.loggerDict.items():
        print(f"log_name = {log_name}")
        logging.getLogger(log_name).setLevel(logging.CRITICAL)

    # print_msg(1)


def print_msg(id):
    """___"""
    print(f"Logger effective level = {logging.getLogger().getEffectiveLevel():2}")
    logging.critical(f"{id} critical")
    logging.error(f"{id} error")
    logging.warning(f"{id} warning")
    logging.info(f"{id} info")
    logging.debug(f"{id} debug")
    print()


def logger_demo():
    """___"""
    print_msg(0)
    logging.getLogger().setLevel(logging.CRITICAL)
    print_msg(1)
    logging.getLogger().setLevel(logging.ERROR)
    print_msg(2)
    logging.getLogger().setLevel(logging.WARNING)
    print_msg(3)
    logging.getLogger().setLevel(logging.INFO)
    print_msg(4)
    logging.getLogger().setLevel(logging.DEBUG)
    print_msg(5)
    logging.getLogger().setLevel(logging.NOTSET)
    print_msg(6)


if __name__ == "__main__":
    init_logger()
    logger_demo()
