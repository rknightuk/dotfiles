# Only load NVM if it hasn't already. This causes quite a lot of delay in oh-my-zsh
if [ -z "$NVM_BIN" ];
then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
