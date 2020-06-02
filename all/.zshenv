# PATH
for i in sbin bin .local/bin
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
