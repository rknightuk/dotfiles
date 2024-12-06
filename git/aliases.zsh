alias g="git status -sb"
alias gb="git branch"

function gco() {
    if [ $# -eq 0 ]; then
        git checkout $(git branch | pick)
    else
        git checkout "$@"
    fi
}

function gdb() {
    if [ $# -eq 0 ]; then
        git branch -d $(git branch | pick)
    else
        git branch -d "$@"
    fi
}

alias ga="git add"
alias gaa="git add -A"
alias gap="git add -p"
alias gc="git commit -v"
alias grh='git reset --hard'
alias grb='git rebase --rebase-merges'
alias gps='git push origin HEAD:$(git_current_branch)'
alias gup='git fetch origin && grb origin/$(git_current_branch);afplay /Users/robb/.dotfiles/sounds/slurp.mp3' # gup instead of gpl
alias gds='git diff | subl -n'
alias gdcs='git diff --cached | subl -n'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl="git log --graph --pretty=format':%C(red)%h%Cgreen%d%Creset %s %C(blue) %an, %ar%Creset'"
alias glo="git log --oneline"
alias grv="git remote -v"
alias gstats="git shortlog -sn"

function git_current_branch() {
    git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
}

function gpr() {
    org_repo=$(git remote get-url origin)
    org_repo=$(echo $org_repo | cut -d':' -f2)
    org_repo=${org_repo/.git/''}
    open "https://github.com/${org_repo}/compare/$(git_current_branch)?expand=1"
}