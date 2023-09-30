#!/usr/bin/zsh

file_name="$HOME/dotfiles/tmuxconf/.load_powerline.sh"
if [ -e $file_name ]; then
  rm $file_name
fi

hoge=(${$(python3 -V)//\./ })
fuga=(${$(echo $hoge[2])// /})

PYTHON_MAJOR_VERSION=$fuga[2]
echo "source '/usr/lib/python3.$PYTHON_MAJOR_VERSION/site-packages/powerline/bindings/tmux/powerline.conf'" > $file_name
