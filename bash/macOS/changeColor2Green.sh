#!/usr/bin/env bash

# Required:
# imagemagick 7 (if you package manager didn't have imagemagick 7 yet, you can use the homebrew package manager)
# To make excecutable
# chmod +x changeColor.sh
# To Run
#./changeColor.sh inputFile.pdf

convert -density 300 $1 -fuzz 10% -fill 'icc-color(cmyk, 0.5, 0, 0.5, 0.00)' -opaque black out-$1
