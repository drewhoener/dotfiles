userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

#set shell location for sxhkd in case I use something different later
export SXHKD_SHELL=/usr/bin/bash

#Enable Java Non-Parenting
export _JAVA_AWT_WM_NONREPARENTING=1

#Import Resources
if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output DVI-D-0 --off --output HDMI-0 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-5 --off --output DP-4 --off --output DP-3 --off --output DP-2 --primary --mode 2560x1440 --pos 2560x0 --rotate normal --output DP-1 --off --output DP-0 --off


#Get rid of the pesky x cursor
xsetroot -cursor_name left_ptr
xinput set-prop 8 284 1

redshift -c ~/.config/redshift/darker.conf &
udiskie -t &
#Set Background
#bash .fehbg

exec bspwm
