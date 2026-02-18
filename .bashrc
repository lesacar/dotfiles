# TODO: make a separate common.bash file that containts common things like aliases, and keep machine-specific stuff like openclaw in native .bashrc that WON'T be symlinked to dotfiles

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

# opencode
export PATH="$HOME/.opencode/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# OpenClaw Completion
# source "$HOME/.openclaw/completions/openclaw.bash"

# TODO: make sure this doesn't run on ALL of my machiens
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
