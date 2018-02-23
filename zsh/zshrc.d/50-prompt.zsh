#function command_not_found_handler(){
#	if [ -e /usr/bin/jp2a ];then
#		if [ -e ~/kirino.jpg ];then
#			jp2a ~/kirino.jpg -i
#		fi
#	fi
#	echo "ハァ…？$1とか何言ってんの？
#コマンドもろくに覚えられないなんて、アンタどうしようもないクズね。"
#}
chpwd(){ ls -qp --color=auto }
# precmd () { vcs_info }
preexec() {
  _pre="$1"
}
precmd(){
	_r=$?
	case "${_pre}"  in
		cd*|git*)
			psvar=()
			LANG=en_US.UTF-8 vcs_info
			[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
		;;
	esac
	_pre=""

	return ${_r}
}

if [ ${UID} -eq 0 ]; then
	PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
else
	setopt prompt_subst
	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:git:*' check-for-changes true
	zstyle ':vcs_info:git:*' stagedstr "%K{yellow}"
	zstyle ':vcs_info:git:*' unstagedstr "%K{red}"
	zstyle ':vcs_info:*' formats "%K{green}%F{white}%c%u[%b]%f"
	zstyle ':vcs_info:*' actionformats '[%b|%a]'
	LANG=en_US.UTF-8 vcs_info
	
	UUU="（」・ω・）」うー"
	NYA="\（・ω・\）にゃー！"
	#SAN="＼（・ω・＼）SAN値！"
	#PIN="（／・ω・）／ピンチ！"
	#"%K{white}%F{black}%(?,${UUU},${SAN}) %K{blue}%F{white} %F{black}%~ %k%F{blue}%f "
	PROMPT="%K{white}%F{black}${UUU} %K{blue}%F{white} %F{black}%~ %k%F{blue}%f "
	#RPROMPT="%K{green}%(?,${NYA},${PIN})%k${vcs_info_msg_0_}"
	RPROMPT='%f%b%k${vcs_info_msg_0_}%f%K{white}%F{black} ＼（・ω・＼）にゃー！ %f'
fi
