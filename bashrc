PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lal='ls -Al'
alias l='ls -CF'

if [ -f .pyconrun.sh ]; then
    exec ./.pyconrun.sh
fi
