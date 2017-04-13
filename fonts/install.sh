#!/bin/bash

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
  mkdir -p $font_dir
fi

copy_fonts () {
  local find_command="find \"$1\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

  echo "Installing fonts from $1"

  eval $find_command | xargs -0 -I % cp "%" "$font_dir/"
}

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

copy_fonts "$current_dir/powerline"
copy_fonts "$current_dir/awesome-terminal-fonts/fonts"

# Reset font cache on Linux
if command -v fc-cache @>/dev/null ; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f $font_dir
fi

echo "All fonts installed to $font_dir"
