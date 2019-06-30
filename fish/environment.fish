# values
set -gx EDITOR nvim
set -gx PAGER less
set -gx GPG_TTY (tty)
set -gx LSCOLORS gxfxbEaEBxxEhEhBaDaCaD
set -gx NNN_USE_EDITOR 1

# applications
set -gx GOPATH $HOME/go
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx FLUTTER_HOME $HOME/.flutterlib
set -gx SPICETIFY_CONFIG $HOME/.config/spicetify


# path
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/tools/bin $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $FLUTTER_HOME/bin $PATH
set PATH $GOPATH/bin $PATH


