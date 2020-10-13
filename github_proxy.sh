output=$(git config --global http.proxy)
if [ $? -ne 0 ]; then
  git config --global http.proxy http://po.cc.ibaraki-ct.ac.jp:3128
  echo "set kosen proxy"
elif [ "http://po.cc.ibaraki-ct.ac.jp:3128" = $output ]; then
  git config --global --unset http.proxy
  echo "unset kosen proxy"
fi
