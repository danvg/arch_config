##########################################################################
# Clean up HOME
##########################################################################

# xdg paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# zsh: ~/.zshrc, ~/.zprofile
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# disable files
export LESSHISTFILE=-

# NOTE: This is not working with KDE. Applications can't be opened and
# complain about not being able to get the window id or something
# xorg: ~/.xinitrc, ~/.xserverrc
# export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
# export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
# export XAUTHORITY="$XDG_CACHE_HOME/Xauthority"

# kde: ~/.kde4
export KDEHOME="$XDG_CONFIG_HOME/kde"

# gtk: ~/.gtkrc, ~/.gtkrc-2.0
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# npm: ~/.npm, ~/.npmrc
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# node: ~/.node_repl_history
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

# gpg: ~/.gnupg
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GPG_TTY=$(tty)

# java: ~/.java/.userPrefs
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

# cargo: ~/.cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# go: ~/go
export GOPATH="$XDG_DATA_HOME/go"

# wget: 
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

# pass: ~/.password-store
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"

# wine: ~/.wine
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"

# docker: ~/.docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"

# yarn: ~/.yarnrc
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

# gradle: ~/.gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# texlive: ~/texmf, ~/.texlive/texmf-var, ~/.texlive/texmf-config
export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texlive/texmf-config"

# tmux
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"

# android
export ANDROID_SDK_ROOT="$XDG_CONFIG_HOME/android"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME/android"
export ADB_KEYS_PATH="$ANDROID_PREFS_ROOT"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android/emulator"
export ANDROID_HOME="$XDG_DATA_HOME/android"

##########################################################################

# default apps
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

# language
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
export FZF_ALT_C_COMMAND='fd --type d . --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# man pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# dircolors
if [ -f "$XDG_CONFIG_HOME/.dir_colors" ]; then
  eval $(dircolors "$XDG_CONFIG_HOME/.dir_colors")
fi

# paths
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$XDG_DATA_HOME/npm" ]; then
  export PATH="$PATH:$XDG_DATA_HOME/npm/node_modules/.bin"
fi
