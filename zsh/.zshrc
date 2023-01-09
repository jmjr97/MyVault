# Lines configured by zsh-newuser-install
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/john/.config/zsh/.zshrc'

# End of lines added by compinstall

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#03a9f4'

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-Z}'

# Git
autoload -Uz vcs_info
precmd() { vcs_info }

# Alias
alias ls="ls --color=auto"
alias ll="lsd -Alh"
alias cat="bat"
alias cls="clear"
alias vim="nvim"

# Config Alias
alias zconfig="vim ~/.config/zsh/.zshrc"
alias bconfig="vim ~/.config/bspwm/bspwmrc"
alias sconfig="vim ~/.config/sxhkd/sxhkdrc"
alias vconfig="vim ~/.config/nvim/init.vim"
alias vpconfig="vim ~/.config/nvim/vim-plug/plugins.vim"
alias aconfig="vim ~/.config/awesome/rc.lua"
alias atconfig="vim ~/.config/awesome/themes/mytheme.lua"

# Prompt
setopt PROMPT_SUBST
PROMPT='%F{#ff9800} %~ %f${vcs_info_msg_0_}%F{#ff9800}%f '
#PROMPT='%F{#ff9800} %~%f ${vcs_info_msg_0_}%F{#ff9800}%f '

zstyle ':vcs_info:git:*' formats '%F{#ff9800}%f %F{#03a9f4} %b%u%c%f '
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ' %F{#00ff00}ﰚ%f'
zstyle ':vcs_info:*' unstagedstr ' %F{#ff0000}ﰜ%f'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
#zstyle ':vcs_info:git:*' formats       '(%b%u%c)'

bindkey '^[[Z' end-of-line
neofetch

# Plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/john/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


