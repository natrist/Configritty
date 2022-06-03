#!/bin/sh

CreateDirectory() {
    echo "Creating directory $1"
    mkdir -p $1
}

CopyFile() {
    [ -d $2 ] || CreateDirectory $2
    echo "Copying file $1..."
    cp $1 $2
}

Success() {
    echo "Configritty successfully updated your configuration files."
}

CopyFile alacritty.yml ~/.config/alacritty/
Success
