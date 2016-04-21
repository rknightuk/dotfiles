#!/bin/sh
#
# Homebrew
#
# This cleans up behind brew by removing old packages
#

# Check for Homebrew
if test $(which brew)
then
  echo "  Cleaning up behind brew"

  brew cleanup -s
fi

exit 0
