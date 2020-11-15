#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -A --color=auto'
alias lsh='ls -Ahl --color=auto'
alias grep='grep --color=auto'
alias clo='clear'
alias cx='clear'
alias ..='cd ..'
alias mpv-a='mpv --no-video --alsa-resample=yes --hwdec=auto'
alias cdparanoia='cdparanoia -BzX'
alias vim='nvim'
alias scrot='scrot -q 100'
alias gcc='gcc -lm -Wall -Wextra'

# Just in case
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# tar.xz ultra compression [tarxzu 'archive.tar.xz' file1 file2 file3..]
alias tarxzu="tar --use-compress-program='xz -9e -T0' -cvf"

# Arch only
alias upd='sudo pacman -Syu'
alias updm='sudo reflector --latest 100 --sort rate --save /etc/pacman.d/mirrorlist'
# Clear packages cache & remove orphans (requires 'pacman-contrib')
alias clpkc='paccache -rk1 && paccache -ruk0 && sudo pacman -Qtdq | sudo pacman -Rns -'

#PS1=' \W \$ '
PS1=" \[\033[36m\]\W \[\033[32m\]\$ \[\033[37m\]"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
