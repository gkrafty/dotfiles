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
  mv ~/.gitconfig ~/.gitconfig
  ls -s ~/dotfiles/.gitconfig ~/.gitconfig
fi

FILE=~/.gitignore
if test -f "$FILE"; then
  mv ~/.gitignore ~/.gitignore.bak
  ls -s ~/dotfiles/.gitignore ~/.gitignore
fi
