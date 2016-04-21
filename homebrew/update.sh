#!/bin/sh
#
# Homebrew
#
# This updates some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test $(which brew)
then
  echo "  Updating Homebrew for you."

  brew update
fi

exit 0
