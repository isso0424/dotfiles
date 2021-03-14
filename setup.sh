if [ -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi

ln -sf ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zshrc/.zsh_profile ~/.zsh_profile
ln -sf ~/dotfiles/vimrc/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/tmuxconf/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.xprofile ~/.xprofile
ln -sf ~/dotfiles/tigrc/.tigrc ~/.tigrc

sudo chmod 777 ~/dotfiles/proxy/* ~/dotfiles/commands/*

