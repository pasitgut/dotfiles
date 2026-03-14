# ---------- History ----------
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# ---------- Completion ----------
autoload -Uz compinit
compinit

# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="/opt/nvim/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# ---------- Tools ----------
eval "$(zoxide init zsh)"

# ---------- fnm ----------
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# ---------- bun ----------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# ---------- envman ----------
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# ---------- aliases ----------
alias bat=batcat
alias curl='curlie'

# ---------- prompt ----------
eval "$(starship init zsh)"

# ---------- antidote plugins ----------
source ~/.antidote/antidote.zsh
source ~/.zsh_plugins.zsh
