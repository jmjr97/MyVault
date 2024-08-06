############################
# ███████╗░██████╗██╗░░██╗ #
# ╚════██║██╔════╝██║░░██║ #
# ░░███╔═╝╚█████╗░███████║ #
# ██╔══╝░░░╚═══██╗██╔══██║ #
# ███████╗██████╔╝██║░░██║ #
# ╚══════╝╚═════╝░╚═╝░░╚═╝ #
############################

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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#61afef'

# FZF Theme
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#1a1b26 \
  --color=border:#7aa2f7 \
  --color=fg:#a9b1d6 \
  --color=gutter:#32344a \
  --color=header:#e0af68 \
  --color=hl+:#7da6ff \
  --color=hl:#7da6ff \
  --color=info:#787c99 \
  --color=marker:#f7768e \
  --color=pointer:#f7768e \
  --color=prompt:#7da6ff \
  --color=query:#a9b1d6:regular \
  --color=scrollbar:#7aa2f7 \
  --color=separator:#e0af68 \
  --color=spinner:#f7768e \
"

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-Z}'

# Git
autoload -Uz vcs_info
precmd() { vcs_info }

export EDITOR=nvim

# Pacman
alias check-orphans="pacman -Qdt"
alias remove-orphans="sudo pacman -Rns $(pacman -Qdtq)"

# Alias
alias ls="ls --color=auto"
alias ll="lsd -Alh"
alias lll="clear && lsd -Alh"
alias cat="bat"
alias vim="nvim"
alias top="btop"
alias r="ranger"
alias modx="chmod +x"

# Archive Alias
alias maketar="tar -czf"
alias viewtar="tar -xvzf"
alias untar="tar -xvzf"

# Git Alias
alias gs="git status"
alias ga="git add"
alias gc="git commit -m" 
alias gp="git push"

# Config Alias
alias zconfig="vim ~/.config/zsh/.zshrc"
alias bconfig="vim ~/.config/bspwm/bspwmrc"
alias sconfig="vim ~/.config/sxhkd/sxhkdrc"
alias pconfig="vim ~/.config/polybar/config.ini"
alias pmconfig="vim ~/.config/polybar/modules.ini"
alias vconfig="vim ~/.config/nvim/init.lua"
alias vpconfig="vim ~/.config/nvim/vim-plug/plugins.vim"
alias aconfig="vim ~/.config/awesome/rc.lua"
alias atconfig="vim ~/.config/awesome/theme.lua"

# Maintenance Alias
alias pacmirrors="sudo reflector --latest 200 --sort rate --save /etc/pacman.d/mirrorlist"

# For Fun
alias typetest="toipe -n 50"

# fzf
alias ff="zle -N fzf-cd-widget"
eval "$(fzf --zsh)"

zle     -N            fzf-cd-widget
bindkey -M emacs '\C-f' fzf-cd-widget
bindkey -M vicmd '\C-f' fzf-cd-widget
bindkey -M viins '\C-f' fzf-cd-widget

TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

# Python
alias py="python"


# Prompt
setopt PROMPT_SUBST
PROMPT='%F{#e06c75} %~ %f${vcs_info_msg_0_}%F{#e06c75}%f '
#PROMPT='%F{#e06c75} %~%f ${vcs_info_msg_0_}%F{#e06c75}%f '

zstyle ':vcs_info:git:*' formats '%F{#e06c75}%f %F{#61afef} %b%u%c%f '
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr ' %F{#00ff00}ﰚ%f'
zstyle ':vcs_info:*' unstagedstr ' %F{#ff0000}ﰜ%f'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
#zstyle ':vcs_info:git:*' formats       '(%b%u%c)'

bindkey '^[[Z' end-of-line
neofetch

# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ~/.zshrc

eval "$(starship init zsh)"

