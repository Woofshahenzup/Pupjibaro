#!/bin/sh
#Pcmanfm_rox
#josejp2424
### nilsonmorales i18n i10n spanish locales


export TEXTDOMAIN=Pcmanfm_rox
export OUTPUT_CHARSET=UTF-8

Pcmanfm_rox='
<window title="'$(gettext 'Pcmanfm Rox')'">
<vbox>
<pixmap>
<input file>/usr/local/lib/X11/pixmaps/home48.png</input>			
</pixmap>
<text>
<label>""</label>
</text> 
<hbox>
<text>
<label>"'$(gettext 'Set default Pcmanfm.')'"</label>
</text>	
<button justify="6">
<input file>/usr/share/pixmaps/pcmanfm.png</input>
<action>rm -r -f /usr/local/bin/rox & ln -s /usr/bin/pcmanfm /usr/local/bin/rox &</action>
<action>gtkdialog-splash -close box -icon "/usr/share/pixmaps/pcmanfm.png" -bg orange -timeout 6 -text "$(gettext "Pcmanfm a quedado como default del sistema")" &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Set por default Rox.')'"</label>
</text>
<button justify="2">
<input file>/usr/local/lib/X11/pixmaps/home48.png</input>
<action>rm -r -f /usr/local/bin/rox & ln -s /usr/local/bin/rox-real /usr/local/bin/rox &</action>
<action>gtkdialog-splash -close box -icon "/usr/share/pixmaps/pcmanfm.png" -bg orange -timeout 6 -text "$(gettext "Rox a quedado como default del sistema")" &</action>
<action type="exit">CLOSE</action>
</button>
</hbox>
<text>
<label>""</label>
</text>  
<hbox> 
<button justify="7">
<label>'$(gettext 'Exit')'</label>
<input file>/usr/local/lib/X11/mini-icons/mini-tick.xpm</input>
<action type="exit">CLOSE</action>
</button> 
</hbox>
</vbox>
</window>
' gtkdialog3 --program=Pcmanfm_rox	

