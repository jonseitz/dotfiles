# My dotfiles

Setup for this repo is based on the method described in [The best way to store your dotfiles][1].

## Initial Setup

```sh
git clone --bare git@github.com:jonseitz/dotfiles $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

You may need to delete any existing files that would be overwritten.

The `.bash_aliases` creates a `config` command aliased to 

```sh
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME
```

## Additional Dependencies 

I'm using a couple drop-in replacements for standard commands:

- `neomutt` for `mutt`
- `neovim` for `vim`
  - with `neovim-drop-in` from the AUR
- `exa` for `ls`

## Submodules

Vim and AUR packages are included as submodules. Once you've finished setup, run `config submodule init` to clone the correct packages. AUR packages can then be installed as usual.

[1]: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
