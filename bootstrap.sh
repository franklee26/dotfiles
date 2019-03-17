#!/usr/local/bin/bash

# Update homebrew recipes
brew update

# Install and use latest bash
brew install bash

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
  iterm2
  sublime-text
  sketch
  alfred
  discord
  telegram-desktop
)

# Install apps to /Appl s   ications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Make some commonly used folders
mkdir ~/Projects
mkdir ~/Projects/go

# Source dot files
echo '. ~/.dotfiles/bash/.profile' >> ~/.profile
echo 'export PATH="$HOME/.npm-packages/bin:$PATH"' >> ~/.profile
source ~/.profile
