#! /bin/bash
# script to extract archive files in Linux

if [ -z $1 ]; then
	echo "No file to extract"
	echo "Usage: $0 FILE_TO_EXTRACT"
else
	case $1 in
		*.zip)
			unzip $1;;
		*.tar.gz)
			tar -zxvf $1;;
		*.tgz)
			tar -zxvf $1;;
		*.tar.bz2)
			tar -jxvf $1;;
		*.tbz2)
			tar -jxf $1;;
		*.tar)
			tar -vxf $1;;
		*.tar.xz)
			 tar -vxf $1;;
		*)
			echo "Sorry I can't. :-("
	esac		
fi