# git aliases
alias gdf='git diff --find-renames'
alias gt='git status'
alias ga='git add'
alias gd='git diff'
alias gdc='git diff --cached'

# recursive grep excluding non-source directories
alias grx='grep -nr --exclude-dir=vendor --exclude-dir=.git'
# ls as a tree, excluding non-source directories
alias tre='tree -R -aI "vendor|.git|.github|node_modules" $1'
alias sbrc='source $HOME/.bashrc'

alias dexit='docker exec -it'
# removes all exited containers
alias drm='docker rm $(docker ps -aq -f status=exited)'
# removes all untagged images
alias drmi='docker rmi $(docker images --filter "dangling=true" -q)'
alias drmv='docker volume prune -f'
alias dps='docker ps'
alias dexit='docker exec -it'

alias vim='nvim'
