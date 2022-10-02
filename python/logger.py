"""
https://realpython.com/python-logging/

"""

import logging


def init_logger():
    """___"""
    # LOGGER.basicConfig(
    #     stream=sys.stdout,
    #     format="\n### line #" "%(lineno)-3s" "%(name)-3s\n" "%(message)s",
    #     datefmt="%Y-%m-%d %H:%M:%S",
    #     level=logging.DEBUG,
    # )
    # LOGGER.debug("Logger init done")
    logging.basicConfig(format='\n### line #%(lineno)-3s — %(levelname)s\n%(message)s')
    logging.warning('This is a Warning')

if __name__ == "__main__":
    init_logger()
