set -gx EDITOR vim
set -gx PAGER less

# Variables
set -gx GPG_TTY (tty)
set -gx FLUTTER_HOME $HOME/.flutterlib
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

# PATH
set PATH $HOME/.local/bin $PATH
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/tools/bin $PATH 
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH $FLUTTER_HOME/bin $PATH
set PATH $HOME/.cargo/bin/ $PATH