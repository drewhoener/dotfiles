#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

#Add Home Bin to Path
export PATH=$PATH:$HOME/.bin
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export GEM_HOME=$HOME/.gem


#Add Java Path
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export PATH=$JAVA_HOME/bin:$PATH

export MAKEFLAGS='-j 8'

export WINEARCH='win64'
export WINEPREFIX="/home/drew/.wine-battle"
export WINEDEBUG='-all'

[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf
