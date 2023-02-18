HISTFILE="$XDG_CACHE_HOME/zhistory"
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt correct
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
unsetopt BEEP

bindkey -v
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zcompdump"

if type "bat" > /dev/null; then
    alias ccat="bat"
fi

if type "lsd" > /dev/null; then
    alias ls="lsd"
else
    alias ls="ls -hF --color=tty"
fi

alias cls="clear"
alias rm="rm -vI"
alias cp="cp -iv"
alias mv="mv -iv"

# fix delete with backspace when switching modes
bindkey "^?" backward-delete-char

# add keybindings for fzf
source /usr/share/fzf/key-bindings.zsh

# add zsh plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

eval "$(starship init zsh)"
