# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export KWIN_DRM_DISABLE_TRIPLE_BUFFERING=1
export AMD_VULKAN_ICD=RADV
export BROWSER="brave"
export HISTSIZE=-1
export HISTFILESIZE=-1
export XDG_CONFIG_HOME=~/.config
export MOZ_ENABLE_WAYLAND=1

alias ls='ls --color=auto'
alias xcl='xclip -selection clipboard'
alias grep='grep --color=auto'
alias wine-ge='/opt/wine-ge-custom-opt/bin/wine'
alias wl-cp='wl-copy -n'
alias s='kitten ssh'
alias ls='lsd'

PATH=$PATH:~/.local/bin:~/.zig
PATH=$PATH:~/.cargo/bin
bind -x '"\C-f":tmux-sessionizer;'
PS1='[\h \w]\$> '

function yta() {
    mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}
