# Uses git's auto-completion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
hub_completion='$(brew --prefix)/share/zsh/site-functions/_hub'
git_completion='$(brew --prefix)/share/zsh/site-functions/_git'

if test -f $hub_completion
then
  source $hub_completion
fi

if test -f $git_completion
then
  source $git_completion
fi