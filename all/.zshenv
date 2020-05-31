# env
export LANG=ja_JP.UTF-8
export EDITOR=vim
export LS_COLORS="di=01;35:ow=01;31:tw=01;31"

# PATH
for i in sbin bin
do
  USERPATH=$USERPATH:$HOME/$i
done
export PATH=$USERPATH:$PATH

# my environment
RC=$(find ~ -maxdepth 1 -name ".zshenv.*")
[ ! -z "$RC" ] && for i in $(echo $RC)
do
  . $i
done
