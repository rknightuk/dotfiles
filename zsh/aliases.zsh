alias reload='. ~/.zshrc'

# open in sublime
alias s='subl'
alias s.='subl .'

# open in vscode
alias c='code'
alias c.='code .'

# zsh plugin jump
alias j='jump'

# mkdir and cd into it
function tk() { mkdir $1; cd $1; }

# Improved listing
alias ls="ls -F"
alias l="ls"
alias la="ls -AF"
alias a="la"
alias lo="ls -AF1"
alias ll="ls -AFhl"

# directory browsing
alias ..="cd .."
alias ...="cd ../.."
alias bk="cd -"
alias hm="cd ~"

# generate uuid
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"

alias att="atuin"
