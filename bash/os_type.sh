#!/usr/bin/env zsh

ostype=`python -c "import platform; print(platform.system())"`

if [[ "$ostype" == "Linux" ]]; then
    echo "Système d’exploitation : Linux"
elif [[ "$ostype" == "Darwin"* ]]; then
    echo "Système d’exploitation : macOS"
elif [[ "$ostype" == "Cygwin" || "$ostype" == "Windows" ]]; then
    echo "Système d’exploitation : Windows (Cygwin/MSYS)"
else
    echo "Système d’exploitation non identifié"
fi
