#!/bin/bash

####################

# Hotkey combo:
combo='Ctrl+Alt+2'

# Window classname:
classname='original'

####################
# set the current window classname so we can comeback easily.
xdotool getactivewindow set_window --classname $classname

# switch to obs and perform specified hotkey combo.
xdotool search --name '^OBS .+$' windowactivate --sync key $combo

# return to the first window.
xdotool search --all --classname 'original' windowactivate

#change the classname to something else
xdotool getactivewindow set_window --classname 'old'





