# =============================================================================
#                                ZSH Config
# =============================================================================

export TERM="xterm-256color"
export ZSH=/Users/joshsalvi/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_USER_TEMPLATE=%n
POWERLEVEL9K_USER_ICON="\uF8FF"
POWERLEVEL9K_HOST_ICON="\uF8FF"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator user dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs status time ssh)

POWERLEVEL9K_STATUS_ERROR_FOREGROUND="$DEFAULT_FOREGROUND"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$DEFAULT_BACKGROUND"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

COMPLETION_WAITING_DOTS="true"

source fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
plugins=(git sublime osx npm node docker fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Local syntax highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Paths
export PATH=$PATH:/Applications/MATLAB_R2017a.app/bin/
export PATH="/usr/local/sbin:$PATH"

# don't check for new mail
MAILCHECK=0


# =============================================================================
#                                   Plugins
# =============================================================================

# Check if zplug is installed
[ ! -d ~/.zplug ] && git clone https://github.com/zplug/zplug ~/.zplug
source ~/.zplug/init.zsh

# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zsh-users
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2


# Supports oh-my-zsh plugins and the like
if [[ $OSTYPE = (linux)* ]]; then
    zplug "plugins/archlinux", from:oh-my-zsh, if:"which pacman"
    zplug "plugins/dnf",       from:oh-my-zsh, if:"which dnf"
fi

if [[ $OSTYPE = (darwin)* ]]; then
    zplug "plugins/osx",      from:oh-my-zsh
    zplug "plugins/brew",     from:oh-my-zsh, if:"which brew"
    zplug "plugins/macports", from:oh-my-zsh, if:"which port"
fi

zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/common-aliase", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/copydir", from:oh-my-zsh
zplug "plugins/copyfile", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/dircycle", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/nmap",   from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/tmuxinator", from:oh-my-zsh
zplug "plugins/urltools", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/go", from:oh-my-zsh
zplug "plugins/svn", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
zplug "plugins/rbenv", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh

# Enhanced cd
zplug "b4b4r07/enhancd", use:enhancd.sh

# Enhanced dir list with git features
zplug "supercrabtree/k"

# Auto-close and delete matching delimiters
zplug "hlissner/zsh-autopair", defer:2

# Docker completion
zplug "felixr/docker-zsh-completion"

# Jump back to parent directory
zplug "tarrasch/zsh-bd"

# Simple zsh calculator
zplug "arzzen/calc.plugin.zsh"

# Directory colors
zplug "seebi/dircolors-solarized", ignore:"*", as:plugin

# Load theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme


# =============================================================================
#                                   Options
# =============================================================================

# Improved LESS option
export LESS="--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS"

# Watching other users
watch=(notme)         # Report login/logout events for everybody except ourself.
LOGCHECK=60           # Time (seconds) between checks for login/logout activity.
REPORTTIME=5          # Display usage statistics for commands running > 5 sec.
WORDCHARS="\"*?_-[]~&;!#$%^(){}<>\""

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Dont overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.

# Changing directories
setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
setopt pushd_minus              # Reference stack entries with "-".

setopt extended_glob


# =============================================================================
#                                   Aliases
# =============================================================================

# SSH
alias sshnmr="echo "Connecting\ to\ NMR..." &&ssh jq210@door.nmr.mgh.harvard.edu"
alias sshhome="echo "Connecting\ to\ server\ remotely..." && ssh -p24 root@joshsalvi.ddns.net"
alias sshhomelocal="echo "Connecting\ to\ server\ locally..." && ssh -p24 root@192.168.0.108"
alias sshipmilocal="echo "Connecting\ to\ server\ IPMI\ locally..." && ssh sysadmin@192.168.0.105"

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


# =============================================================================
#                                  Anaconda
# =============================================================================

# export PATH="$HOME/anaconda2/bin:$PATH"
# cat >> ~/.bashrc << END
# PATH=\$HOME/miniconda3/bin:\$PATH
# END
source $HOME/.bashrc

# =============================================================================
#                                 Completions
# =============================================================================

zstyle ':completion:*' rehash true

# case-insensitive (all), partial-word and then substring completion
zstyle ":completion:*" matcher-list \
  "m:{a-zA-Z}={A-Za-z}" \
  "r:|[._-]=* r:|=*" \
  "l:|=* r:|=*"

zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}


# =============================================================================
#                              Startup commands
# =============================================================================

#export {CC,CXX,MPICXX}=/usr/local/bin/gcc-6
alias gcc="gcc-7"
export CC=/usr/local/bin/gcc-7
export CXX=/usr/local/bin/g++-7
source activate moseq2

clear

# Dynamic MOTD
php -f /etc/dynmotd | bash
