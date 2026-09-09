# Dotfiles

Personal configuration managed with [GNU Stow](https://www.gnu.org/software/stow/).
Each top-level directory is a Stow package whose contents mirror paths under
the home directory.

## Packages

- `bash` manages `~/.bashrc`
- `zsh` manages `~/.zshrc`
- `tmux` manages `~/.tmux.conf` and `~/.tmux.reset.conf`
- `nvim` manages `~/.config/nvim`
- `vscode` manages VS Code's `settings.json` and `keybindings.json`

## Install on another machine

Clone this repository into `~/dotfiles`, then run:

```sh
cd ~/dotfiles
stow --target="$HOME" bash zsh tmux nvim vscode
```

If a destination file already exists, back it up or compare it before removing
it. Stow will not overwrite a regular file by default.

## Remove symlinks

```sh
cd ~/dotfiles
stow --delete --target="$HOME" bash zsh tmux nvim vscode
```
