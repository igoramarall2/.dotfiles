# # ===========================================================
# # Zsh moderno e otimizado com Oh My Zsh + Starship + zoxide
# # ===========================================================
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/.dotfiles"
export CONFIG="$HOME/.config"
export PROJ="$HOME/Projetos"
export DL="$HOME/Downloads"
export DOCS="$HOME/Documentos"
export DESKTOP="$HOME/Área de Trabalho"
export CONFIG_NVIM="$HOME/.config/nvim"
export TMUX_CONF="$HOME/.tmux.conf"
export KITTY_CONF="$HOME/.config/kitty/kitty.conf"
# # -----------------------
# # Variáveis de ambiente
# # -----------------------
export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=kitty
export TERM="xterm-256color"
# # -----------------------
# # Oh My Zsh e Plugins
# # -----------------------
ZSH_THEMES="robbyrussell"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# # -----------------------
# # EZA
# #------------------------
alias laf="eza -1 --icons --group-directories-first --long -h -U -m --no-permissions"
alias ld="eza -1 -D"
alias lf="eza -1 -f"
# # -----------------------
# # Histórico
# # -----------------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=20000
setopt append_history
setopt hist_ignore_dups
setopt share_history
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
