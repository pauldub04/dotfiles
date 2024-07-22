# dotfiles

```bash
git clone https://github.com/pauldub04/dotfiles/
cd dotfiles
git submodule update --init --recursive
```

## terminal
1) install [alacritty](https://github.com/alacritty/alacritty) (version >= 0.13.0 because need .toml config)
2) install some [nerd font](https://www.nerdfonts.com/font-downloads) like JetBrains Nerd for using themes

## shell
1) install and active zsh
2) install [oh my zsh](https://ohmyz.sh/)
3) install [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## tmux
1) install [tmux](https://github.com/tmux/tmux)
2) install [tpm](https://github.com/tmux-plugins/tpm)
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
   ```

## rest
2) install vim and nvim
3) install gdb

## stow
1) install [gnu stow](https://www.gnu.org/software/stow/)
2) create links to ~
```bash
# add links
stow -R -v -t ~ .
# remove links
stow -D -v -t ~ .
```
here .git, gitmodules and README are ignored by stow, but .gitconfig is my actual config

## after stow
1) load tmux conf
```bash
tmux source-file ~/.config/tmux/tmux.conf
tmux
# prefix + I to install tpm plugins
```
2) 
