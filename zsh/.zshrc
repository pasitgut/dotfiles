# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/opt/nvim/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# ---------- History ----------
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS

# ---------- Completion (cached) ----------
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump

# ---------- Tools ----------
eval "$(zoxide init zsh)"

# ---------- fnm ----------
FNM_PATH="$HOME/.local/share/fnm"
if [[ -d "$FNM_PATH" ]]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env)"
fi

# ---------- bun ----------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[[ -s "$HOME/.bun/_bun" ]] && source "$HOME/.bun/_bun"

# ---------- envman ----------
[[ -s "$HOME/.config/envman/load.sh" ]] && source "$HOME/.config/envman/load.sh"

# ---------- Aliases ----------
alias bat=batcat
alias curl='curlie'

# ---------- Antidote ----------
source ~/.antidote/antidote.zsh
source ~/.zsh_plugins.zsh

# ---------- Prompt ----------
eval "$(starship init zsh)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
