# Path
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Android
export ANDROID_SDK_ROOT="$XDG_CONFIG_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator
export ANDROID_HOME="$XDG_DATA_HOME"/android

# Disable files
export LESSHISTFILE=-

# Fixing Paths
# export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
# export XAUTHORITY="$XDG_CACHE_HOME"/Xauthority
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
# export KDEHOME="$XDG_CONFIG_HOME"/kde
export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GPG_TTY=$(tty)
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND='fd --type d . --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history

# Default Apps
export EDITOR="nvim"
export READER="okular"
export VISUAL="nvim"
export TERMINAL="konsole"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="gwenview"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"

# Man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Colors
if [ -f ~/.dir_colors ]; then
  eval $(dircolors ~/.dir_colors)
fi

# Others
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RANGER_LOAD_DEFAULT_RC=FALSE
export QT_QPA_PLATFORMTHEME=qt5ct
