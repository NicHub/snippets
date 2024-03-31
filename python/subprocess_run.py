"""

https://docs.python.org/3/library/subprocess.html
https://docs.python.org/fr/3/library/subprocess.html


"""

import subprocess
from pprint import pprint


CMD = "sleep 1" "&& thiscommanddoesnotexist"
CMD = "pwd"
CMD = "echo $$"


def run_1():
    """___"""

    # With shell=True, the command can be the same as in a shell. Otherwise,
    # things like ~, environnement variables or pipes are not supported.
    #
    # With shell=True and capture_output=True, output are reported in
    # ans.stderr and ans.stdout.
    #
    # With check=False, errors are not reported to Python as such. Check if
    # ans.returncode == 0 to know if the command was successful.
    #
    # If encoding is not set, errors are reterned as bytes.
    #
    # This way of using subprocess.run is blocking.
    print("\n# 1")
    ans = subprocess.run(
        args=CMD, shell=True, capture_output=True, check=False, encoding="utf-8"
    )
    pprint(ans)
    if ans.returncode != 0:
        print(ans.stderr.strip())
        print(ans.returncode)


def run_2():
    """___"""

    # With timeout handling.
    print("\n# 2")
    try:
        ans = subprocess.run(
            args=CMD,
            shell=True,
            capture_output=True,
            check=False,
            encoding="utf-8",
            timeout=0.5,
        )
    except subprocess.TimeoutExpired as _e:
        print(_e)
    else:
        pprint(ans)
        if ans.returncode != 0:
            print(ans.stderr.strip())
            print(ans.returncode)


if __name__ == "__main__":
    try:
        import os

        print(os.environ["SHELL"])

        import os

        print(os.getppid())

        import psutil

        # Obtient la liste de tous les processus
        processes = psutil.process_iter()
        # for processe in processes:
        #     pprint(processe)

        # Filtre les processus pour n'afficher que les terminaux
        terminals = [p.name() for p in processes if "console" in p.name().lower()]

        # Affiche les noms des terminaux
        for terminal in terminals:
            print(terminal)

        run_1()
        run_2()
    except KeyboardInterrupt as _e:
        print(_e)
        print("_e")
        input()
