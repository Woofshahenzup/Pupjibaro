#/bin/bash -x
#By due204
#Hacked up byjosejp2424
# Alarma.
## i18n i10n nilsonmorales 28032014
export TEXTDOMAIN=alarma.sh
export OUTPUT_CHARSET=UTF-8

# Evita el salto de linea en los nombres de ficheros con espacios.
IFS=$(echo -en "\n\b");
#dialogo
text1=`echo $text1 "$(gettext 'Please set the correct time.')"`
text2=`echo $text2 "$(gettext 'Please set a alarm sound.')"`
text3=`echo $text3 "$(gettext 'This alert will sound in.. ')"`
text4=`echo $text4 "$(gettext 'Sounding........     ')"`

#titulo y version.
titulo=`echo $titulo "$(gettext 'Alarm')"`
version=`echo $version -0-1`
titulo1=`echo $titulo1 "$(gettext 'Wake up.....')"`

#Formato hora
formato=`echo $formato "$(gettext 'Format')"`
formatoh=`echo $formatoh "$(gettext 'Alarm')"`
formatoseg=`echo $formatoseg "$(gettext 'Seconds')"`
formatomin=`echo $formatomin "$(gettext 'Minuts')"`
formatodia=`echo $formatodia "$(gettext 'Days')"`
Tiempo=`echo $Tiempo "$(gettext 'Time')"`
#sonido
Sonido1=`echo $Sonido1 "$(gettext 'Sound')"`

# Ubicacion de la imegen del reloj.
METRO=`pwd`
METRON=`echo $METRON /usr/share/icons/reloj2.png`

# Grafica 1.
TEMPO=`yad --skip-taskbar --center --title=$titulo$version {--image,--window-icon}=$METRON --form --item-separator=, --field=$formato:CB $formatoseg,$formatomin,$formatoh,$formatodia --field=$Tiempo:NUM --field=$Sonido1:FL`

# Tiempo.
REDONDA=`echo "$TEMPO" | cut -d '|' -f2 | cut -d ',' -f1`
# Verifica que el tiempo no este en cero.
if [ $REDONDA -le 0 ]; then
	yad --image=dialog-question --center --no-buttons {--image,--window-icon}=$METRON --text=$text1 &&
	exit	
	alarma.sh
	exit
fi

# Sonido
MODERATE=`echo "$TEMPO" | cut -d '|' -f3`

# Verifica que el sonido no este vacio.
if [ $MODERATE = "(null)" ]; then
	yad --image=dialog-question --center --no-buttons {--image,--window-icon}=$METRON --text=$text2 && 
	exit	
	alarma.sh
	exit	
fi

# Formato
BLANCA=`echo "$TEMPO" | cut -d '|' -f1`

if [ $BLANCA = "$(gettext 'Sec.')" ]; then
	NEGRA=s

elif [ $BLANCA = "$(gettext 'Min')" ]; then
	NEGRA=m

elif [ $BLANCA = "$(gettext 'Hours')" ]; then
	NEGRA=h

elif [ $BLANCA = "$(gettext 'Days')" ]; then
	NEGRA=d
fi

# Si $REDONDA y $BLANCA estan vacias termina el script.
if [ -z $REDONDA ]; then
	exit
elif [ -z $BLANCA ]; then
	exit
fi

# Grafica 2.
yad --image=dialog-question --title=$titulo$version --center {--image,--window-icon}=$METRON --button="gtk-ok:0" --auto-kill --text=$text3$REDONDA$BLANCA &

# Tiempo en que la alarma sonara.
sleep $REDONDA$NEGRA 

# Mata a la grafica 2
kill -9 `ps -aux | grep "yad" | awk '{ print $2 }' | head -n1`

# El reproductor reprduce nuestro sonido.
mplayer -quiet "$MODERATE" &

sleep 1

# Grafica 3
yad --image=dialog-question --title=$titulo1 --center {--image,--window-icon}=$METRON --button="gtk-ok:0" --text=$text4

# Mata a el Mplayer
kill -9 `ps -aux | grep "mplayer" | awk '{ print $2 }' | head -n1`

exit

# Final del camino.
