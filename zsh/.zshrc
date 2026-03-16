# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$HOME/go/bin"
# ---------- Keybindings ----------
# Ctrl + Arrow move by word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word

# Ctrl + Backspace delete word
bindkey '^H' backward-kill-word

# Ctrl + Delete delete next word
bindkey "\e[3;5~" kill-word

# better word boundary (bash style)
autoload -U select-word-style
select-word-style bash

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
alias lg='lazygit'
alias nv='nvim'

# ---------- Antidote ----------
source ~/.antidote/antidote.zsh
source ~/.zsh_plugins.zsh

# ---------- Prompt ----------
eval "$(starship init zsh)"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

# Load KKU Al
if [ -f ~/.opencode/kku-api-key ]; then
  export $(cat ~/.opencode/kku-api-key | xargs)
fi

eval "$(~/.local/bin/mise activate zsh)"
