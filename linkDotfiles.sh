# Written by Gabriel Kraft
# quickly backup existing dotfiles

# if bashrc is already installed backup and link fresh
FILE=~/.bashrc
if test -f "$FILE"; then
  mv ~/.bashrc ~/.bashrc.bak
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc

# if zshrc is already installed backup and link fresh
FILE=~/.zshrc
if test -f "$FILE"; then
  mv ~/.zshrc ~/.zshrc.bak
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

# if zshrc is already installed backup and link fresh
FILE=~/.inputrc
if test -f "$FILE"; then
  mv ~/.inputrc ~/.inputrc.bak
fi
ln -s ~/dotfiles/.inputrc ~/.inputrc

# if zshrc is already installed backup and link fresh
FILE=~/.vimrc
if test -f "$FILE"; then
  mv ~/.vimrc ~/.vimrc.bak
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc

# quickly link gitfiles to personal gitfiles
FILE=~/.gitconfig
if test -f "$FILE"; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

  FILE=~/.gitignore
if test -f "$FILE"; then
  mv ~/.gitignore ~/.gitignore.bak
fi
ln -s ~/dotfiles/.gitignore ~/.gitignore
