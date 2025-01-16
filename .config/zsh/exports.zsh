#xdg 
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_BIN_HOME=$HOME/.local/bin


#default
export EDITOR=nvim


#zsh
export HISTFILE=$XDG_STATE_HOME/zsh/history
# ZVM_INIT_MODE=sourcing
autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION


#less
export LESSHISTFILE="$XDG_STATE_HOME"/less/history

#fzf
# export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
export FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! \( -type d -path ./remote -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'
export FZF_CTRL_T_COMMAND='find . \! \( -type d -path ./.git -prune \) \! \( -type d -path ./remote -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'
export FZF_ALT_C_COMMAND='find . \! \( -type d -path ./.git -prune \) \! \( -type d -path ./remote -prune \)  \! -name '\''*.tags'\'' -printf '\''%P\n'\'


#zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

#oh my posh variable
export WORKSPACE_NAME=$(basename $(ls -d /workspaces/*))
