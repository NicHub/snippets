"""

VSCode default formater: autopep8 (mais j’utilise black)
VSCode default linter: pylint


Make Black ignore some code

# fmt: off
# fmt: on

Pylint
no quality assurance => no linting
# noqa

ignore specific warning
# noqa: F401


See:
https://www.alpharithms.com/noqa-python-501210/



dans YAML
https://prettier.io/docs/en/ignore.html
# prettier-ignore



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
    pass  # noqa E101:

def foo():  # noqa:
    pass  # noqa E101:

x=5  # noqa: E225, E305

print("46 equals 2 = ", 46 == 2)


# fmt: off
"""
%run demo.py arg1 arg2
""";  # noqa: E703
# fmt: on
