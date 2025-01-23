# Les paths sont affichés en relatif si le point est utilisé comme répertoire de départ et en absolu si un répertoire de départ absolu et précisé.
# L’option r fait une recherche récursive.
# L’option i (case insensitive) ralenti la recherche d’un facteur 3.
# L’option I ignore les fichiers binaires.
# L’option -s désactive les messages d’avertissement.
grep -riIls --include="*.txt" --include="*.php" "StringToSearch" "`pwd`"

grep -rils "eco" $HOME/Library/Mail/V10/ --include="*.pdf"

grep -rils "nano" $HOME/Documents/PlatformIO/Projects/ --include="*.ini"

grep -rIls --include="*.py" "kWh" "`pwd`"
grep -rls --include="*.ods" --include="*.xlsx" "kWh" "`pwd`"
grep -rls --include="*.py" "import logging" "`pwd`"
grep -rIls "SB00622A" "`pwd`"

grep -riIls --include="*.ini" "d1" "`pwd`"

grep -r --include="Info.plist" "x86_64" "/Applications"

grep -rIls --include="*.svg" "CDATA" "`pwd`"

grep -riIls --include="*.py" "serial" "`pwd`"

grep -riIls --include="*.py" "less +F" "`pwd`"

grep -rls --include="create-pio-project.sh" "bash" "`pwd`"

grep -riIls --include="*.sh" "[@]" "`pwd`"

grep -rils --include="*.ino" "heart"  ~/Documents/Arduino/libraries
