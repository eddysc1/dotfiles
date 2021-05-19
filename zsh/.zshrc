export ZSH='/home/eddysc/.oh-my-zsh'
ZSH_THEME='robbyrussell'
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias vim='nvim'
