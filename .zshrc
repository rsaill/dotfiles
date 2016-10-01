# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nanor/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=$HOME/bin:$PATH
export EDITOR=vim

# Alias Perso
alias mp='mplayer -fs -subfont-text-scale 2'
alias gg='git status'
alias l='ls --color --group-directories-first -lh'
alias ll='ls --color --group-directories-first -lh'
alias la='ls --color --group-directories-first -lhA'
alias aa=alsamixer

# Prompt avec statut Git
source ~/repos/zsh-git-prompt/zshrc.sh
PROMPT='%B[%1~]%b$(git_super_status) '

# Syntax Hightlight
source ~/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' menu select

# OPAM configuration
. /home/nanor/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
