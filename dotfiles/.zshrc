bindkey -e

PATH="$PATH:$HOME/.local/scripts"
PATH="$PATH:$HOME/setup"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt appendhistory
setopt sharehistory
setopt histignorealldups

autoload -Uz compinit
compinit

setopt autocd
setopt correct
setopt interactivecomments

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

alias c=clear
alias x=exit

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word

WORDCHARS=''

eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey '^@' autosuggest-accept

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
