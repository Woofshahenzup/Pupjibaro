#!/bin/sh
#by josejp2424
#internationalized (nilsonmorales)
export TEXTDOMAIN=Poweraplay_tray_puppy night
export OUTPUT_CHARSET=UTF-8

gtkdialog-splash -fontsize "small" -close box -bg white -timeout 10 -text "'$(gettext 'WARNING!!!!  Low battery.')'" -icon /usr/share/icons/battery_low.png  &

		
		