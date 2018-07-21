#!/usr/bin/env bash

eval $(ssh-agent -s)
# eval `ssh-agent`

ssh-add ~/.ssh/hcer2018_rsa

