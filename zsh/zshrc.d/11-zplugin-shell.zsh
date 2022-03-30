#export ZPFX=$CTG/cache/zplugin-plugin-make
#export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias-tips: '

declare -A ZI
export ZI[HOME_DIR]="$XDG_DATA_HOME/.zi"
#export ZI[ZCOMPDUMP_PATH]="$XDG_DATA_HOME/.zi/.zcompdump" #ignore bug?

if [[ ! -d "${ZI[HOME_DIR]}"/bin ]];then
	git clone https://github.com/z-shell/zi.git "${ZI[HOME_DIR]}"/bin
fi
source "${ZI[HOME_DIR]}"/bin/zi.zsh
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

zi snippet 'OMZL::completion.zsh' #better completion settings
zi snippet 'OMZP::gnu-utils' #auto prefix 'g' for homebrew gnu-utils

autoload -Uz bashcompinit
bashcompinit
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

#zi ice atload'tmp="/usr/share/bash-completion/bash_completion" ; test -r "$tmp" && source $tmp'
#zi light chrissicool/zsh-bash

#zpm-zsh/ls \
zi wait lucid light-mode for \
	b4b4r07/enhancd \
	b4b4r07/emoji-cli \
	z-shell/zui \
	z-shell/zzcomplete \
	atinit"compinit; zicdreplay" z-shell/F-Sy-H \
	blockf zsh-users/zsh-completions \
	atload"!_zsh_autosuggest_start" zsh-users/zsh-autosuggestions

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bold,underline,standout"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
