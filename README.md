# Dotfiles

## Install

```
git clone --recursive git@github.com:iWader/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

Periodically run `dot`, this will keep your environment updated. You can find the file at `bin/dot`.

## iTerm2 Settings

1. Preferences > Profiles
2. Under the *Colors* tab *Load Presets* using `~/.dotfiles/iterm2/cobalt2.itermcolors`
3. Under the *Text* tab change the font for each type (*Regular* and *Non-ASCII*) to '**Inconsolata for Powerline**' found under `~/.dotfiles/fonts`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Credits

- Originally forked from [holman/dotfiles][fork]
- Cobalt2 (iTerm) [wesbos/Cobalt2-iterm][iterm-theme]
- powerlevel9k (ZSH) [bhilburn/powerlevel9k][zsh-theme]
- Completion [zsh-users/zsh-completions][zsh-completions]
- Powerline Fonts [powerline/fonts][powerline]
- Awesome Terminal Fonts [gabrielelana/awesome-terminal-fonts][awesome-terminal-fonts]

## License

MIT. See [LICENSE][license] file for more info.

[fork]: https://github.com/holman/dotfiles
[iterm-theme]: https://github.com/wesbos/Cobalt2-iterm
[zsh-theme]: https://github.com/bhilburn/powerlevel9k
[zsh-completions]: https://github.com/zsh-users/zsh-completions
[powerline]: https://github.com/powerline/fonts
[awesome-terminal-fonts]: https://github.com/gabrielelana/awesome-terminal-fonts
[license]: LICENSE.md
