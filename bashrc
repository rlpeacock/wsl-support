# MS's new terminal has some unreadable color combinations
source $HOME/bin/tweakcolors.sh
# WSL has a weird umask
umask 022
# see https://github.com/microsoft/terminal/issues/2642
alias emacs="TERM=rxvt emacs"
# similar problems in vim
alias vim="TERM=rxvt vim"
# no, I don't want to start in my windows home dir
cd $HOME
# fix resolve.conf if I'm vpn'd in
$HOME/bin/fixresolve
# if I've started an agent, just use that
if [ -e $HOME/.ssh_agent_setup ]; then
	source $HOME/.ssh_agent_setup
fi
