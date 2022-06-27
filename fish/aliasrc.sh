#!/bin/sh

alias cp="cp -iv" 
alias dc="cd" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias bc="bc -ql" 
alias mkd="mkdir -pv"
alias neofetch='tfetch'
alias vim='nvim'
alias cpp='exec $HOME/Documents/template/compile-cpp.sh'
#alias vimtex='exec $HOME/Documents/template/template-tex.sh'
alias ls='exa -abghHliS -al'
alias sl='exa -abghHliS -al'
alias lss='exa -abghHliS -al'
alias lsl='exa -abghHliS -al'
alias lls='exa -abghHliS -al'
alias sll='exa -abghHliS -al'
alias sls='exa -abghHliS -al'
alias ssl='exa -abghHliS -al'
alias gitpushall='git remote | xargs -L1 git push --all'
alias gpa='git remote | xargs -L1 git push --all'
alias gitupdatefork='git checkout master && git fetch upstream && git merge upstream/master && git push origin master'
alias torrent="nordvpn connect switzerland"
alias nordvpn_c="nordvpn connect united_states los_angeles"
alias cat="bat"
alias ytfzf="ytfzf -t"
alias license="curl -LO https://raw.githubusercontent.com/Thamognya/License/master/AGPL-3.0-or-later/LICENSE.md"
alias gpau='git add . && git commit -m "$argv" && git remote | xargs -L1 git push --all'

#alias macvnc="ssh -NfL 5900:localhost:5900 jeff@_____ && vncviewer localhost:5900"
