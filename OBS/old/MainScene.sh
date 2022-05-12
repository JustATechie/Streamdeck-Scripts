#!/bin/bash

####################

# Hotkey combo:
combo='Ctrl+Alt+2'

####################

# Get current window name
getFirstWindowName=$(xdotool getactivewindow getwindowname)

# Save current window name in variable
firstWindowName=$getFirstWindowName
#echo $firstWindowName

# switch to obs and perform specified hotkey combo.
xdotool search --name '^OBS .+$' windowactivate --sync key $combo

# return to the first window.
xdotool search --name $firstWindowName windowactivate





