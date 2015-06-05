#!/bin/bash

help() {
    echo "Usage:"
    echo "hide_adobe.sh { hide | show }"
}

adobe_hidden(){
    sudo chflags $1hidden /Applications/Adobe 
    sudo chflags $1hidden /Applications/Adobe\ CS6 
    sudo chflags $1hidden /Applications/Adobe\ Photoshop\ CC\ 2014 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ AIR\ Application\ Installer.app 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ AIR\ Uninstaller.app 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ Application\ Manager 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ Installers 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ Flash\ Player\ Install\ Manager.app 
    sudo chflags $1hidden /Applications/Utilities/Adobe\ Utilities-CS6.localized 
}

case "$1" in
    hide)
        adobe_hidden
        ;;
    show)
        adobe_hidden no
        ;;
    *)
        help
        ;;
esac
