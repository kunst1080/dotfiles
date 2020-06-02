# zsh
autoload -U compinit
compinit 
autoload -Uz colors
colors
setopt auto_pushd
setopt correct
setopt cdable_vars
setopt prompt_subst
autoload -Uz add-zsh-hook
autoload -Uz vcs_info
autoload -Uz zmv

# key bind
bindkey -e

#入力途中の履歴補完
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 
setopt histignorespace
setopt hist_no_store

# alias
. ~/.aliases

# my environment
RC=$(find ~ -maxdepth 1 -name ".zshrc.*")
[ ! -z "$RC" ] && for i in $(echo $RC)
do
  . $i
done

