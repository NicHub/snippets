

# Trouve le fichier avec le nom le plus long dans ~/kdnicomac
python3 -c "import os; print(max([os.path.join(root, f) for root, dirs, files in os.walk(os.path.expanduser('~/kdnicomac')) for f in files], key=lambda x: len(os.path.basename(x))))"

# Trouve le dossier avec le nom le plus long dans ~/kdnicomac
python3 -c "import os; print(max([os.path.join(root, d) for root, dirs, files in os.walk(os.path.expanduser('~/kdnicomac')) for d in dirs], key=lambda x: len(os.path.basename(x))))"

# Trouve le dossier avec le chemin complet le plus long dans ~/kdnicomac
python3 -c "import os; print(max([os.path.join(root, d) for root, dirs, files in os.walk(os.path.expanduser('~/kdnicomac')) for d in dirs], key=len))"
