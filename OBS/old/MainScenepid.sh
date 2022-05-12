#!/bin/bash

####################

# Hotkey combo:
combo='Ctrl+Alt+2'

####################

xdotool getactivewindow set_window --classname 'original'

# Get current window name
#getFirstWindowName=$(xdotool getactivewindow getwindowname)
#getFirstWindowPid=$(xdotool getactivewindow getwindowpid)

# Save current window name in variable
#firstWindowName=$getFirstWindowName
#firstWindowPid=$getFirstWindowPid


# switch to obs and perform specified hotkey combo.
xdotool search --name '^OBS .+$' windowactivate --sync key $combo

# return to the first window.
#xdotool search --pid $firstWindowPid windowactivate

xdotool search --all --classname 'original' windowactivate

xdotool getactivewindow set_window --classname 'no'





