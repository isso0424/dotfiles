export ZSH_CONFIG_DIR="$HOME/dotfiles/zshrc"
setting_files=(
  .zsh_general
  .zsh_completion
  .zsh_history
  .zsh_alias
  .zsh_profile
  .zsh_tools
  .zsh_plugin
  .zsh_gpg
)
for file in $setting_files
do
  source $ZSH_CONFIG_DIR/$file
done

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
