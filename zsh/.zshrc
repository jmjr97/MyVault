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

###############
#-- Aliases --#
###############

#-- Alias
alias ls="eza -a -l -h -s=type --icons=auto"
alias lss="clear; eza -a -l -h -s=type --icons=auto"
alias ..="cd .."
alias cat="bat"
alias top="btop"
alias spot="spotify_player"
alias modx="chmod +x"
alias se="sudoedit"
alias tm="tmux attach"

#-- Neovim
alias vim="nvim"
alias v="nvim ."
alias oh="nvim ~/Documents/obsidian-sync/readme.md"
alias orn="nvim ~/Documents/obsidian-sync/Notes/_random.md"

#-- My Scripts
alias spotr='~/myrepo/myscripts/spot.sh'
alias pacclean="~/myrepo/myscripts/pacclean.sh"

#-- Archive Alias
alias maketar="tar -czf"
alias viewtar="tar -xvzf"
alias untar="tar -xvzf"

#-- Git Alias
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m" 
alias gp="git push"
alias lg="lazygit -p ~/myrepo/"

#-- Config Alias
alias zconfig="vim ~/.config/zsh/.zshrc"
alias bconfig="vim ~/.config/bspwm/bspwmrc"
alias sconfig="vim ~/.config/sxhkd/sxhkdrc"
alias pconfig="vim ~/.config/polybar/config.ini"
alias pmconfig="vim ~/.config/polybar/modules.ini"
alias vconfig="vim ~/.config/nvim/init.lua"
alias vpconfig="vim ~/.config/nvim/vim-plug/plugins.vim"
alias aconfig="vim ~/.config/awesome/rc.lua"
alias atconfig="vim ~/.config/awesome/theme.lua"
alias iconfig="vim ~/.config/i3/config"
alias hconfig="vim ~/.config/hypr/hyprland.conf"

#-- Maintenance Alias
alias pacmirrors="sudo reflector --latest 200 --sort rate --save /etc/pacman.d/mirrorlist"

#-- For Fun
alias typetest="toipe -n 50"

#-- Python
alias py="python"
alias pyenv#"python -m venv .env"
alias pyact="source .env/bin/activate"

###############
#-- Plugins --#
###############

source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#61afef'

bindkey '^ ' autosuggest-accept

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-Z}'

#################
#-- Utilities --#
#################

#-- Zoxide
eval "$(zoxide init zsh)"
eval "$(zoxide init --cmd cd zsh)"

#-- Yazi
function f() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#-- fzf
alias ff="zle --exclude '.steam' -N fzf-cd-widget"
eval "$(fzf --zsh)"

zle     -N            fzf-cd-widget
bindkey -M emacs '\C-f' fzf-cd-widget
bindkey -M vicmd '\C-f' fzf-cd-widget
bindkey -M viins '\C-f' fzf-cd-widget

TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

#-- Git
autoload -Uz vcs_info
precmd() { vcs_info }

export EDITOR=nvim

###############
#-- Theming --#
###############

#-- FZF Theme
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#2d3f76 \
  --color=bg:#1e2030 \
  --color=border:#589ed7 \
  --color=fg:#c8d3f5 \
  --color=gutter:#1e2030 \
  --color=header:#ff966c \
  --color=hl+:#65bcff \
  --color=hl:#65bcff \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#65bcff \
  --color=query:#c8d3f5:regular \
  --color=scrollbar:#589ed7 \
  --color=separator:#ff966c \
  --color=spinner:#ff007c \
"

##############
#-- Prompt --#
##############

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

# Plugins
# ~/.zshrc

eval "$(starship init zsh)"


# Created by `pipx` on 2024-08-23 05:13:04
export PATH="$PATH:/home/john/.local/bin"
