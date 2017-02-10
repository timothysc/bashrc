# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export GOPATH=~/work/spaces/Go
export GOROOT=~/.gimme/versions/go1.7.linux.amd64
export KPATH=$GOPATH/src/k8s.io/kubernetes
export SCRIPTS=$HOME/work/spaces/bashrc/scripts
export PATH=$KPATH/third_party/etcd:$KPATH/_output/bin:$GOROOT/bin:$GOPATH/bin:$PATH:$SCRIPTS
export KERN_DIR=/usr/src/kernels/`uname -r` 


alias grep='grep --color=auto --exclude-dir=_output --exclude=*.svg' 
alias sudo='sudo "PATH=$PATH" -E'
