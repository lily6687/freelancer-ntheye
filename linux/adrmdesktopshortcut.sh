#!/bin/sh

if [ -z "$2" ]; then
	echo "Usage: $0 install|uninstall full_path_to_ntheye.desktop"
	exit 0
fi

#(set; ps -ef) > /tmp/aa.txt
SHORTCUT_NAME=`basename "$2"`
INSTALLDIR=`dirname "$2"`
RM_DESKTOP=rmdesktop.txt

if [ "$1" = "install" ]; then
	if [ -n "$HOME" -a -d "$HOME/Desktop" ]; then
		THE_HOME=$HOME
		if [ -n "$SUDO_USER" ]; then
			THE_USR=$SUDO_USER
		else
			THE_USR=$USER
		fi
	else
		THE_USR=`ps -ef|grep 'gnome-software --local-filename.*NthEye_[0-9]\..*.deb'|cut -d\  -f1`
		THE_HOME=`grep $THE_USR /etc/passwd|cut -d: -f6`
	fi
	echo "cp $2 ${THE_HOME}/Desktop/"
	cp -f "$2" "${THE_HOME}/Desktop/"
	DESKTOP_SHORTCUT_FULLPATH=${THE_HOME}/Desktop/${SHORTCUT_NAME}
	echo "chown ${THE_USR}: ${DESKTOP_SHORTCUT_FULLPATH}"
	chown ${THE_USR}: "${DESKTOP_SHORTCUT_FULLPATH}"
	echo "${DESKTOP_SHORTCUT_FULLPATH}" > "${INSTALLDIR}/${RM_DESKTOP}"
elif [ "$1" = "uninstall" ]; then
	DESKTOP_SHORTCUT_FULLPATH=`cat "${INSTALLDIR}/${RM_DESKTOP}"`
	echo "rm -f ${DESKTOP_SHORTCUT_FULLPATH}"
	rm -f "${DESKTOP_SHORTCUT_FULLPATH}"
	rm -f "${RM_DESKTOP}"
else
	echo "Invalid command"
fi

