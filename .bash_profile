#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

#Add Home Bin to Path
export PATH=$PATH:$HOME/.bin

#Add Java Path
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export PATH=$JAVA_HOME/bin:$PATH

[ ! -s ~/.config/mpd/pid ] && mpd
export MAKEFLAGS='-j 8'
