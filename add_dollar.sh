#!/bin/bash
# Add Sigil Symbol $ at the begin of each line 
# sed 's/^/$ /' bashcode_001.sh > bashcode_001.txt
# $ ./add_dollar.sh bashcode_001.sh
sed 's/^/$ /' "$1" > "${1%.*}".txt
