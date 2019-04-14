# Removes all exited containers
alias drm='docker rm $(docker ps -aq -f status=exited)'

# Removes all untagged images
alias drmi='docker rmi $(docker images --filter "dangling=true" -q)'

# git aliases
alias gdf='git diff --find-renames'
alias gs='git status'

# recursive grep excluding non-source directories
alias grx='grep -nr --exclude-dir=vendor/ --exclude-dir=.git/'
