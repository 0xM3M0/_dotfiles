# Enable Powerlevel10k instant prompt (keep near top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Zinit installation check
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing Zinit plugin manager…%f"
    command mkdir -p "$HOME/.local/share/zinit" && chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{34}Installation successful.%f" || \
        print -P "%F{160}The clone has failed.%f"
fi

# Source Zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-history-substring-search

# Powerlevel10k theme
zinit ice depth=1
zinit light romkatv/powerlevel10k

# Load Powerlevel10k config if it exists
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Load completions
autoload -Uz compinit && compinit

# fzf and zoxide integration
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# History configuration
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space

# Keybindings (Ctrl+arrow keys)
bindkey -e
bindkey '^[[1;5C' forward-word    # Ctrl + →
bindkey '^[[1;5D' backward-word   # Ctrl + ←
bindkey '^[[3~' delete-char       # Delete
bindkey '^[[3;5~' kill-word       # Ctrl + Delete

# Aliases
alias vim='nvim'
alias c='clear'
alias r='reset'
alias ..='cd ..'
alias cls="clear && printf '\e[3J'"
alias l='eza -lh --icons=auto'                                         # long list
alias ls='eza -1 --icons=auto'                                         # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto'                                       # long list dirs
alias lt='eza --icons=auto --tree'                                     # list folder as tree
alias prime="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"

alias pass='openssl rand -base64 32'

# Fedora (dnf) package management aliases
alias i='sudo dnf install'
alias un='sudo dnf remove'
alias u='sudo dnf upgrade --refresh'
alias pl='dnf list --installed'
alias s='dnf search'
alias si='dnf info'
alias cl='sudo dnf autoremove && sudo dnf clean all'

# Completion styles and fzf-tab preview
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color=always $realpath'

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::dnf
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.kimi-code/bin:$PATH"

export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

export LIBVIRT_DEFAULT_URI='qemu:///system'

export PATH=~/.npm-global/bin:$PATH


# Added by Antigravity CLI installer
export PATH="/home/memo/.local/bin:$PATH"

# strix
export PATH=/home/memo/.strix/bin:$PATH

# opencode
export PATH=/home/memo/.opencode/bin:$PATH
