export ZSH_CONFIG_DIR="$HOME/dotfiles/zshrc"
setting_files=(
  .zsh_general
  .zsh_completion
  .zsh_history
  .zsh_alias
  .zsh_profile
  .zsh_tools
)
for file in $setting_files
do
  source $ZSH_CONFIG_DIR/$file
done
