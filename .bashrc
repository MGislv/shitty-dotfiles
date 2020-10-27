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
alias gcc='gcc -lm -Wall -Wextra'

# Arch only
# Clear packages cache & remove orphans
alias clpkc='paccache -rk1 && paccache -ruk0 && sudo pacman -Qtdq | sudo pacman -Rns -'

#PS1=' \W \$ '
PS1=" \[\033[36m\]\W \[\033[32m\]\$ \[\033[37m\]"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
