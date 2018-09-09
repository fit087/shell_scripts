
# eval $(ssh-agent -s)
eval `ssh-agent`

# ssh-add ~/.ssh/hcer2018_rsa
ssh-add /home/adolfo/.ssh/hcer2018_rsa

# This command did this script work
bash -i
# bash -i        If the -i option is present, the shell is interactive.

#this_sheebang_can't_be_used!/usr/bin/env bash
#_don`tuse!/bin/bash
