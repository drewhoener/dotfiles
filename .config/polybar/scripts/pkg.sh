#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
color=$( xrdb -query | grep '*color4[^0-9]' | awk '{print $NF}')
if [[ "$check" != "0" ]]
then
    echo "$pac %{F$color}%{F-} $aur"
fi
