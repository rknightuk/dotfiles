export LIBRARY="$HOME/Library"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;"
alias st="networkQuality -v"

function site() {
    if [ $# -eq 0 ]; then
        cd /Users/robb/Sites/personal/$(ls -1 "/Users/robb/Sites/personal" | pick)
    else
        cd /Users/robb/Sites/personal/"$@"
    fi
}
