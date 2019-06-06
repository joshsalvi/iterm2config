vers=0.10.0b

#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# awesome history commands 
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#export HISTIGNORE="&:ls:ls *:mutt:[bf]g:exit"
export HISTSIZE=10000
export HISTFILESIZE=10000
export GREP_OPTIONS='--color=auto'

## --- source environment script
#. $ENV_SCRIPT

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
#export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
#export PATH
#export PATH=/usr/local/bin:$PATH

# Colors for Dark Theme
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'
export PATH="/usr/local/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM int$

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

source ~/.profile

# The next line enables shell command completion for gcloud.
if [ -f '/Users/joshsalvi/Downloads/google-cloud-sdk/completion.bash.inc' ]; then s$

# Dynamic MOTD
php -f /etc/dynmotd | bash

# gcc
export {CC,CXX,MPICXX}=/usr/local/bin/gcc-6

# Anaconda 2 alias
alias conda="$HOME/anaconda2/bin/conda"
alias apy="$HOME/anaconda2/bin/python"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/joshsalvi/anaconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/joshsalvi/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/joshsalvi/anaconda2/etc/profile.d/conda.sh"
    else
        export PATH="/Users/joshsalvi/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# added by Anaconda2 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/joshsalvi/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/joshsalvi/anaconda2/etc/profile.d/conda.sh" ]; then
        . "/Users/joshsalvi/anaconda2/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/joshsalvi/anaconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
