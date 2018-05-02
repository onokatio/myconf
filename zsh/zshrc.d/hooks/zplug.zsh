if which git > /dev/null 2>&1 ;then
	echo source ../../zplug/init.zsh
	#alias zplug=":"
else
	echo "git not found."
	alias zplug=":"
	return
fi

	#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
	#zplug "junegunn/fzf-bin", \
	#	from:gh-r, \
	#	as:command, \
	#	rename-to:fzf, \
	#	use:"*linux*amd64*"
	#	lazy:true
	#zplug "onokatio/anyenv" #, as:command, use:"bin/anyenv"
	#zplug "stedolan/jq", from:gh-r, as:command, lazy:true
	echo zplug "zsh-users/zsh-autosuggestions"
#	zplug "zsh-users/zsh-syntax-highlighting", defer:2
	echo zplug "zsh-users/zsh-completions", lazy:true
	#zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
	#zplug "TBSliver/zsh-plugin-tmux-simple"
	#zplug "arzzen/calc.plugin.zsh"
	#zplug "felixr/docker-zsh-completion"
	#zplug "mrowa44/emojify", as:command
	#zplug "b4b4r07/enhancd", on:"junegunn/fzf-bin"
	#zplug "b4b4r07/zsh-gomi", \
	#  as:command, \
	#  use:bin/gomi, \
	#  on:junegunn/fzf-bin, \
	#	lazy:true
	#zplug "b4b4r07/enhancd", use:enhancd.sh, on:junegunn/fzf-bin
	#zplug "b4b4r07/history", from:gh-r, as:command, use:"*linux*amd64*", hook-load:'history(){command history \$@}'
	#zplug "onokatio/history", use:"misc/zsh/init.zsh"
	#zplug 'meetfranz/franz-app-legacy', from:gh-r, as:command, use:'*linux*x64*', rename-to:franz
	#zplug "agnoster/agnoster-zsh-theme", as:theme
	#zplug "bhilburn/powerlevel9k", as:theme
	#zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

	echo zplug load
