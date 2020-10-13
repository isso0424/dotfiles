trush=(`git remote -v | grep origin | grep -o "http"`)

if [ $? = 1 ]; then
  user_name=(`git remote -v | grep origin | grep -o "[^{:/}]*" | sed -n 2p`)
  repo_name=(`git remote -v | grep origin | grep -o "[^/]*\s" | sed -n 4p`)
  git remote set-url origin https://github.com/$user_name/$repo_name
  echo "set https url"
else
  user_name=(`git remote -v | grep origin | grep -o "[^/]*" | sed -n 3p`)
  repo_name=(`git remote -v | grep origin | grep -o "[^/]*" | sed -n 4p`)
  git remote set-url origin git@github.com:$user_name/$repo_name
  echo "set ssh url"
fi
