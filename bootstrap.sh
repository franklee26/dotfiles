#!/usr/local/bin/bash

# Before running this script:
# sudo echo '/usr/local/bin/fish' >> /etc/shells

# Update homebrew recipes
brew update

# Install and use latest fish
brew install fish
chsh -s /usr/local/bin/fish

echo "Installing fisher..."
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

mkdir -p $HOME/.config/fisher

ln -s $HOME/.dotfiles/fish/fishfile $HOME/.config/fisher/fishfile

echo "Installing git..."
# Install git
brew install git
# Some git defaults
git config --global color.ui true
git config --global push.default simple

packages=(
  go
  node
  neovim
  htop
  neofetch
  git
  git-lfs
  wget
  tmux
  gnupg
)

echo "installing packages..."
brew install ${packages[@]}

# Install vim-plug
echo "installing vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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
  firefox-developer-edition
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
mkdir ~/projects
mkdir ~/archives

echo "setting up dotfiles..."

# Remove current versions of dotfiles
rm ~/.config/fish
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.gitignore_global
rm ~/.gitconfig
rm ~/Library/Application\ Support/Code/User/settings.json

# Symbolically link dotfiles
ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/spicetify ~/.config/spicetify
ln -s ~/.dotfiles/yabai/yabairc ~/.yabairc
ln -s ~/.dotfiles/skhd/skhdrc ~/.skhdrc
ln -s ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

echo "setting up macos..."

. macos/settings.sh
