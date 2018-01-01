# env
#export LANG=ja_JP.UTF-8
export EDITOR=vim
export LS_COLORS="di=01;35:ow=01;31:tw=01;31"

export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"

# RBENV
export RBENV_ROOT=~/local/.rbenv
export PATH=$RBENV_ROOT/bin:$PATH

# PATH
for i in sbin bin opt/bin local/bin .conscript/bin anaconda3/bin
do
  USERPATH=$USERPATH:$HOME/$i
done
export PATH=$USERPATH:$PATH

# my environment
[ -f "~/.zshenv.*" ] && for i in "~/.zshenv.*"
do
    . $i
done
