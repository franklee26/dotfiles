# make aliases sudoable
alias sudo="sudo "

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../../"

# ls aliases
alias l="ls"
alias la="ls -A"
alias ll="ls -Al"

# git aliases
alias ga="git add -A"
alias gs="git add -A"
alias gc="git commit -s"
alias gp="git push"
alias gpu="git push -u origin"

# homebrew aliases
alias bi="brew install"
alias bci="brew cask install"
alias brewery="brew update && brew upgrade && brew cleanup"

# zeit/now aliases
alias np="now --target production"
alias nda="now dns add"
alias ndr="now dns rm"

# productivity aliases
alias cdp="cd ~/Projects"
alias cdh="cd ~"

# gpg aliases / functions
function sign
  echo $argv | gpg --clearsign
end