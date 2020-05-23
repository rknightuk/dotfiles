# Dotfiles

## Install

```
git clone --recursive git@github.com:rknightuk/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

Periodically run `dot`, this will keep your environment updated. You can find the file at `bin/dot`.

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

## brewfile

Uses [Cask](https://github.com/Homebrew/homebrew-cask) and [https://github.com/mas-cli/mas](https://github.com/mas-cli/mas) to install apps

## Credits

- Originally forked from [holman/dotfiles][fork]
- Completion [zsh-users/zsh-completions][zsh-completions]

## License

MIT. See [LICENSE][license] file for more info.

[fork]: https://github.com/holman/dotfiles
[zsh-completions]: https://github.com/zsh-users/zsh-completions
[license]: LICENSE.md
