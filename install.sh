#!/bin/sh

CONFIG_FOLDER_NAME=".emacs.d"
CONFIG_NAME="init.el"
PREVIOUS_CONFIG_NAME="init_backup.el"

ls ~/ | grep $CONFIG_FOLDER_NAME

if [ "$?" != "0" ]; then
    echo "Creating folder."
    mkdir ~/$CONFIG_FOLDER_NAME
fi

ls ~/$CONFIG_FOLDER_NAME | grep $CONFIG_NAME

if [ "$?" != "0"]; then
    echo "Previous config will be saved as $PREVIOUS_CONFIG_NAME."
    mv ~/$CONFIG_FOLDER_NAME/$CONFIG_NAME ~/$CONFIG_FOLDER_NAME/$PREVOIUS_CONFIG_NAME 
fi

cp ./$CONFIG_NAME ~/$CONFIG_FOLDER_NAME/

#Copy dependencies
DP_FOLDER_NAME="emacs_dependencies"

ls ~/$DP_FOLDER_NAME | grep $DP_FOLDER_NAME

if [ "$?" != "0" ]; then
    echo "Creating dependencies folder"
    mkdir ~/$CONFIG_FOLDER_NAME/$DP_FOLDER_NAME
fi

cp -rf ./$CONFIG_FOLDER_NAME/* ~/$CONFIG_FOLDER_NAME/$DP_FOLDER_NAME
