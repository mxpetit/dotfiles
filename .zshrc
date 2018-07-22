export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export EDITOR='vim'

export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/snap/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/games
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/games
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/sbin

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Load aliases
if [ -f $HOME/.functions ]; then
    . $HOME/.functions
fi
