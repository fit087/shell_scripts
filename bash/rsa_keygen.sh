#!/usr/bin/env bash
# key_name=olbuntu
key_name=$1
ssh-keygen -f ~/.ssh/$key_name -t rsa -b 4096
