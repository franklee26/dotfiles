#!/usr/local/bin/bash

# Before running this script:
# sudo echo '/usr/local/bin/fish' >> /etc/shells

# Update homebrew recipes
brew update

# Install and use latest bash
brew install fish
chsh -s /usr/local/bin/fish

echo "Installing oh my fish..."
curl -L https://get.oh-my.fish | fish

echo "Installing fish packages..."

themes=(
  robbyrussel
)

omf install ${themes[@]}

echo "Installing git..."
# Install git
brew install git
# Some git defaults
git config --global color.ui true
git config --global push.default simple
git config --global user.email "dante.issaias@gmail.com"
git config --global user.name "Dante Issaias"

packages=(
  go
  node
  gnupg
)

echo "installing packages..."
brew install ${packages[@]}

# Install Node modules
modules=(
  forever
  gulp
  webpack
  create-react-app
)

echo "installing node modules..."
npm install -g ${modules[@]}

# Apps
apps=(
  google-chrome
  firefox
  sublime-text
  visual-studio-code
  sketch
  alfred
  discord
  telegram-desktop
  iterm2
  paw
)

# Install apps to /Appl s   ications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Make some commonly used folders
mkdir ~/Projects
mkdir ~/Projects/go

echo "setting up dotfiles..."
# Source dot files
ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/omf ~/.config/omf
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
# echo '. ~/.dotfiles/bash/.profile' >> ~/.profile
# echo 'export PATH="$HOME/.npm-packages/bin:$PATH"' >> ~/.profile
# source ~/.profile

echo "finished"
