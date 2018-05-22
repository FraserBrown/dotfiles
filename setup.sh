#!/bin/bash

OPTIND=1         # Reset in case getopts has been used previously in the shell.

INSTALL_DIR='~/'
verbose=0


# Help Display
function help_display() {
    echo -e "Linux System config setup script: \n\
            This scipt is intended to quickly setup a linux environment \
            by copying my preffered config files into the desired location.\n"
    echo -e "command options: \n\
            -v: vim setup \n\
            -e: emacs setup \n\
            -d  destination dir (install directory)\n\
            -V  verbose mode\
            \n "
}

# basic vim setup
function vim_setup() {
    $(cp -R .vim/ ${INSTALL_DIR})
    $(cp .vimrc ${INSTALL_DIR})
}

# basic emacs setup
function emacs_setup() {
    $(cp -R .emacs.d/ ${INSTALL_DIR})
    $(cp .emacs ${INSTALL_DIR})
}


while getopts "vedVh:" opt; do
    case "${opt}" in
        v)
            echo "Strating Vim Setup" >&2
            ;;
        e)
            echo "Starting Emacs Setup" >&2
            ;;
        d)
            INSTALL_DIR=${OPTARG}
            ;;
        V)
            verbose=1
            ;;
        h)
            help_display # call help function
            echo "invalide option -${OPTARG}" >&2
            ;;
        :)
            echo "Option -${OPTARG} requires an argument." >&2
            ;;
    esac
done



