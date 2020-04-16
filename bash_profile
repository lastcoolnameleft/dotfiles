if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ `command -v brew` ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"
