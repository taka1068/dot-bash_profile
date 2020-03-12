#!/bin/bash


echo 'This is private script for Takanori Hirobe. If you are not me, you should not use this script which may delete ~/.bash_profile, ~/.inputrc and so on.'
printf 'Are you sure? (yes/no)'
read -r input

if [ "$input" != "yes" ]; then
    exit 1
fi


rm ~/.bash_profile
rm ~/.inputrc

ln -fs ${PWD}/home/.bash_profile ~/.bash_profile
ln -fs ${PWD}/home/.inputrc ~/.inputrc 


