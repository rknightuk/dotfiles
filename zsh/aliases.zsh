alias reload='. ~/.zshrc'

# open in sublime
alias s='sublime'
alias s.='sublime .'

# open in sublime
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

# youtube downloading
alias ytvid='youtube-dl -f bestvideo+bestaudio'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'

# generate uuid
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]' | pbcopy && pbpaste && echo"

