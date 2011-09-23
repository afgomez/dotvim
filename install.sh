# Assume we have MacVim Installed

if [[ `uname -s` -eq "Darwin" ]]; then # OSX only stuff
  
  # Install homebrew packages
  BREW=`which brew`
  echo "Updating brew..."
  BREW update
  
  echo "Installing jsl (Javascript linter)..."
  BREW install jsl > /dev/null

  echo "Installing ctags..."
  BREW install ctags > /dev/null

  echo "Installing ack..."
  BREW install ack > /dev/null
  
  # TODO? change MacVim icon
fi

# Update submodules
echo "Updating git submodules..."
GIT=`which git`
GIT submodule init
GIT submodule update

# Compile CommandT
echo "Compiling CommandT..."
cd "~/.vim/bundle/command-t/ruby/command-t/"
MAKE=`which make`
MAKE clean
`which ruby` extconf.rb
make


# Create symlinks
echo "Updating symlinks..."
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

echo "All done!"


