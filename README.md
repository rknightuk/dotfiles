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

## Credits

Forked from [holman/dotfiles][fork]
Cobalt2 theme from [wesbos/Cobalt2-iterm][theme]

## License

MIT. See [LICENSE][license] file for more info.

[fork]: https://github.com/holman/dotfiles
[theme]: https://github.com/wesbos/Cobalt2-iterm
[license]: LICENSE
