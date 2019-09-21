#!/bin/bash
# back # back from cdm and upm # r2017-02-01 fr2017-02-01
# by Valerio Capello - http://labs.geody.com/ - GPL
# alias back=". PATH/back.sh"
if [ "$MPWD" == "" ]; then LIMIT=0; fi
LIMIT="$1"
if [ "$LIMIT" == "" ]; then LIMIT=1; fi
P="$MPWD"
# echo -n "cd from $P "
for ((i=1; i <= LIMIT; i++))
do
P="${P%/..}"
done
# echo "to $P"
cd "$P"
export MPWD="$P"
