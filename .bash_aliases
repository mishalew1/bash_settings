# Editor
export EDITOR='vim'

# system shortcuts
alias c='clear -x'
alias sudo='sudo '
alias ls="ls --color=auto"
alias l="ls -lh"
alias ll="ls -lhA"
alias la="ls -lhA"
alias ldir='ls -dhlA .*/ */'
alias cp="cp -rv"
alias mkdir="mkdir -p -v"
alias grep='grep --color=auto'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias mydf='df -h -x squashfs -x tmpfs -x devtmpfs'
alias mypath='echo -e ${PATH//:/\\n}'


# networking
alias ip='ip -c'
alias myip="ip -brief address | grep -Ev '(lo[[:space:]]|DOWN)'"
alias myroute="ip route | grep default"
alias mymac="ip -brief link"

# show top 10 most used commands
alias hist="history | awk '{cmd[\$2]++} END {for(elem in cmd) {print cmd[elem] \" \" elem}}' | sort -n -r | head -10"

# show contents of the directory after changing to it
function cd() {
	if [ $# = 0 ]; then
		builtin cd $HOME
		pwd
    else
		builtin cd "$1"
    	ls -lhA
	fi
}

# find largest files example: Downloads $ find_largest_files
function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}


# grep (search) through your history for previous run commands:  hg vim
function hg() {
    history | grep "$1";
}
