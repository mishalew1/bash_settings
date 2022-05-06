# Editor
export EDITOR='vi'

# system shortcuts
alias c='clear -x'
alias sudo='sudo '
alias l="ls --color=auto"
alias ll="ls -lFh"
alias la="ls -AlFh"
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
alias myip="ip -o -4 a | awk {'printf (\"%-6s \t %s \n\", \$2, \$4)'} | grep -v 127.0.0.1"
alias myroute="ip route | grep default | awk '{ print \$1, \"gateway\", \$3 }'"
alias mymac="ip -o link | grep -v loopback | awk {'printf (\"%-11s \t %s \n\", \$2, \$17)'}"

# show top 10 most used commands
alias hist="history | awk '{cmd[\$2]++} END {for(elem in cmd) {print cmd[elem] \" \" elem}}' | sort -n -r | head -10"
