#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias clo='clear'
alias ..='cd ..'
alias mpv-a='mpv --no-video --alsa-resample=yes --hwdec=auto'
alias cdparanoia='cdparanoia -BzX'
alias vim='nvim'
alias scrot='scrot -q 100'

PS1=' \W \$ '
