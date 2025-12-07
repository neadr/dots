#    ____  ___  ____ _                  
#   / __ \/ _ \/ __ `/                  
#  / / / /  __/ /_/ /                   
# /_/ /_/\___/\__,_/     __             
#      / /_  ____ ______/ /_  __________
#     / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  _ / /_/ / /_/ (__  ) / / / /  / /__  
# (_)_.___/\__,_/____/_/ /_/_/   \___/  
#                                      
#
# ~/.bashrc
#
# Terminal 256-color
export TERM="xterm-256color"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

##eval "$(dircolors ~/.dir_colors)"



#Alias
alias ls='ls --color=auto --group-directories-first'
##alias grep = 'grep --color=auto'
alias ls='eza --icons --group-directories-first'
alias tree='eza --icons -T'
alias v='nvim'
alias vifm='~/.config/vifm/scripts/vifmrun'



#Confirmation before copy,move and remove
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#Prompt
PS1="\[\033[38;5;195m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;224m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;153m\]>\[$(tput sgr0)\]\[\033[38;5;147m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Autocomplition ignoring lower-case.
bind "set completion-ignore-case on"

#~/.local/ufetch-master/ufetch-nn

