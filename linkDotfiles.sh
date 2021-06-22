# Written by Gabriel Kraft
# quickly backup existing dotfiles
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.inputrc ~/.inputrc.bak

# quickly link dotfiles to personal dotfiles
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.inputrc ~/.inputrc

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
