import sys


def nice_error_msg(_e=""):
    """___"""
    exc_type, _, exc_tb = sys.exc_info()
    fname = exc_tb.tb_frame.f_code.co_filename
    msg = (
        f"{' '*20}{_e}"
        f"\n{' '*20}{exc_type}"
        f"\n{' '*20}{fname}"
        f"\n{' '*20}line {exc_tb.tb_lineno}"
    )
    return msg


if __name__ == "__main__":
    try:
        raise
    except RuntimeError as _e:
        msg = nice_error_msg(_e)
        print(msg)
