#!/bin/zsh

if [[ -z "$CTG" ]];then
	export CTG=$HOME/.conf-to-git
fi

for i in $(command ls $CTG/zsh/zprofile.d/*.zsh | grep -v 00-source.zsh | sort)
do
	#echo CTG/zsh/zprofile: source $(basename $i)
	source $i
done

# Created by `pipx` on 2022-03-17 14:22:34
export PATH="$PATH:/Users/katio/.local/bin"