#!/bin/bash

FILE=$1
LANGUAGE=$2
MYPATH=$3

function installNodejsDependecies {
    npm install >> ../nodejs-dependecies-log.txt
}

case $LANGUAGE in
    "node" )
        for DIR in $(ls -d $MYPATH*); do
            cd $DIR
            if [ -f $FILE ]; then
                echo "Open "$DIR >> ../nodejs-dependecies-log.txt
                installNodejsDependecies
                echo "Install success "$DIR
                echo "Install success "$DIR | >> ../nodejs-dependecies-log.txt
                echo "Close of path "$DIR | >> ../nodejs-dependecies-log.txt
                cd $MYPATH
            fi
        done
    ;;
        "python")      
        echo "Under development to python"
    ;;
    *)
        echo "Don't action"
    ;;
esac
