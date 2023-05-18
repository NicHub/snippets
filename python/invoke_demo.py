"""

https://www.pyinvoke.org/

"""

from invoke import run

def get_ffmpeg_path():
    """___"""
    cmd = "which ffmpeg"
    result = run(cmd, hide=True, warn=True)
    if result.return_code != 0:
        raise Exception("FFMPEG not found in $PATH. Bye !")
    return result

if __name__ == "__main__":
    result = get_ffmpeg_path()
    print(result.stdout)

