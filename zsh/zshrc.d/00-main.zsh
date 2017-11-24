#zmodload zsh/zprof && zprof
if [[ -z "$CTG" ]] ; then
	echo "var CTG not found"
fi


add-bin(){
	if [[ -e $1 ]];then
		export PATH=$1/bin:$PATH
	fi
}
add-local-path(){
	if [[ -e $1 ]];then
		export PATH=$1/bin:$PATH
		export LD_LIBRARY_PATH="$1/lib:$LD_LIBRARY_PATH"
		export LD_LIBRARY_PATH="$1/lib64:$LD_LIBRARY_PATH"
		export PKG_CONFIG_PATH="$1/lib/pkgconfig:$PKG_CONFIG_PATH"
		export PKG_CONFIG_PATH="$1/lib64/pkgconfig:$PKG_CONFIG_PATH"
		export MANPATH="$1/share/man:$MANPATH"
		export INFOPATH="$1/share/info:$INFOPATH"
		export XDG_DATA_DIRS="$1/share:$XDG_DATA_DIRS"
	fi
}

export MYLOCAL=/tmp/.systemd/local

add-local-path /home/local
add-local-path /usr/local
add-local-path /usr
#add-local-path /home/local/python/anaconda3
#add-local-path $MYLOCAL
add-local-path $MYLOCAL/Linuxbrew
add-bin $CTG/anyenv

export ZPLUG_HOME=$CTG/zsh/zplug
export ZPLUG_REPOS=$MYLOCAL/zsh-plugins
export ZPLUG_BIN=$MYLOCAL/bin
export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f
export HOMEBREW_CACHE=/tmp/cache
export HOMEBREW_MAKE_JOBS=4

#export HOMEBREW_EDITOR=vi
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export EDITOR=vim
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
export USE_CCACHE=1
export CCACHE_DIR=$HOME/.ccache
which ccache >/dev/null 2>&1 && export CC="ccache gcc"

#export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_uuu dir root_indicator ssh)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs custom_nya)
export POWERLEVEL9K_CUSTOM_UUU="echo （」・ω・）」うー"
export POWERLEVEL9K_CUSTOM_NYA="echo ＼（・ω・＼）にゃー！"
#export ZSH_PLUGINS=$MYLOCAL/zsh-plugins
export ANYENV_ROOT=$CTG/anyenv
eval "$(anyenv init -)"

umask 077



	source $ZPLUG_HOME/init.zsh
	#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
	zplug "junegunn/fzf-bin", \
		from:gh-r, \
		as:command, \
		rename-to:fzf, \
		use:"*linux*amd64*"
	#	lazy:true
	#zplug "onokatio/anyenv" #, as:command, use:"bin/anyenv"
	#zplug "stedolan/jq", from:gh-r, as:command, lazy:true
	zplug "zsh-users/zsh-autosuggestions"
	zplug "zsh-users/zsh-syntax-highlighting", defer:2
	zplug "zsh-users/zsh-completions", lazy:true
	#zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
	#zplug "TBSliver/zsh-plugin-tmux-simple"
	#zplug "arzzen/calc.plugin.zsh"
	#zplug "felixr/docker-zsh-completion"
	#zplug "mrowa44/emojify", as:command
	#zplug "b4b4r07/enhancd", on:"junegunn/fzf-bin"
	zplug "b4b4r07/zsh-gomi", \
	  as:command, \
	  use:bin/gomi, \
	  on:junegunn/fzf-bin, \
		lazy:true
	#zplug "b4b4r07/enhancd", use:enhancd.sh, on:junegunn/fzf-bin
	#zplug "b4b4r07/history", from:gh-r, as:command, use:"*linux*amd64*", hook-load:'history(){command history \$@}'
	#zplug "onokatio/history", use:"misc/zsh/init.zsh"
	#zplug 'meetfranz/franz-app-legacy', from:gh-r, as:command, use:'*linux*x64*', rename-to:franz
	#zplug "agnoster/agnoster-zsh-theme", as:theme
	zplug "bhilburn/powerlevel9k", as:theme

	zplug load
 

if [[ -d $ANYENV_ROOT ]] ; then
	#eval "$(anyenv init - --no-rehash)"
	export PATH=$ANYENV_ROOT/bin:$PATH
	#eval "$(anyenv init -)"
	anyenv() {
	  typeset command
	  command="$1"
	  if [ "$#" -gt 0 ]; then
	    shift
	  fi
	  command anyenv "$command" "$@"
	}
fi

#if [[ -d $CTG/zshrc.d/ ]] ; then
#	for i ($CTG/zshrc.d/*.zsh) source $i
#fi

HISTFILE=~/.zsh_history
#HISTSIZE=1000
#SAVEHIST=1000
#REPORTTIME=3

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey ";5C" forward-word
bindkey ";5D" backward-word

#if [ $CTG/zshrc -nt ~/.zshrc.zwc ]; then
#  zcompile ~/.zshrc
#fi

