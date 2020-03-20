#!/usr/bin/env bash

(set -x; brew update;)
(set -x; brew upgrade;)

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

outdated_casks=( $(brew cask outdated) )

for cask in ${outdated_casks[@]}
do
    echo "${red}${cask}${reset} requires an ${red}update${reset}."
    (set -x; brew cask reinstall $cask;)
done

(set -x; brew cleanup -s;)
