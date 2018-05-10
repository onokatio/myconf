#!/usr/bin/env bash

set -e  # stop when fail
set -u  # fail when var is not defined

export MYLOCAL_DIST="$PWD/../dists"

cd `dirname $0`

function mes_info(){
	tput setaf 11
	echo -n $1
	tput setaf 10
	echo -n " $2..."
	tput sgr0
}
function mes_done(){
	tput setaf 10
	echo 'done'
	tput sgr0
}

mes_info '[zshrc]' 'init'
	touch $MYLOCAL_DIST/zshrc
	echo > $MYLOCAL_DIST/zshrc
	rm -f ~/.zcompdump  # Clear zcomp cache
mes_done

mes_info '[zshrc]' 'Bundle zshrc.d'
	command ls ./zshrc.d/*.zsh       | sort | xargs cat >> ./zshrc
mes_done

mes_info '[zshrc]' 'Bundle hooks'
	if which zsh >/dev/null;then
		find ./zshrc.d/hooks -name *.zsh | sort | xargs zsh >> ./zshrc
	else
		echo "zsh not found"
	fi
mes_done

mes_info '[zshrc]' 'Test & Compile'
	zsh -n zshrc
	[[ -e ~/.zshrc ]] && zsh -c 'zcompile ~/.zshrc'
mes_done


mes_info '[zprofile]' 'init'
	touch zprofile
	echo -n > zprofile
mes_done

mes_info '[zprofile]' 'Bundle zprofile.d'
	find ./zprofile.d -maxdepth 1 -name '*.zsh' | sort | xargs cat >> ./zprofile
mes_done

mes_info '[zprofile]' 'Bundle hooks'
	if which zsh >/dev/null;then
		#find ./zprofile.d/hooks -name *.zhook | sort | xargs zsh >> ./zprofile
		find ./zprofile.d/hooks -maxdepth 1 -name *.zsh | sort | xargs zsh 
	else
		echo "zsh not found"
	fi
mes_done

mes_info '[zprofile]' 'Test & Compile'
	zsh -n zprofile
	zsh -c 'zcompile ./zprofile'
mes_done