#!/bin/bash
# ldirm # list memorized directory # r2019-09-21 fr2019-09-21
# by Valerio Capello - http://labs.geody.com/ - GPL
# alias ldirm=". PATH/ldirm.sh"
if [ "$MPWD" ]; then
ls -laF --group-directories-first --color=auto "$MPWD"
else
ls -laF --group-directories-first --color=auto
fi
