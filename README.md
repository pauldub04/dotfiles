# dotfiles
```bash
git clone https://github.com/pauldub04/dotfiles/ ~/dotfiles
```

## installing everything
for ubuntu/debian
```bash
sudo apt install tmux vim neovim git xclip stow
```

## preraring

### terminal
1) install [alacritty](https://github.com/alacritty/alacritty) \
   version >= 0.13.0 because we need .toml config
   - it can be built from sources
   - or through ppa `sudo add-apt-repository ppa:aslatter/ppa -y` 
   
3) install [alacritty themes](https://github.com/alacritty/alacritty-theme)

   ```bash
   mkdir -p ~/.config/alacritty/themes
   git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
   ```
4) install some [nerd font](https://www.nerdfonts.com/font-downloads) like JetBrains Nerd

### zsh
1) install and activate [zsh](https://www.zsh.org/) \
   do not forget that logout or reboot is needed after changing shell
3) install [oh my zsh](https://ohmyz.sh/)
4) install plugins and themes

   ```bash
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
   git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM}/plugins/zsh-vi-mode
   git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
   
   # for arc
   git clone https://github.com/mafredri/zsh-async ${ZSH_CUSTOM}/plugins/async

   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k
   ```
   I dont use any plugin managers right now and dont want to make plugins as submodules. If any other plugins will appear in `.zshrc`, oh-my-zsh will tell me to download them manually

### tmux
1) install [tmux](https://github.com/tmux/tmux)
2) install [tpm](https://github.com/tmux-plugins/tpm)

   ```bash
   mkdir -p ~/.config/tmux/plugins
   git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
   ```

### rest
2) install vim and nvim
3) install gdb

## stow
1) install [gnu stow](https://www.gnu.org/software/stow/)
2) create links to ~

   ```bash
   cd dotfiles
   # --adopt will replace existing files with links to dotfiles, create backups if needed
   stow --adopt --verbose --target ~ common ya
   # -R to restow
   stow -R --verbose --target ~ common ya
   # -D to delete links
   stow -D --verbose --target ~ common ya
   ```
   here `.git` and `README.md` are ignored by stow, but `.gitconfig` is my actual config
3) some files might have changed because of `--adopt` leading to overwriting configs. to fix it run

   ```bash
   git restore .
   ```

## after stow

### terminal and zsh
just reopen terminal to make changes work

### tmux
1) load tmux conf

   ```bash
   tmux
   # to use config
   tmux source-file ~/.config/tmux/tmux.conf
   # prefix + I to install tpm plugins
   ```

### git
Now I am using git over ssh instead of login+password. Keys are generated with `ssh-keygen` and [ssh-agent](https://wiki.archlinux.org/title/SSH_keys#ssh-agent) is my agent.

I am starting it with systemd with `systemctl --user enable --now ssh-agent` without any additional configs. And changing `$SSH_AUTH_SOCK` variable (already done in `.zshrc`). Then keys are added to agent with `ssh-add` and published to github account seetings.

Links about ssh and git:
- https://wiki.archlinux.org/title/SSH_keys
- https://bbs.archlinux.org/viewtopic.php?pid=2022565#p2022565
- https://github.com/White-Oak/arch-setup-for-dummies/blob/master/setting-up-ssh-agent.md

To test connection to github:
```bash
ssh -T git@github.com
```
