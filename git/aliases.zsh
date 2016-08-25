# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl="git log --oneline --decorate --graph --date=relative"
alias gp='git push origin HEAD'
alias gc='git commit'
alias gb='git branch --all -vv'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias ga='git add --all'
alias gd='git diff --staged'
