#
#                         __ _ _
#    _____ __  _ __ ___  / _(_) | ___
#   |_  / '_ \| '__/ _ \| |_| | |/ _ \
#  _ / /| |_) | | | (_) |  _| | |  __/
# (_)___| .__/|_|  \___/|_| |_|_|\___|
#       |_|
#
# @samyak039


########
# PATH #
########
export PATH="${PATH}:${XDG_BIN_HOME:-$HOME/.local/bin}"
export PATH="${PATH}:${SCRIPT:-$HOME/script}"
export PATH="${PATH}:${SCRIPT:-$HOME/script}/crt"
export PATH="${PATH}:${SCRIPT:-$HOME/script}/statusbar"
export PATH="${PATH}:${XDG_DATA_HOME:-$HOME/.local/share}/doomemacs/bin"
export PATH="${PATH}:${JAVA_HOME:-/usr/lib/jvm/default}/bin"
export PATH="${PATH}:${ANDROID_SDK_ROOT:-/opt/android-sdk}/emulator"
export PATH="${PATH}:${ANDROID_SDK_ROOT:-/opt/android-sdk}/platform-tools"
export PATH="${PATH}:${ANDROID_SDK_ROOT:-/opt/android-sdk}/tools"
export PATH="${PATH}:${ANDROID_SDK_ROOT:-/opt/android-sdk}/tools/bin"
# `cmdline-tolos/bin` AFTER `tools/bin` only. need to override the above one
export PATH="${PATH}:${ANDROID_SDK_ROOT:-/opt/android-sdk}/cmdline-tools/latest/bin"


###################
# XDG Directories #
###################
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"

export BIN="$XDG_BIN_HOME"
export CONFIG="$XDG_CONFIG_HOME"
export CACHE="$XDG_CACHE_HOME"
export DATA="$XDG_DATA_HOME"
export SCRIPT="$HOME/script"


#######
# ENV #
#######
# android studio
export _JAVA_AWT_WM_NONREPARENTING=1
# flutter needs Chrome
export CHROME_EXECUTABLE="/usr/bin/brave"


#######
# XDG #
#######
export DOOMDIR="$XDG_CONFIG_HOME/doom"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export FZF_PATH="$XDG_DATA_HOME/fzf"


#############
# XDG-Ninja #
#############
export ATOM_HOME="$XDG_DATA_HOME/atom"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/npm/npmrc"
export PYTHONSTARTUP="/etc/python/pythonrc"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export npm_config_cache="$XDG_CACHE_HOME/npm"
export npm_config_init_module="$XDG_CONFIG_HOME/npm/config/npm-init.js"
export npm_config_prefix="$XDG_DATA_HOME/npm"
export npm_config_tmp="$XDG_RUNTIME_DIR/npm"


##########
# STARTX #
##########
[[ -z "${DISPLAY}" ]] && [[ $XDG_VTNR -eq 1 ]] && exec startx "$XDG_CONFIG_HOME/X11/xinitrc"