# shellcheck shell=sh disable=SC3044
###############################################################################
#                             ###################
#                             # !!! WARNING !!! #
#                             ###################
#
# {{ ansible_managed }}
###############################################################################
# Kubectl
alias k='kubectl'
alias kd='kubectl delete'
alias kg='kubectl get'
alias kgp='kubectl get pod'
alias kgn='kubectl get namespace'
alias kl='kubectl logs'
# ensure bash completion for kubectl when using alias
complete -F __start_kubectl k
