if [ -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi

ln -sf ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -sf ~/dotfiles/zshrc/.zsh_profile ~/.zsh_profile
ln -sf ~/dotfiles/vimrc/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/tmuxconf/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.xprofile ~/.xprofile
ln -sf ~/dotfiles/vimrc/.ideavimrc ~/.ideavimrc
ln -sf ~/dotfiles/vimrc/lua ~/.config/nvim/lua
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/i3status ~/.config/i3status

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
