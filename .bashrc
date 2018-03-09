# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# golang settings for local overrides
# eval "$(curl -sL https://raw.githubusercontent.com/travis-ci/gimme/master/gimme | GIMME_GO_VERSION=1.9.1 bash)"
export GOVER=1.9.4
export GOMAXPROCS=$(nproc)
export GOROOT=$HOME/.gimme/versions/go$GOVER.linux.amd64
export GIMME_ENV="$HOME/.gimme/envs/go$GOVER.env"

export GOPATH=$HOME/work/spaces/Go
export KPATH=$GOPATH/src/k8s.io/kubernetes
export HEPT=$GOPATH/src/github.com/heptio
export TPATH=$GOPATH/src/github.com/timothysc
export SCRIPTS=$HOME/work/spaces/bashrc/scripts
export PATH=$KPATH/third_party/etcd:$KPATH/_output/bin:$GOROOT/bin:$GOPATH/bin:$SCRIPTS:$PATH
export KERN_DIR=/usr/src/kernels/`uname -r` 

# kubernetes local cluster configs
export KUBECONFIG=$HOME/.kube/config
# TODO - kubeadm default install and setup.

alias grep='grep --color=auto --exclude-dir=_output --exclude=*.svg' 
alias sudo='sudo "PATH=$PATH" -E'
alias etcdctl='ETCDCTL_API=3 etcdctl'
alias prettyjson='python -m json.tool'
# TODO update alias ~= GOMAXPROCS*3
alias kmake='make GOFLAGS="-p 20"'
# TODO create alias
# alias gimmiego = 'eval "$(curl -sL https://raw.githubusercontent.com/travis-ci/gimme/master/gimme | GIMME_GO_VERSION=$GOVER bash)"'
