alias la='ls -A --color=auto'
alias l='ls -Ahl --color=auto'
alias grep='grep --color=auto'
alias cx='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias mpv-a='mpv --no-video'
alias cdparanoia='cdparanoia -BzX'
alias vim=nvim
alias vi=nvim
alias scrot='scrot -q 100'
alias gc='gcc -lm -O2 -Wall -Wextra'
alias g+='g++ -lm -O2 -Wall -Wextra'
alias noscreenblanking='xset s off -dpms'
alias youlistformat='youtube-dl --list-formats'

# Just in case
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# tar.xz ultra compression [tarxzu 'archive.tar.xz' file1 file2 file3..]
alias tarxzu="tar --use-compress-program='xz -9e -T0' -cvf"

# Arch only
alias upd='sudo pacman -Syu'
# Generate mirrorlist (requires 'reflector')
alias updm='sudo reflector --latest 100 --sort rate --save /etc/pacman.d/mirrorlist'
# Clear packages cache & remove orphans (requires 'pacman-contrib')
# alias clpkc='paccache -rk1 && paccache -ruk0 && sudo pacman -Qtdq | sudo pacman -Rns -'

#PS1=' \W \$ '
#PS1=" \[\033[36m\]\W \[\033[32m\]\$ \[\033[37m\]"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
