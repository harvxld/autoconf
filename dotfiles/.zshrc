# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/harvald/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# PATH Environment Variables
export PATH=$PATH:/home/harvald/.local/bin

## ALIASES ###
## System ##

alias search="sudo pacman -Ss"
alias ls="ls -la --color"
alias grep="grep --color"
alias whoami="whoami && curl 4.ident.me && curl ident.me"
alias sshkey="cat ~/.ssh/id_rsa.pub | wl-copy && wl-paste"
alias untar="tar -xzvf"

alias n="nano"
alias htop="btop"

alias cp="cp -i"
alias mv="mv -i"
alias df="df -H"
alias ping="prettyping --nolegend"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

## Network ##

alias sshnas="ssh devinci@192.168.1.26 -p 2212"

eval "$(starship init zsh)"
