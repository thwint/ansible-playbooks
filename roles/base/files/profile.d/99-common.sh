# shellcheck shell=sh
###############################################################################
#                             ###################
#                             # !!! WARNING !!! #
#                             ###################
#
# {{ ansible_managed }}
###############################################################################
# apt
alias upd='sudo apt update'
alias upg='sudo apt upgrade'

# networking
alias dna='dig +noall +answer'
alias ip='ip --color'
alias wifioff='sudo nmcli radio wifi off'
alias wifion='sudo nmcli radio wifi on'
