# Application Configuration
set -gx EDITOR nvim
set -gx PAGER less

# Configuration Variables
set -gx GPG_TTY (tty) # Fix Git GPG Signing
set -gx LSCOLORS gxfxbEaEBxxEhEhBaDaCaD # Make ls colorful

# Go Configuration
set -gx GOPATH $HOME/go
set PATH $GOPATH/bin $PATH

# Android Configuration
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set PATH $ANDROID_HOME/emulator $PATH
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/tools/bin $PATH
set PATH $ANDROID_HOME/platform-tools $PATH

# Flutter Configuration
set -gx FLUTTER_HOME $HOME/.flutterlib
set PATH $FLUTTER_HOME/bin $PATH

# Spicetify Configuration
set -gx SPICETIFY_CONFIG $HOME/.config/spicetify

# Rust Configuration
set PATH $HOME/.cargo/bin/ $PATH

# Fastlane Configuration
set PATH $HOME/.fastlane/bin $PATH

# Mono Configuration
set PATH /Library/Frameworks/Mono.framework/Versions/Current/bin/ $PATH
