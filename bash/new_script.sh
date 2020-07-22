#! /bin/bash
# new_script.sh - accepts all the inputs to create a new bash script

cdir=`pwd`

cd ~/scripts/bash/

read -p "What's the name of the script? " script_name

[ ${#script_name} -le 1 ] && echo "Script Name cannot be empty" && exit 1 || touch "$script_name" && vim $_

./install_script.sh $script_name -n

cd $cdir

