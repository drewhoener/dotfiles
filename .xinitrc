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

libinput-gestures-setup start
libinput-gestures-setup autostart

#Get rid of the pesky x cursor
xsetroot -cursor_name left_ptr

#Set Background
bash .fehbg

exec bspwm
