##
#########################################################################
##
##      Title: .bashrc                  Date: 23 October 2012 
##
##      Author: Travis P. Bonfigli
##
##      Purpose: The purpose of this file is to set up my Bash shell
##		 environment with my aliases, functions, and Bash
##		 specific shell options.
##
##      Last Updated: 5 December 2014
##
#########################################################################
##
## Environment Settings ...
##
set -o vi
set -o ignoreeof
set -o noclobber
##
## Aliases
##
#alias   ff='~/bin/seeker.bash'
alias	p6='ping6 -v -I eno16777736'
alias	jan14='cal 1 2014'
alias	feb14='cal 2 2014'
alias	mar14='cal 3 2014'
alias	apr14='cal 4 2014'
alias	may14='cal 5 2014'
alias	jun14='cal 6 2014'
alias	jul14='cal 7 2014'
alias	aug14='cal 8 2014'
alias	sep14='cal 9 2014'
alias	oct14='cal 10 2014'
alias	nov14='cal 11 2014'
alias	dec14='cal 12 2015'
alias   dec50='cal 12 2050'
alias   dec60='cal 12 2060'
##
alias	jan15='cal 2 2015'
alias	feb15='cal 2 2015'
alias	mar15='cal 3 2015'
alias 	sublime='/usr/bin/sublime_text_3/sublime_text'
alias   c=clear
alias   h=history
alias   l='ls -ali --color=always'
#alias   ls='ls -al --color=none'
alias   mo=more
alias   t=telnet
alias   u=uptime
alias   w=who
##
## Shell options...
shopt   -s      cdspell
shopt   -s      cdable_vars
shopt   -s      checkhash
shopt   -s      cmdhist
#shopt   -s      dotglob
shopt   -s      histappend
##
## My custom aliases...
##
alias encr='shc -f ${1}'
alias ax='chmod u+x'
alias rx='uchmod u-x'
alias aw='chmod u+w'
alias rw='chmod u-w'
alias ar='chmod u+r'
alias rr='chmod u-r'
##alias l='ls -lai'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias ......='cd ../../../../../../'
alias c=clear
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'
alias rightnow='date +"%T"'
alias nowdate='date +"%d:%m:%Y"'
alias 5ping='ping -c 5'
alias updateme='sudo yum update'
alias updatemey='sudo yum -y update'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias sys='systemctl list-unit-files --type=service'
##
## pathmunge function ()
##
pathmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}
##
## pathmunge2 function ()
##
pathmunge () {
        if ! echo $PATH | /bin/egrep -q "(^|:)$1($|:)" ; then
           if [ "$2" = "after" ] ; then
              PATH=$PATH:$1
           else
              PATH=$1:$PATH
           fi
        fi
}
##
## refresh to simply source both the .bash_profile and .bashrc files...
##
refresh () {
	source ~/.bash_profile
}

echo "You have just sourced your .bashrc file..."

PS1='[\u@\h]:[\w]: '
PS2='Did you forget something...PS2> '
PS4='xtrace--> $0 $LINENO: '
# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH PS1 PS2 PS3 PS4

##
## End of file...
