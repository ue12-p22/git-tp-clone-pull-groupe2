#!/bin/bash

#
# un script a destination du prof pour publier le repo au fur et a mesure
#

# Usage:
# publish.sh 1
#  - or -
# publish.sh step1

step="$1"; shift
case "$step" in
    [0-9]) step="step${step}";;
    step*) ;;
    *) echo OOPS unexpected step $step; exit 1;;
esac

git reset --hard $step

if [ -n "$(git remote)" ]; then
    git push --force
fi
