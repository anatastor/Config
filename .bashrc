#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi # enable vi-mode in bash

alias ls='ls --color=auto'
alias mount='mount -o gid=users,fmask=113,dmask=002'
alias wine32='WINEARCH=win32 WINEPREFIX=~/win32 wine'

#PS1='[\u@\h \W]\$ '
PS1='\[\033[32m\]\t \[\033[94m\]\u\[\033[0m\]@\[\033[31m\]\H\[\033[32m\] [\w] \n\[\033[0m\]$ '
