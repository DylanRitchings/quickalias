#!/bin/bash

title=$(cat <<EOM
######################################################
#QUICK ALIASES
######################################################
EOM
)

fPath="./test.txt"

function qalias {
    #Look for title tag 
    if grep -Fxq "$title" "$fPath"
    then
        __createAlias "$1"
    else
        #create alias tag
        echo "$title" >> "$fPath"
        #sed -i "$title" "$fPath"
        __createAlias "$1"
    fi
}


__createFile(){
    #File doesnt exist do you want to create
    echo "test"
}

__createAlias (){

    sed -i "0,/^\$title.*/a $1" "$fPath"
    #sed  "0,/\[$title\]\/a $1" "$fPath"

}

alias qa="qalias"
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
