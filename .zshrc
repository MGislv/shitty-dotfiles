# Autocompletion
autoload -Uz compinit promptinit
compinit
zmodload zsh/complist
promptinit
# Include hidden files
_comp_options+=(globdots)

setopt COMPLETE_ALIASES
setopt autocd

# Autocompletion cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.cache/zsh"

# Double TAB arrow-key driven selection
zstyle ':completion:*' menu select

# Ignore completion functions for unavailable commands
zstyle ':completion:*:functions' ignored-patterns '_*'

# Remove trailing directory slash
zstyle ':completion:*' squeeze-slashes true

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# History
HISTFILE="$HOME/.zsh/history"
HISTSIZE=10000000
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# Prompt theme
PROMPT='%F{#bf616a}[%f%F{#ebcb8b}%n%f%F{#8fbcbb}@%F{#81a1c1}%m%f %F{#d08770}%B%~%b%f%F{#bf616a}]%f$ '

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Bindings
bindkey -e
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Aliases
alias ls='ls -A --color=auto'
alias la='ls -Ahl --color=auto'
alias l='ls -hl --color=auto'
alias grep='grep --color=auto'
alias vim=nvim
alias vi=nvim
alias cat='bat -p'
alias cx=clear
alias mpv-a='mpv --no-video'

#  just in case
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#  tar stuff
alias untar='tar -xvf'
alias tarxzu="tar --owner=root --group=root --use-compress-program='xz -9eT0' -cvf"
alias tarlzu='tarlz --anonymous -9vcf'

alias gpgsim='gpg -c --no-symkey-cache --cipher-algo AES256 --digest-algo SHA512'
alias updm='sudo reflector --ipv4 --latest 40 --sort rate --save /etc/pacman.d/mirrorlist'
alias clpkc='paccache -rk1 && paccache -ruk0 && pacman -Qtdq | sudo pacman -Rns -'
alias noscreenblanking='xset s off -dpms'
alias youlistformat='youtube-dl --list-formats'
alias gc='gcc -lm -O2 -g -Wall -Wextra'
alias g+='gcc -lm -O2 -g -Wall -Wextra'
alias redscreen='redshift -P -O 4000'
alias updchroot='arch-nspawn $CHROOT/root pacman -Syu'
alias chrooted='CHROOT=$HOME/chroot'

# export
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
PATH=/home/gabriele/additional_path/:$PATH
