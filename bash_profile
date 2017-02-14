if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ `command -v brew` ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi
