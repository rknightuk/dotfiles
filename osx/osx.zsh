export LIBRARY="$HOME/Library"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;"
alias st="networkQuality -v"

function site() {
    if [ $# -eq 0 ]; then
        cd ~/Sites/personal/$(ls -1 "~/Sites/personal" | pick)
    else
        cd ~/Sites/personal/"$@"
    fi
}
