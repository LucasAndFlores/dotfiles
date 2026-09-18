# dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

Stow everything except tmux:

```sh
stow -R .
```

Stow tmux and starship (targets home directory):

```sh
stow -R --target=~ tmux
```

```sh
stow --target=~/.config/ starship
```
