#!/bin/bash

# path=~/Downloads/
# file=firefox-63.0.tar.bz2
# path=''
path=`dirname "$1"`/
file=`basename "$1"`

# echo $path$file

sudo cp $path$file /opt/ &&\
# sudo rm $path$file &&\
cd /opt &&\
sudo rm -R firefox # &&\
sudo tar xvjf $file &&\
sudo rm $file
cd -
