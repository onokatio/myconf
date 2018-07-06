cd `dirname $0`

if [[ ! -d ./zplug ]] ;then
	echo zplug not found >&2
	exit
fi

export ZPLUG_HOME="$PWD/zplug"
export ZPLUG_REPOS=$MYLOCAL_DIST/.zsh-plugins
export ZPLUG_BIN=$ZPLUG_REPOS/bin

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions", lazy:true

#zplug check --verbose >&2 || zplug install >&2
zplug update >&2

#zplug load --verbose >&2
zplug clear >&2

list=(`zplug list`)

echo "##### zplug #####"

for i in $list ; do
	eval $(zplug info $i | sed -e 's/-//' | sed -e 's/: /=/'|grep "dir" | sed 's/\x1b\[[0-9;]*m//g')
	echo find zsh file:  $(ls $dir/*.zsh | head -n1) >&2
	echo source $(ls $dir/*.zsh | head -n1)
done

echo "##### /zplug #####"
