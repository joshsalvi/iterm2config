# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

## --- Stylize command prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# eval "`dircolors -b`"

# =============================================================================
#                                   Aliases
# =============================================================================

# Sudo
alias sudo='sudo '

# SSH
alias sshnmr="echo "Connecting\ to\ NMR..." &&ssh jq210@door.nmr.mgh.harvard.edu"
alias ssheris="echo "Connecting\ to\ server\ IPMI\ locally..." && ssh jq210@erisone.partners.org"

# Helper commands
alias rm='rm -v'
alias c='clear'

# Generic command adaptations
alias grep='() { $(whence -p grep) --color=auto $@ }'
alias egrep='() { $(whence -p egrep) --color=auto $@ }'

# Directory management
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias llt='ls -alt'
alias lalt='ls -alt'
alias d='dirs -v'
alias p='pushd'

# Update
# alias update="apt-get update && apt-get upgrade && apt-get dist-upgrade"
alias update="sudo softwareupdate -ia"

