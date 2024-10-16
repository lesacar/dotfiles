# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LIBVA_DRIVER_NAME=nouveau
export VDPAU_DRIVER=nouveau
export GDK_DEBUG=gl-disable
export BROWSER="firefox"
export HISTSIZE=-1
export HISTFILESIZE=-1
export XDG_CONFIG_HOME=~/.config
export MOZ_ENABLE_WAYLAND=

alias ls='ls --color=auto'
alias xcl='xclip -selection clipboard'
alias grep='grep --color=auto'
alias wine-ge='/opt/wine-ge-custom-opt/bin/wine'
alias wl-cp='wl-copy -n'
alias s='kitten ssh'
alias ls='lsd'

PATH=$PATH:~/.local/bin
bind -x '"\C-f":tmux-sessionizer;'
# PS1=' [\u@\h \W]\$> '

# PS1 (prompt)
if [ -f "$HOME/.dotfiles/bash-git-prompt/gitprompt.sh" ]; then
#    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_SHOW_UPSTREAM=1
    GIT_PROMPT_SHOW_UNTRACKED_FILES=no
    GIT_PROMPT_IGNORE_SUBMODULES=1
    source "$HOME/.dotfiles/bash-git-prompt/gitprompt.sh"
fi
