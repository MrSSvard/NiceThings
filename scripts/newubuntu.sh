#!/bin/bash

VERSION="bionic"

echo $VERSION

read -p "Are you sure you want to install for this version? y/n:" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi
# Install packages

sudo apt-get install gnome-shell-pomodoro