alias clear 'printf \'\33c\e[3J\''
alias mkdir 'mkdir -pv'
alias grep 'grep --color'

# python
alias python (brew --prefix)'/bin/python2'
alias python2 (brew --prefix)'/bin/python2'
alias python3 (brew --prefix)'/bin/python3'

abbr f 'nnn'
abbr l 'ls'
abbr ll 'ls -FGlAhp'
abbr c 'clear'

# util
alias dsstore 'find . -name \'*.DS_Store\' -type f -ls -delete'
alias flushdns 'sudo killall -HUP mDNSResponder'
alias pubkey 'cat ~/.ssh/id_rsa.pub | pbcopy; and echo "=> Public key copied to pasteboard."'

# reload
abbr rl 'source ~/.config/fish/config.fish && echo \'~/.config/fish/config.fish\' reloaded'

# git
abbr ga 'git add'
abbr gb 'git branch'
abbr gbl 'git blame'
abbr gc 'git commit -s'
abbr gca 'git commit --amend -s'
abbr gco 'git checkout'
abbr gcp 'git cherry-pick'
abbr gd 'git diff'
abbr gf 'git fetch'
abbr gl 'git log'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'
abbr gpl 'git pull'
abbr gr 'git remote'
abbr grb 'git rebase'
abbr gs 'git status'
abbr gst 'git stash'

# brew
abbr bi 'brew install'
abbr bs 'brew search'
abbr bci 'brew cask install'
