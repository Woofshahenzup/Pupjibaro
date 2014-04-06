#!/bin/sh
#beryl-gui 
#josejp2424


export TEXTDOMAIN=beryl.sh
export OUTPUT_CHARSET=UTF-8

berylgui='
<window title="'$(gettext 'Beryl manager')'">
<vbox>
<pixmap>
<input file>/usr/share/pixmaps/beryl-manager1.png</input>
</pixmap>
<text>
<label> .</label>
</text> 
<hbox>
<text>
<label>"'$(gettext 'Enable Beryl')'"</label>
</text>	
<button justify="6">
<input file>/usr/share/pixmaps/beryl-manager1.png</input>
<action>/usr/share/beryl-pinstall/beril_startup &</action>
<action>gtkdialog-splash -close box -bg orange -icon "/root/Beryl-0.2.1-9-lxde/usr/share/pixmaps/beryl-manager.png" -timeout 3 -text "Beryl activado" &</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Disable Beryl.')'"</label>
</text>
<button justify="2">
<input file>/usr/share/pixmaps/beryl-manager1.png</input>
<action>/usr/share/beryl-pinstall/beryl-openbox &</action>
<action>gtkdialog-splash -close box -bg orange -icon "/root/Beryl-0.2.1-9-lxde/usr/share/pixmaps/beryl-manager.png" -timeout 3 -text "Beryl Desactivado pero debe reiniciar servidor x para completar la operacion." &</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Beryl Manager .')'"</label>
</text>
<button>
<input file>/usr/share/pixmaps/beryl-manager1.png</input>
<action>beryl-manager &</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Beryl config. manager.')'"</label>
</text>
<button>
<input file>/usr/share/pixmaps/beryl-settings1.png</input>
<action>beryl-settings &</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Beryl simple config. manager.')'"</label>
</text>
<button>
<input file>/usr/share/pixmaps/beryl-settings1.png</input>
<action>beryl-settings-simple &</action>
</button>
</hbox>
<hbox>
<text>
<label>"'$(gettext 'Emerald themes manager.')'"</label>
</text>
<button>
<input file>/usr/share/pixmaps/emerald.png</input>
<action>emerald-theme-manager &</action>
</button>
</hbox>
<text>
<label> .</label>
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
' gtkdialog3 --program=berylgui	

