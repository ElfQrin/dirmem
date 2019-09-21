#!/bin/bash
# up # up one directory # r2017-02-01 fr2017-02-01
# by Valerio Capello - http://labs.geody.com/ - GPL
# alias up=". PATH/up.sh"
LIMIT="$1"
if [ "$LIMIT" == "" ]; then LIMIT=1; fi
if [ "$LIMIT" -lt 0 ]; then LIMIT=0; fi
P="$PWD"
if [ "$P" == "/" ]; then LIMIT=0; fi
# echo -n "cd from $P "
for ((i=1; i <= LIMIT; i++))
do
P=`echo -n "$P" | rev | cut -d "/" -f2- | rev`
# P="$P/.." # alternative method
done
if [ "$P" == "" ]; then P="/"; fi
# echo "to $P"
cd "$P"
# export MPWD="$P"
