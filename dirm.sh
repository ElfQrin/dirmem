#!/bin/bash
# dirm # memorize directory (to get back) # r2019-09-21 fr2017-02-01
# by Valerio Capello - http://labs.geody.com/ - GPL
# alias dirm=". PATH/dirm.sh"
# echo "directory to remember: $1"
if [ -z "$1" ]; then
export MPWD="$PWD"
else
export MPWD="$1"
fi
