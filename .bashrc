# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# if [ -d ~/.bashrc.d ]; then
#	for rc in ~/.bashrc.d/*; do
#		if [ -f "$rc" ]; then
#			. "$rc"
#		fi
#	done
#fi
#
#	if [ -f "$rc" ]; then
#			. "$rc"
#		fi
#	done
#fi

# export PS1="\[\033[38;5;213m\]\u\[$(tput sgr0)\] \w \[$(tput sgr0)\]\[\033[38;5;213m\]>\[$(tput sgr0)\] "
# export PS1="\[\033[38;5;75m\]\u\[$(tput sgr0)\]@\h \w \[$(tput sgr0)\]\[\033[38;5;75m\]>\[$(tput sgr0)\] "
# export PS1="\[$(tput bold)\]\[\033[38;5;130m\]\u\[$(tput sgr0)\] \w \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;130m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\u\[$(tput sgr0)\] \w \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"
# BROWN
#export PS1="\[$(tput bold)\]\u\[$(tput sgr0)\] \w \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;130m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]"
# export PS1="\w > "

# Variables
PLAN9="/home/pk/Documents/Builds/plan9port/" export PLAN9
PATH=$PATH:$PLAN9/bin export PATH

CARGO="/home/pk/.cargo/bin/" export CARGO
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:usr/local/go/bin
PATH=$PATH:$CARGO export PATH
PATH=$PATH:"/home/pk/go/bin/"
PATH=$PATH:"/home/pk/Documents/Builds/emsdk"
# /home/pk/Documents/Builds/emsdk/node/14.18.2_64bit/bin
PATH=$PATH:"/home/pk/Documents/Builds/emsdk/upstream/emscripten"

# Zypper features
ZYPP_MULTICURL=0
ZYPP_MEDIANETWORK=1
ZYPP_SINGLE_RPMTRANS=1

QT_SCALE_FACTOR=1

# Aliases
alias jams="ncmpcpp"
alias mg="mg -n"
alias z="zypper"

export GO111MODULE="auto"
export NO_COLOR="true"
export DENO_INSTALL="/home/pk/.deno/"
export PATH="$DENO_INSTALL/bin:$PATH"

export GRIM_DEFAULT_DIR="/home/pk/Pictures/Screenshots"
 
unset rc
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
