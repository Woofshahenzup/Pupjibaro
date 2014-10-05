#!/bin/sh
#Youtube-dl_Gui
#josejp2424
#l10n nilsonmorales
#dejan555 download/convert mp3 option 11062014
export TEXTDOMAIN=Youtube_dl-gui
export OUTPUT_CHARSET=UTF-8
AUDIOPARAMS="--extract-audio --audio-format mp3 -l"
export Youtubedl='<window title="youtube dl-gui 0.2" icon-name="youtube-gui" window_position="1">
<vbox>
<pixmap><input file>/usr/share/pixmaps/youtube-gui.png</input></pixmap>
<hbox>
<text>
<label>'$(gettext 'Title:.')'</label>
</text>
<entry tooltip-text="'$(gettext 'Paste the video URL here')'" activates-default="true">
<variable>ent2</variable>
</entry>
<button>
<input file icon="gtk-ok"></input>
<label>'$(gettext 'Go')'</label>
<action>exit:EXIT &</action>
</button>
<button tooltip-text="'$(gettext 'Exit program')'">
<label>'$(gettext 'Cancel')'</label>
<input file stock="gtk-cancel"></input>
<action>exit:ABORT</action>
</button>
</hbox>
<frame>
<checkbox>
<label>'$(gettext 'Download and convert to mp3')'</label>
<variable>DOWNAUDIO</variable>
</checkbox>
</frame>
</vbox>
</window>
'
#gtkdialog3 --program=Youtubedl
#Evaluate variables
I=$IFS; IFS=""
for STATEMENTS in $(gtkdialog3 --program=Youtubedl); do
eval $STATEMENTS
done
IFS=$I
#Exit script if "Canel" is clicked
[ "$EXIT" = "ABORT" ] && exit
#If not, continue and run gui again:
/usr/bin/Youtube-dl.sh &
#Check if url left empty and exit in that case
[ "$ent2" = "" ] && exit
#If DOWNAUDIO is checked (true) use this command:
[ "$DOWNAUDIO" = "true" ] && exec urxvt +sb -fn 9x15 -bg black -fg white -title youtube-dl -e youtube-dl $AUDIOPARAMS "$ent2" &
#If DOWNAUDIO is unchecked (false) use this command:
[ "$DOWNAUDIO" = "false" ] && urxvt +sb -fn 9x15 -bg black -fg white -title youtube-dl -e youtube-dl "$ent2" &