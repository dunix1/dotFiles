# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/.node_modules_global/bin:$PATH
 export PATH=$HOME/bin:/usr/local/bin:$PATH
 export PATH=/var/lib/flatpak/exports/bin:$PATH
 export GOPATH=$HOME/code/go
 export PATH=$GOPATH:$PATH

# Snaps
 export PATH=/var/lib/snapd/snap/bin:$PATH

# NPM
 NPM_PACKAGES="${HOME}/.npm-packages"

 export PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
 unset MANPATH # delete if you already modified MANPATH elsewhere in your config
 export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"
  export TERM="xterm-256color"

  export EDITOR="/usr/bin/nvim"

  setxkbmap -option caps:escape

plugins=(
  git
  docker
  sudo
  dnf
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
