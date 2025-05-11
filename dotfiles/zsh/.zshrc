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
#--  Paths  --#
###############

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/go/bin

###############
#-- Aliases --#
###############

alias ps="sudo pacman -S"
alias pss="pacman -Ss"
alias pu="sudo pacman -Syu"
alias pr="sudo pacman -Rns"
alias pq="pacman -Qs"
alias pqe="pacman -Qe"

#-- Alias
alias so='source ~/.config/zsh/.zshrc'
alias ls="eza -a -l -h -s=type --icons=auto"
alias lss="clear; eza -a -l -h -s=type --icons=auto"
alias ..="cd .."
alias cat="bat"
alias top="btop"
alias spot="~/myrepo/myscripts/launchers/spotify.sh term"
alias modx="chmod +x"
alias se="sudoedit"
alias tm="tmux attach"
alias ff="fastfetch"
alias xeph="Xephyr -br -ac -noreset -screen 1366x768 :1 & ; DISPLAY=:1 ; sleep 2 ; awesome"

#-- Neovim
alias vim="nvim"
alias v="nvim ."
alias oh="nvim ~/Documents/obsidian-sync/readme.md"
alias orn="nvim ~/Documents/obsidian-sync/Notes/_random.md"

#-- Python
alias py="python"
alias pyenv="~/myrepo/myscripts/bash/pyenv.sh"
alias pya="source .env/bin/activate"
alias pyd="deactivate"

#-- Python Scripts
alias stopwatch='/home/john/Code/python/learning/stopwatch/stopwatch.py'

#-- Bash Scripts
alias pc="~/myrepo/myscripts/bash/pacclean.sh"

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
alias fff="zle --border --exclude '.cache' -N fzf-cd-widget"
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
  --color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
  --color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
  --color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
  --color=selected-bg:#494d64 \
  --multi"

############
#-- Misc --#
############

bindkey '^[[Z' end-of-line

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/zsh/starship.toml

# Created by `pipx` on 2024-08-23 05:13:04
export PATH="$PATH:/home/john/.local/bin"
