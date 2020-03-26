#!/bin/bash
cd

# シンボリックリンク
# -------------------------------------------------
# zsh用設定
ln ~/dotfiles/zshrc/.zsh_history ~/.zsh-history
ln ~/dotfiles/zshrc/.zhistory ~/.zhistory
ln ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln ~/dotfiles/zshrc/.zcompdump.zwc ~/.zcompdump.zwc

# vim用設定
ln ~/dotfiles/vimrc/.vimrc ~/.vimrc

if [ ! -d ~/.cache ]; then
  mkdir ~/.cache
fi
if [ ! -d ~/.fonts ]; then
  mkdir ~/.fonts
fi
if [ ! -d ~/wallpaper ]; then
  mkdir ~/wallpaper
fi
# tmux用設定
ln ~/dotfiles/tmuxconf/.tmux.conf ~/.tmux.conf
# -------------------------------------------------
# コマンドインスコ
# -------------------------------------------------
sudo add-apt-repository ppa:noobslab/macbuntu

sudo update
sudo upgrade

sudo apt install vim zsh tmux python3-pip git chromium-browser\
gnome-tweak-tool curl unzip\
-y

sudo apt install macbuntu-os-icons-v1804 macbuntu-os-themes-v1804\
macbuntu-os-plank-theme-v1804 -y

# -------------------------------------------------
# ゴミ箱
# -------------------------------------------------
gsettings set org.gnome.nautilus.desktop trash-icon-visible false

# -------------------------------------------------
# python3のモジュールインスコ
# -------------------------------------------------
pip3 install pynvim neovim

pip3 install --user powerline-status

#--------------------------------------------------
# pyenv
#--------------------------------------------------
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# -------------------------------------------------
# powerline
# -------------------------------------------------
git clone https://github.com/mzyy94/RictyDiminished-for-Powerline.git
sudo cp -r ~/RictyDiminished-for-Powerline /usr/share/fonts/truetype
fc-cache -vf
cp -r ~/RictyDiminished-for-Powerline ~/.fonts
fc-cache -vf ~/.fonts/

# dockを非表示に
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false && gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false && gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

# zshをデフォルトコンソールに
chsh -s $(which zsh)

# 壁紙を~/wallpaperに作りまくる
cd ~/wallpaper
FILE_ID = "1HXArRiCCkjLYx9AUWE2zJCj67Mi_xBIJ"
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${FILE_ID}" > cache
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=${FILE_ID}" -o hibiki.zip
rm cache
unzip hibiki.zip
rm hibiki.zip
cd

# Node.jsインストール
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install 12.16.1
nvm use 12.16.1
npm install -G yarn

echo Please restart terminal
