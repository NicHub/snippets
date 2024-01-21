"""
Make Black ignore some code

# fmt: off
# fmt: on


no quality assurance => no linting
# noqa

ignore specific warning
# noqa: F401


See:
https://www.alpharithms.com/noqa-python-501210/







Dans VSCode, éditer le fichier .code-workspace et ajouter les settings pour Flake8
{
	"folders": [
		{
			"path": "."
		}
    ],
	"settings": {
		"flake8.args": [
			"--ignore=F403,F405"
		],
	}
}




"""

# fmt: off
char_count = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1000, 1_000_000, 1_000_000_000]  # noqa
# fmt: on




import os  # noqa: F401, E402, E303


def foo():
    pass

def foo():  # noqa:
    pass

x=5  # noqa: E225, E305

print("46 equals 2 = ", 46 == 2)
