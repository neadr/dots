#                                                                  
#        .sSSSs.  SSSSS .sSSSSs.    .sSSSSs.                               
#        S SSS SS SSSSS S SSSSSSSs. S SSSSSSSs.                            
#        S  SS  `sSSSSS S  SS SSSS' S  SS SSSSS                            
#        S..SS    SSSSS S..SS       S..SSsSSSSS                            
#        S:::S    SSSSS S:::SSSS    S:::S SSSSS                            
#        S;;;S    SSSSS S;;;S       S;;;S SSSSS                            
#        S%%%S    SSSSS S%%%S SSSSS S%%%S SSSSS                            
#        SSSSS    SSSSS SSSSSsSS;:' SSSSS SSSSS                            
#                                                                  
#                                                                  
#              SSSSSSSSSs. .sSSSSSSSs. .sSSS SSSSS .sSSSSSSSs. .sSSSSs.    
#              SSSSSS SSS' S SSS SSSS' S SSS SSSSS S SSS SSSSS S SSSSSSSs. 
#                  S  SS   S  SS       S  SS SSSSS S  SS SSSS' S  SS SSSS' 
#                 S..SS    `SSSSsSSSa. S..SSsSSSSS S..SSsSSSa. S..SS       
#                S:::S     .sSSS SSSSS S:::S SSSSS S:::S SSSSS S:::S SSSSS 
#        .sSs.  S;;;S      S;;;S SSSSS S;;;S SSSSS S;;;S SSSSS S;;;S SSSSS 
#        S%%%S S%%%SSSSSSS S%%%S SSSSS S%%%S SSSSS S%%%S SSSSS S%%%S SSSSS 
#        `:;:' SSSSSSSSSSS SSSSSsSSSSS SSSSS SSSSS SSSSS SSSSS SSSSSsSSSSS 
#                                                                  

# Colors and 256color
export TERM="xterm-256color"
autoload -U colors && colors
# PATH
export PATH="$HOME/.local/bin:$PATH"


#Allias
#alias ls='ls --color=auto --group-directories-first' 
alias ls='eza --icons --group-directories-first'
alias tree='eza --icons -T'
alias v='nvim'
alias vifm='~/.config/vifm/scripts/vifmrun'

#Confirmation before copy,move and remove
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#config the prompt
PS1="%F{157}%n%f %F{189}%1~%f "

# History of ZSH 
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Keybinding as vim
bindkey -v
export KEYTIMEOUT=1

#ZSH-autocomplition-tab
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

compinit

#Autocomplition includes the hidden-files 
_comp_options+=(globdots) 

# Promt ZSH
autoload -Uz promptinit
promptinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

#~/.local/ufetch-master/ufetch-nn

eval "$(oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/tokyonight_storm.omp.json)"

