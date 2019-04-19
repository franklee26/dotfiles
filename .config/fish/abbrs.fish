# -------------------------
# command improvements
# -------------------------
alias clear 'printf \'\33c\e[3J\''
alias mkdir 'mkdir -pv'
alias grep 'grep --color'

# -------------------------
# python aliases
# -------------------------
alias python (brew --prefix)'/bin/python2'
alias python2 (brew --prefix)'/bin/python2'
alias python3 (brew --prefix)'/bin/python3'

# -------------------------
# generic abbreviations
# -------------------------
abbr l 'ls'
abbr ll 'ls -FGlAhp'
abbr c 'clear'
abbr dsstore 'find . -name \'*.DS_Store\' -type f -ls -delete'
abbr rl 'source ~/.config/fish/config.fish && echo \'~/.config/fish/config.fish\' reloaded'

# -------------------------
# git abbreviations
# -------------------------
abbr g 'git'
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

# -------------------------
# homebrew abbreviations
# -------------------------
abbr bi 'brew install'
abbr bs 'brew search'
abbr bci 'brew cask install'

# -------------------------
# application abbreviations
# -------------------------
abbr sql 'open -a /Applications/Sequel\ Pro.app'
abbr www 'open -a /Applications/Firefox\ Developer\ Edition.app'

# ------------------------
# networking abbreviations
# ------------------------
abbr flushdns 'sudo killall -HUP mDNSResponder'
abbr myip 'curl -s checkip.dyndns.org | sed -e "s/.*Current IP Address: //" -e "s/<.*\$//"'