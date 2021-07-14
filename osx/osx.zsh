export LIBRARY="$HOME/Library"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;"
alias kill3k="kill -9 $(sudo lsof -t -i:3000)"
