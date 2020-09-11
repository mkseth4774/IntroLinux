##
##
export GREP_OPTIONS='--color=always'
export HISTSIZE=10000
export HISTFILE=~/.bash_history
export PS1='[\u@\h]:[\w]$: '
export PS2='Did you forget something...PS2> '
export PS4='xtrace--> $0 $LINENO: '
# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

#export PATH PS1 PS2 PS3 PS4 GREP_OPTIONS HISTSIZE HISTFILE
##
## My custom functions...
##
function fw-conns ()
{
	~/bin/expect/fw-conns.exp
}

function keygen1024 ()
{
	dd if=/dev/urandom count=1024 | sha1sum
}

function keygen4096 ()
{
	dd if=/dev/urandom count=4096 | sha1sum
}

echo "You have just sourced your .bash_profile file..."
source ~/.bashrc

## 
## End of file...
