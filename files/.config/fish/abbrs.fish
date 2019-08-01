function ssh; env TERM=xterm ssh $argv; end
function clear; printf '\33c\e[3J'; end
function mkdir; bash -c "mkdir -pv $argv"; end
function grep; bash -c "grep --color $argv"; end

function f; env TERM=xterm-kitty ranger; end
function m; gomuks; end
function l; ls -a; end
function ll; ls -la; end

# util
function dsstore; find . -name '*.DS_Store' -type f -ls -delete; end
function flushdns; sudo killall -HUP mDNSResponder; end
function pubkey; cat ~/.ssh/id_rsa.pub | pbcopy; and echo "=> Public key copied to pasteboard."; end
function brewery; brew update; brew upgrade; end

# reload
function rl; source ~/.config/fish/config.fish && echo '~/.config/fish/config.fish reloaded'; end

# git
function ga; git add $argv; end
function gb; git branch $argv; end
function gbl; git blame $argv; end
function gc; git commit -s $argv; end
function gca; git commit --amend -s $argv; end
function gco; git checkout $argv; end
function gcp; git cherry-pick $argv; end
function gd; git diff $argv; end
function gf; git fetch $argv; end
function gl; git log $argv; end
function gm; git merge $argv; end
function gp; git push $argv; end
function gpf; git push --force-with-lease $argv; end
function gpl; git pull $argv; end
function gr; git remote $argv; end
function grb; git rebase $argv; end
function gs; git status $argv; end
function gst; git stash $argv; end

# brew
function bi; brew install $argv; end
function bs; brew search $argv; end
function bci; brew cask install $argv; end
