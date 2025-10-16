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

################# FILES THAT NEED COMPILE - TRY TO COMPILE #############
required_files=("Triangle.java" "Point.java" "Driver.java")
for file in "${required_files[@]}"; do
  if [ -f "$file" ]; then
    echo -e "${GREEN}✅$file found${RESET}"
    if javac "$file"; then
      echo -e "${GREEN}✅$file compiled${RESET}"
    else
      echo -e "${RED}❌Failed to compile $file${RESET}"
      err=1
    fi
  else
    echo -e "${RED}❌$file does not exist.${RESET}"
    err=1
  fi
done
################# RUN A CLASS AND PRINT OUTPUT - DO NOT VALIDATE #############
CLASSNAME=Driver
if [ -f "$CLASSNAME.class" ]; then
  echo -e "Attempting to run $CLASSNAME.java:"
  output=$(timeout 1 java "$CLASSNAME")
  status=$?
  if [ $status -ne 0 ]; then
    echo -e "${RED}❌Command 'java $CLASSNAME' failed${RESET}"
    err=1
  else
    echo -e "❓It ran with output: (you must validate this yourself)"
    echo "$output"
  fi  
else
   echo -e "${RED}❌Cannot run $CLASSNAME.java, no class file found.${RESET}"
   err=1
fi


exit $err

