export LIBRARY="$HOME/Library"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say cache flushed"
