#!/bin/bash

if ! command -v yad &> /dev/null; then

    echo "Yad is not installed. Please install yad to run this script."

    exit 1

fi

path=($HOME)

db=($HOME/snusbash/db/)

snusbash=$(yad --center --width=300 --title="SnusBash" --text="Enter a user,pass,mail:













Don't forget to fill the /db folder with your .txt, .sql or other
" --image="$HOME/snusbash/img/snus2.png" --width=800 --height=200 --entry)



if [ -z "$snusbash" ]; then

    yad --title="Error" --image="$HOME/snusbash/img/icon.png" --center --text="No text entered. Please try again." --error

else

    grep -r "$snusbash" $db* | yad --center --image="$HOME/snusbash/img/snus2.png" --title="SnusBash ~ Search Results" --text-info --width=1500 --height=600 

fi




