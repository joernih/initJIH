#!/bin/bash

source "~/.environJIH.sh"
# Github configurations
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global core.editor $EDITOR
git config --global credential.helper $TIMEOUT
git config --list


