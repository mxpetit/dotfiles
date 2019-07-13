# git aliases
alias gdf='git diff --find-renames'
alias gs='git status'

# miscellaneous aliases

# recursive grep excluding non-source directories
alias grx='grep -nr --exclude-dir=vendor --exclude-dir=.git'
# ls as a tree, excluding non-source directories
alias tre='tree -R -aI "vendor|.git|.github|node_modules" $1'
# shortcut for pretty printing json
alias pp='python -m json.tool'
# shortcut for sourcing .bashrc
alias sbashrc='source $HOME/.bashrc'

# docker aliases

# removes all exited containers
alias drm='docker rm $(docker ps -aq -f status=exited)'
# removes all untagged images
alias drmi='docker rmi $(docker images --filter "dangling=true" -q)'
# shortcut for docker volume prune
alias drmv='docker volume prune -f'
# shortcut for docker ps
alias dps='docker ps'
# shortcut for docker exec -it
alias deit='docker exec -it'
# start a postgresql 9.6 container in the background, named pg96
alias dpg96='docker run -d --name pg96 -p 5432:5432 postgres:9.6'
# stop and rm the container named pg96
alias dpg96s='docker stop pg96 --time 1 && docker rm pg96'
