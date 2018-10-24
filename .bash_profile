# Change Prompt
export PS1="[\t] \[\033[38;5;40m\]\u:\[\033[33;1m\]\W\[\033[m\]\$ "
export TERM="xterm-256color"


# Add Colour to terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias em='emacs'
alias python='python3'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
