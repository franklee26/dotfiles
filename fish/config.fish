# gopath
set -x GOPATH $HOME/projects/go

# android + flutter
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x FLUTTER_HOME $HOME/.flutterlib

# editor
set -x EDITOR vim

# gpg
set -x GPG_TTY (tty)

#path
set PATH $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $PATH
set PATH $FLUTTER_HOME/bin $PATH
set PATH $HOME/.nvm/curre nt/bin $PATH

alias rl="source ~/.config/fish/config.fish && echo '~/.config/fish/config.fish' reloaded"

#source nvm
bass source ~/.nvm/nvm.sh

source ~/.config/fish/aliases.fish