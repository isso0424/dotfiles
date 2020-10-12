output=$(git config --global http.proxy)
if [ $? -ne 0 ]; then
  git config --global http.proxy http://po.cc.ibaraki-ct.ac.jp:3128
elif [ "http://po.cc.ibaraki-ct.ac.jp:3128" = $output ]; then
  git config --global --unset http.proxy
fi
