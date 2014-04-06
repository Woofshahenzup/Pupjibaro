#!/bin/sh
#script to capture with printscreen key "screenshot.sh"
#jibaro-1.0.3 06042014
# nilsonmorales
scrot -b -d 1 -q 98'%d%m%I%M%S.png' -e 'mv $f /root/my-documents/images/'