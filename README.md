# dotfiles
```bash
git clone https://github.com/pauldub04/dotfiles/
```

## before stow

#### terminal
1) install [alacritty](https://github.com/alacritty/alacritty) (version >= 0.13.0 because need .toml config)
2) install [alacritty themes](https://github.com/alacritty/alacritty-theme)

   ```bash
   mkdir -p ~/.config/alacritty/themes
   git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
   ```
3) install some [nerd font](https://www.nerdfonts.com/font-downloads) like JetBrains Nerd for using themes

#### zsh
1) install and active [zsh](https://www.zsh.org/)
2) install [oh my zsh](https://ohmyz.sh/)
3) install plugins and themes

   ```bash
   git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
   git clone https://github.com/jeffreytse/zsh-vi-mode ~/.oh-my-zsh/plugins/zsh-vi-mode
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
   ```
   I dont use any plugin managers right now, and dont want to make plugins as submodules because its seems kinda messy. If any other plugins will appear in .zshrc, oh-my-zsh will tell me to download them manually

#### tmux
1) install [tmux](https://github.com/tmux/tmux)
2) install [tpm](https://github.com/tmux-plugins/tpm)
   
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
   ```

#### rest
2) install vim and nvim
3) install gdb

## stow
1) install [gnu stow](https://www.gnu.org/software/stow/)
2) create links to ~

   ```bash
   cd dotfiles
   stow --adopt -v -t ~ .
   # --adopt will replace existing files with links to dotfiles, create backups them if needed
   # -R to restow
   # -D to delete links
   ```
   here .git and README are ignored by stow, but .gitconfig is my actual config
3) some files might have changed because of `--adopt` leading to overwriting configs. to fix it run

   ```bash
   git restore .
   ```

## after stow

#### terminal and zsh
just reopen terminal to make changes work

#### tmux
1) load tmux conf

   ```bash
   tmux
   tmux source-file ~/.config/tmux/tmux.conf
   # prefix + I to install tpm plugins
   ```
2) copy theme to catppuccine

   ```bash
   cp other/catppuccin_dracula.tmuxtheme ~/.config/tmux/plugins/tmux/themes/
   ```
3) again load tmux conf
