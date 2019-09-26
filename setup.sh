!#/bin/sh

sudo ln -s /usr/bin/nvim /usr/local/bin/vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -f /usr/bin/pip3 ]
then
  pip3 --user install neovim
else
  echo "Couldn't find pip3"
fi

if [ -f /usr/bin/npm ]
then
  npm install neovim
else
  if [ `grep -i red /etc/*-release | echo $?` = 0 ]
  then
    curl -sL https://rpm.nodesource.com/setup_10.x | bash -
  elif [ `grep -i debian /etc/*-release | echo $?` = 0 ]
  then
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs
  else
    echo "I don't know how to install NPM on this platform"
  fi
  npm install neovim
fi

mkdir -p ~/.config/nvim

ln -s ~/code/dotFiles/init.vim ~/.config/nvim/init.vim

vim +PlugInstall +qall
