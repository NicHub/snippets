"""

Change file extension

Note: With Bash you can use this : "${FNAME%.mp4}.m4a"
"""

FNAME = "coca.mp4"

"""
🧩 1. Avec os.path.splitext (classique, lisible)
✅ Avantage :
robuste, clair, gère correctement les chemins (/path/to/file.mp4)
ne dépend pas du nom exact de l’extension
"""
import os  # noqa

root, ext = os.path.splitext(FNAME)
new_name = f"{root}.m4a"
print(new_name)  # → coca.m4a


"""
🪄 2. Avec la syntaxe str.removesuffix() (Python ≥ 3.9)
✅ C’est l’équivalent conceptuel direct de la notation Bash:  `echo "${FNAME%.mp4}.m4a"`.
💡 C’est probablement ce que tu aimeras le plus si tu viens du shell.
"""
new_name = FNAME.removesuffix(".mp4") + ".m4a"
print(new_name)  # → coca.m4a

"""
🧱 3. Avec pathlib (moderne et élégant)
✅ Avantages :
fonctionne avec des chemins complets (/home/user/video/coca.mp4)
gère automatiquement les extensions multiples (.tar.gz, etc.)
c’est l’API recommandée pour tout nouveau code
"""
from pathlib import Path  # noqa

new_name = str(Path(FNAME).with_suffix(".m4a"))
print(new_name)  # → coca.m4a
