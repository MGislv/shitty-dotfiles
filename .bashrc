alias ls='ls --color=auto'
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
alias gc='gcc -lm -O2 -g -Wall -Wextra'
alias g+='g++ -lm -O2 -g -Wall -Wextra'
alias noscreenblanking='xset s off -dpms'
alias youlistformat='youtube-dl --list-formats'
alias gpgsim='gpg -c --no-symkey-cache --cipher-algo AES256 --digest-algo SHA512'

# Just in case
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias untar='tar -xvf'
# tar.xz ultra compression [tarxzu 'archive.tar.xz' file1 file2 file3...]
alias tarxzu="tar --owner=root --group=root --use-compress-program='xz -9eT0' -cvf"
# tar.lz ultra compression [tarlzu 'archive.tar.lz' file1 file2 file3...]
alias tarlzu='tarlz --anonymous -9vcf'

# Arch only
alias upd='sudo pacman -Syu'
# Generate mirrorlist (requires 'reflector')
alias updm='sudo reflector --ipv4 --latest 40 --sort rate --save /etc/pacman.d/mirrorlist'
# Clear packages cache & remove orphans (requires 'pacman-contrib')
# alias clpkc='paccache -ruk0 && pacman -Qtdq | sudo pacman -Rns -'

#PS1=' \W \$ '
#PS1=" \[\033[36m\]\W \[\033[32m\]\$ \[\033[37m\]"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
