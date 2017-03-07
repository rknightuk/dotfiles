alias dbd="./devbuild && ./deploy"

# Git
alias gup='git fetch origin && grb origin/$(git_current_branch)' # gup instead of gpl
alias grb='git rebase -p'

# Tail Today's FuelPHP App Log
function fuellog() {
    base="fuel/app/logs/"`eval date +%Y`"/"`eval date +%m`"/"`eval date +%d`".php"
    if [ $# -eq 0 ]; then
        tail -f $base
    else
        search="> $@"
        tail -f $base | grep --line-buffered "$search"
    fi
}