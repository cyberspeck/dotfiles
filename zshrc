# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
alias of7='source /opt/openfoam7/etc/bashrc'
alias of8='source /opt/openfoam8/etc/bashrc'

export PATH=/sw/VASP.5.4.4/vasp.5.4.4/build/std:$PATH
export PATH=/etc/alternatives:$PATH
export PATH=/opt/rh/devtoolset-6/root/bin:$PATH
export PATH=/opt/rh/devtoolset-root/bin:$PATH
export PATH=/home/$USER/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gallois"
#ZSH_THEME="robbyrussell"


DEFAULT_USER='david'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
         git
         git-extras
         vi-mode
         web-search
         command-not-found
         common-aliases
         compleat
         last-working-dir
         #per-directory-history
         )

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

#  http://math.hws.edu/eck/cs225/s03/compiler.html
alias c="g++ -g -Wall"

export PATH=/opt/tmux/bin:$PATH
export PATH=/opt/gnuplot-5.2.3/bin:$PATH
export PATH=$PATH:$HOME/.local/bin

# added by Anaconda3 installer
export PATH=~/anaconda3/bin:$PATH

export EDITOR='nvim'
export VISUAL='nvim'

# enable vi editing mode
bindkey -v
# alternatively:
# set -o vi

# http://stratus3d.com/blog/2017/10/26/better-vi-mode-in-zshell/
# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward
# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search
# `v` is already mapped to visual mode, so we need to use a different key to
# open Vim
bindkey -M vicmd "^V" edit-command-line
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
# export KEYTIMEOUT=1


# https://dougblack.io/words/zsh-vi-mode.html
# Visual Indication, colour promt
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# https://superuser.com/questions/351499/how-to-switch-comfortably-to-vi-command-mode-on-the-zsh-command-line
bindkey -M viins 'jk' vi-cmd-mode

# https://unix.stackexchange.com/questions/72086/ctrl-s-hang-terminal-emulator
# so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

#https://github.com/microsoft/WSL/issues/1887
unsetopt BG_NICE

# disable 'ask for confirmation'
unalias rm


alias cdp='cd /mnt/c/Users/BlacherD/programming'
alias cdo='cd "/mnt/c/Users/BlacherD/OneDrive - AIT/projects/"'

export DISPLAY=localhost:0.0
