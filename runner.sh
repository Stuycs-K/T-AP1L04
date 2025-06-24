#!/bin/bash
# HEADERS ###########################################################
err=0
chmod +x .badge.sh
./.badge.sh
trap 'rm -f *.class' EXIT
GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"


#ADD TESTS HERE


exit $err
