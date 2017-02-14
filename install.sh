if [ ! -d ~/.bash/git-aware-prompt ]; then
  mkdir -p ~/.bash
  cd ~/.bash
  git clone git://github.com/jimeh/git-aware-prompt.git
  cd -
fi

cd /tmp
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
cd -

mkdir -p ~/bin/
cp -n bin/* ~/bin
cp -n bash_profile ~/.bash_profile
cp -n bashrc ~/.bashrc
cp -n gitconfig ~/.gitconfig
cp -n screenrc ~/.screenrc
cp -n tmux.conf ~/.tmux.conf
cp -n vimrc ~/.vimrc
