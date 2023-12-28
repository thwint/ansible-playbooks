# shellcheck shell=sh
###############################################################################
#                             ###################
#                             # !!! WARNING !!! #
#                             ###################
#
# {{ ansible_managed }}
###############################################################################
# Git
alias ga='git add'
alias gA='git add -A'
alias gb='git checkout'
alias gba='git branch -a'
alias gbl='git branch'
alias gbn='git checkout -b'
alias gbr='git branch -r'
alias gc='git commit -m'
alias gca='git commit --amend --no-edit'
alias gco='git checkout'
alias gct='git checkout -t '
alias gcS='git commit -S -m'
alias gcl='git clone'
alias gcleanl='git branch -d $(ls .git/refs/heads | grep -Ev "develop|master|translation")'
alias gd='git diff'
alias gdel='git branch -d'
alias gDel='git branch -D'
alias gf='git fetch'
alias gft='git fetch --all --tags'
alias gfp='git fetch --prune'
alias gl='git log'
alias glog='git log --oneline --graph'
alias gls='git log --show-signature -1'
alias gp='git pull'
alias gpf='git push --force'
alias gps='git push'
alias gpo='git push origin'
alias gr='git reset'
alias gs='git status'
alias gt='git tag'
alias gts='git tag -s'

# mvn
alias mci='mvn clean install'
alias mc='mvn clean'
alias mcisk='mvn clean install -DskipTests'
alias mi='mvn install'
alias misk='mvn install -DskipTests'
alias mdep='mvn dependency:tree'
alias mpom='mvn help:effective-pom'
alias mspot='mvn spotless:apply'
alias mvi='mvn -Pintegration-tests -pl'

# vagrant
alias vd='vagrant destroy -f'
alias vh='vagrant halt'
alias vp='vagrant suspend'
alias vs='vagrant ssh'
alias vu='vagrant up'
