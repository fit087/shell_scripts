#!/usr/bin/env bash

remote_directory=/home/tng/tng60/Documents/output/finalwork/20181121Wed/
local_directory=05out

sshfs tng60@saturn.nacad.ufrj.br:$remote_directory $local_directory
