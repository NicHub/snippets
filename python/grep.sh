# Les paths sont affichés en relatif si le point est utilisé comme répertoire de départ et en absolu si un répertoire de départ absolu et précisé.
# L’option r fait une recherche récursive.
# L’option i (case insensitive) ralenti la recherche d’un facteur 3.
# L’option I ignore les fichiers binaires.
# L’option -s désactive les messages d’avertissement.
grep -riIls --include="*.txt" --include="*.py" "My String" `pwd`
