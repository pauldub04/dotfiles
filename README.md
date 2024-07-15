# dotfiles

```bash
git clone https://github.com/pauldub04/dotfiles/
cd dotfiles
git submodule update --init --recursive
```

## terminal
1) install [alacritty](https://github.com/alacritty/alacritty)

## shell
1) install and active zsh
2) install [oh my zsh](https://ohmyz.sh/)
3) install [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## tmux
1) install [tmux](https://github.com/tmux/tmux)
2) install some [nerd font](https://www.nerdfonts.com/font-downloads) like JetBrains Nerd for catppuccin

## vim
1) install vim and nvim

## gdb
1) install gdb


here .git, gitmodules and README are ignored by stow, but .gitconfig is my actual config
1) install [gnu stow](https://www.gnu.org/software/stow/)
2) create links to ~
```bash
sudo stow . --adopt
```
