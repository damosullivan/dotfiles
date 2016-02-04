# Path to your oh-my-zsh installation.
export ZSH=/home/damien/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"


# Which commands to ignore in history?
HISTIGNORE="fg"

# SSH AutoComplete for host names in ~/.hosts
zstyle -e ':completion:*:*:*' hosts 'reply=($(cat /home/$USER/.hosts))'

setopt INC_APPEND_HISTORY
SAVEHIST=15000



# Plugin Settings

# Which plugins would you like to load?
plugins=(git tmux brew ssh-agent zsh-syntax-highlighting)

# Auto Start a tmux session
ZSH_TMUX_AUTOSTART="true"



# PATH
paths=(
    '/bin'
    '/sbin'
    '/usr/local/bin'
    '/usr/local/sbin'
    '/usr/bin'
    '/usr/sbin'
    '/usr/games'
    '/usr/local/games:'
    '/usr/NX/bin'
    '/home/damien/.linuxbrew/bin'
    '/Users/$USER/bin'
    '/Users/$USER/anaconda/bin'
)
path_string=$(echo $paths | sed -e s@' '@:@g)
export PATH="$PATH:$path_string"



source $ZSH/oh-my-zsh.sh



# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Aliases - :{range}sort u to sort alphabetically
alias ack='ack --smart-case'
alias cdw='cd ~/workspace'
alias gra='git lg'
alias res='source ~/.zshrc'
alias server='python -m SimpleHTTPServer'
alias td='tmux detach'
# alias la='ls -alh --color=tty'
# alias ll='ls -lh --color=tty'
# alias lt='ls -lht --color=tty'


# Functions

# V shortcut to open VIM with CtrlP is no input
v() {
   if [[ $# > 0 ]]
   then
       vim $@
   else
       vim -c CtrlP
   fi
}

