#!/bin/bash
# File: .prompt.sh
# Author: timothy.lee
# Version: 0.1
# Description: customize PS1
# Date: 2011-08-25

### color schema
BLACK='\[\033[0;30m\]'
DGRAY='\[\033[1;30m\]'
RED='\[\033[0;31m\]'
LRED='\[\033[1;31m\]'
GREEN='\[\033[0;32m\]'
LGREEN='\[\033[1;32m\]'
BROWN='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[0;34m\]'
LBLUE='\[\033[1;34m\]'
PURPLE='\[\033[0;35m\]'
LPURPLE='\[\033[1;35m\]'
CYAN='\[\033[0;36m\]'
LCYAN='\[\033[1;36m\]'
LGRAY='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
NORMAL='\[\033[0m\]'

### PS1 rock
if [[ "$UID" -ge 1000 ]]; then
  PS1="┌─($LGRAY\h$NORMAL$GREEN:$BROWN\w$NORMAL)\n└─$YELLOW$RED>$PURPLE>$LPURPLE>$NORMAL "
elif [[ "$UID" -ge 0 ]]; then
  PS1="┌─(\h:\w)\n└─($RED\#$NORMAL)─> "
else
  PS1="┌─(\h:\w)\n└─($LGRAY\$$NORMAL)─> "
fi
