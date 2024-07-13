#!/bin/bash

yad --form --window-icon="img/icon.png" --title="SnusBash ~ Start" --center  \
--button="!img/snus.png":0 \
--button="!img/update.png":1

case $? in
    0)
        bash sns.sh
        ;;
    1)
        bash update.sh
        ;;
esac
