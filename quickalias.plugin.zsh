#!/bin/bash

qAliasTag=$(cat <<EOF
######################################################
#QUICK ALIASES
######################################################
EOF
)

function qalias {
    #Look for alias tag in .zsh
    if grep -Fxq $qAliasTagvb ~/.zshrc
    then
        __createAlias $1
    else
        #create alias tag in .zsh
        sed -i -e $qAlaisTag ~/.zshrc
        __createAlias $1
    fi
}

__createAlias (){
            sed  '/\$(qAliasTag)/i' + $1 ~/.zshrc

}

alias qa = qalias
# alias rmqa =


#TODO
#Move to different directory .sh file
#Create ppa for distribution
#Create ohmybash and ohmyzsh plugins
#Create commands to set bashrc location
#Tutorial how to set up seperate quick alias file and import into bashrc
#Help command

#SETUP
#set bashrc location
#
