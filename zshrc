# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH
export PATH=$HOME/.node_modules_global/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export GOPATH=$HOME/code/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$PATH
# export GO111MODULE=on

# Snaps
export PATH=/var/lib/snapd/snap/bin:$PATH

# Flatpak
export PATH=/var/lib/flatpak/exports/share:$PATH
export PATH=$HOME/.local/share/flatpak/exports/share:$PATH

# Cargo
export PATH=$HOME/.cargo/bin:$PATH

# NPM
NPM_PACKAGES=$HOME/.npm-packages

export PATH="$NPM_PACKAGES/bin:$PATH"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

export EDITOR="/usr/bin/nvim"

setxkbmap -option caps:escape

ZSH_THEME=powerlevel10k/powerlevel10k

plugins=(
  docker
  docker-compose
  dnf
  git
  heroku
  nmap
  node
  npm
  pyenv
  tmux
  sudo
  virtualenvwrapper
  yarn
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . $NPM_PACKAGES/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# colorls
alias ls="colorls"
alias ll="colorls -lA --sd"

# docker
alias docstopall="docker stop \$(docker ps -q)"
alias docrmall="docker rm \$(docker ps -a -q)"
alias doc="docker-compose"
alias docu="docker-compose up -d"

#python
alias py="python3"

#Edit configs
alias zshconfig="vim $HOME/.zshrc"
alias vimconfig="vim $HOME/.config/nvim/init.vim"

alias tmux="tmux -f $HOME/.tmux.conf"

# SSH Aliases
. $HOME/.zsh_ssh.zsh
