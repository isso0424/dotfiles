if [ -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi

ln -f ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -f ~/dotfiles/zshrc/.zsh_profile ~/.zsh_profile
ln -f ~/dotfiles/vimrc/init.vim ~/.config/nvim/init.vim
ln -f ~/dotfiles/vimrc/coc-settings.json ~/.config/nvim/coc-settings.json
ln -f ~/dotfiles/tmuxconf/.tmux.conf ~/.tmux.conf
ln -f ~/dotfiles/.xprofile ~/.xprofile

sudo chmod 777 ~/dotfiles/proxy/* ~/dotfiles/commands/*

