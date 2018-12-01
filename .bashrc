[[ $- != *i* ]] && return
force_color_prompt=yes
PS1='\e[1;32m\u\e[m@\e[1;31m[\h]\e[m:\e[0;36m\w\e[m @\e[1;33m \A, \d\e[m\n\\$ $RS'
alias cls=clear
alias df='df -h'
alias ll='ls -lha --color=auto'
alias ls='ls -CF1 --color=auto'
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias brc='vim ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias trc='vim ~/.tmux.conf'
alias grep='grep --color=auto'
alias xx=exit
alias qq=logout
alias tmux='tmux -u'
alias ps='ps f'
alias f5='source ~/.bashrc'
set background=dark
function colors {
	for i in {0..255}; do
		printf "\xlb[38;5;${i}mcolour${i}\xlb[0m\n"
	done
}
md () {
	mkdir -p $1
	cd $1
}
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
shopt -s dirspell
shopt -s cdspell
shopt -s autocd
shopt -s nocaseglob
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s globstar

[[ $- == *i* ]] && [[ $TERM != 'screen-256color' ]] && (if tmux has-session 2>/dev/null; then exec tmux -2 attach; else exec tmux -2; fi)