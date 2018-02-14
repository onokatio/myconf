## sdo() sudo zsh -c "$functions[$1]" "$@"
#fch sudo="sdo"

function ach(){
	if which ${${=2}[1]} > /dev/null 2>&1;then
		alias "$1"="$2 "
	fi
}
function fch(){
	local cmd=$(echo $2|cut -d ' ' -f 1)
	if which $cmd > /dev/null 2>&1;then
		eval "function $1(){ command $2 \$@ }"
	fi
}

alias sudo='sudo '
ach vi "nvim -u $HOME/.vimrc "
ach vim "nvim -u $HOME/.vimrc "
ach d 'popd '

fch hs history
fch git hub
fch df dfc
fch top htop
fch diff colordiff
fch info pinfo
fch wget "axel -n 10 -v -a"
fch ks ls
fch apt apt-fast
fch apt-get apt-fast
fch mkdir 'mkdir -p '
fch bat "upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//' "
fch grep "grep --color -n -I "
fch ls 'ls -hqp --color=auto '
fch l 'ls -hqp --color=auto '
fch make 'make -j4 '
fch sudo 'sudo -E '
fch crontab 'echo "dont use crontab !!" '
fch chromekill 'ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19 '
fch pingg "ping 8.8.8.8 "
fch curlg "curl https://google.com "
fch alpine "docker run -it --rm alpine:edge /bin/sh "
fch cat 'vimcat '
fch trace-mtr 'mtr '
fch brew 'brew -v '
fch open 'xdg-open '
#fch rm 'rm --one-file-system '
fch rm 'rm -v --one-file-system '
fch poweroff 'echo dontuse '
fch reboot 'echo dontuse '

function chrome(){
	chrome_b=$(ps ax|env grep '/opt/google/chrome'|head -n1|awk '{print $5}'|cut -d '/' -f 4)
	eval "google-$chrome_b $@"
}
function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }
