#!/bin/sh


url="$@"
	
[ -n "$url" ] || { echo "No url; exit" ; exit 1 ; }

ssh bkb@thewindow "/cygdrive/c/cygwin/bin/cygstart.exe  microsoft-edge:$url"
