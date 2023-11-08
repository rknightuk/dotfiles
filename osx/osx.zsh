export LIBRARY="$HOME/Library"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;"
alias st="networkQuality -v"

function site() {
    if [ $# -eq 0 ]; then
        cd /Users/robb/Developer/personal/$(ls -1 "/Users/robb/Developer/personal" | pick)
    else
        cd /Users/robb/Developer/personal/"$@"
    fi
}

function labs() {
    if [ $# -eq 0 ]; then
        cd /Users/robb/Developer/labs/$(ls -1 "/Users/robb/Developer/labs" | pick)
    else
        cd /Users/robb/Developer/labs/"$@"
    fi
}

function archive() {
    if [ $# -eq 0 ]; then
        cd /Users/robb/Developer/archive/$(ls -1 "/Users/robb/Developer/archive" | pick)
    else
        cd /Users/robb/Developer/archive/"$@"
    fi
}

function work() {
    if [ $# -eq 0 ]; then
        cd /Users/robb/Developer/work/$(ls -1 "/Users/robb/Developer/work" | pick)
    else
        cd /Users/robb/Developer/work/"$@"
    fi
}

alias ms="maestral"