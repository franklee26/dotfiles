alias clear 'printf \'\33c\e[3J\''
alias mkdir 'mkdir -pv'
alias grep 'grep --color'

# python
alias python (brew --prefix)'/bin/python2'
alias python2 (brew --prefix)'/bin/python2'
alias python3 (brew --prefix)'/bin/python3'

alias f 'nnn'
alias m 'gomuks'
alias l 'ls'
alias ll 'ls -lA'

# util
alias dsstore 'find . -name \'*.DS_Store\' -type f -ls -delete'
alias flushdns 'sudo killall -HUP mDNSResponder'
alias pubkey 'cat ~/.ssh/id_rsa.pub | pbcopy; and echo "=> Public key copied to pasteboard."'

# reload
alias rl 'source ~/.config/fish/config.fish && echo \'~/.config/fish/config.fish\' reloaded'

# git
alias ga 'git add'
alias gb 'git branch'
alias gbl 'git blame'
alias gc 'git commit -s'
alias gca 'git commit --amend -s'
alias gco 'git checkout'
alias gcp 'git cherry-pick'
alias gd 'git diff'
alias gf 'git fetch'
alias gl 'git log'
alias gm 'git merge'
alias gp 'git push'
alias gpf 'git push --force-with-lease'
alias gpl 'git pull'
alias gr 'git remote'
alias grb 'git rebase'
alias gs 'git status'
alias gst 'git stash'
alias currentbranch 'git branch | grep \* | cut -d \' \' -f2'

# brew
alias bi 'brew install'
alias bs 'brew search'
alias bci 'brew cask install'
