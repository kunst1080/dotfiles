# env
#export LANG=ja_JP.UTF-8
export EDITOR=vim
export LS_COLORS="di=01;35:ow=01;31:tw=01;31"

# RBENV
export RBENV_ROOT=~/local/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH

# Linuxbrew
export PATH=$HOME/local/linuxbrew/bin:$PATH
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"
export LD_LIBRARY_PATH="$(brew --prefix)/lib:$LD_LIBRARY_PATH"

# PATH
for i in sbin bin opt/bin local/bin .conscript/bin anaconda3/bin
do
  USERPATH=$USERPATH:$HOME/$i
done
export PATH=$USERPATH:$PATH

# my environment
RC=$(find ~ -maxdepth 1 -name ".zshenv.*")
[ ! -z "$RC" ] && for i in $RC
do
  . $i
done
