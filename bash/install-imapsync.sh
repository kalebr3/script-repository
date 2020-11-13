#!/bin/bash

clear

echo -e "-------------------------------------"
echo -e "|      SOFTWARE INSTALL SCRIPT      |"
echo -e "|             IMAP Sync             |"
echo -e "|         November 13, 2020         |"
echo -e "|           Kaleb Redman            |"
echo -e "-------------------------------------"
echo -e "| DEPENDENCIES AUTOINSTALLED:       |"
echo -e "|     - libauthen-ntlm-perl         |"
echo -e "|     - libcgi-pm-perl              |"
echo -e "|     - libcrypt-openssl-rsa-perl   |"
echo -e "|     - libdata-uniqid-perl         |"
echo -e "|     - libencode-imaputf7-perl     |"
echo -e "|     - libfile-copy-recursive-perl |"
echo -e "|     - libfile-tail-perl           |"
echo -e "|     - libio-socket-inet6-perl     |"
echo -e "|     - libio-socket-ssl-perl       |"
echo -e "|     - libio-tee-perl              |"
echo -e "|     - libhtml-parser-perl         |"
echo -e "|     - libjson-webtoken-perl       |"
echo -e "|     - libmail-imapclient-perl     |"
echo -e "|     - libparse-recdescent-perl    |"
echo -e "|     - libmodule-scandeps-perl     |"
echo -e "|     - libreadonly-perl            |"
echo -e "|     - libregexp-common-perl       |"
echo -e "|     - libsys-meminfo-perl         |"
echo -e "|     - libterm-readkey-perl        |"
echo -e "|     - libtest-mockobject-perl     |"
echo -e "|     - libtest-pod-perl            |"
echo -e "|     - libunicode-string-perl      |"
echo -e "|     - liburi-perl                 |"
echo -e "|     - libwww-perl                 |"
echo -e "|     - libtest-nowarnings-perl     |"
echo -e "|     - libtest-deep-perl           |"
echo -e "|     - libtest-warn-perl           |"
echo -e "|     - make                        |"
echo -e "|     - cpanminus                   |"
echo -e "-------------------------------------"

echo -e "\nAre you sure you wish to install IMAP Sync and it's dependencies?\n"
select yn in "Yes" "No"; do
	case $yn in
		Yes)
			cd /tmp

            echo -e "\n*********************************"
			echo -e " INSTALLING DEPENDENCIES VIA APT "
			echo -e "*********************************\n"
			apt-get update
			apt-get install -y \
				libauthen-ntlm-perl \
				libcgi-pm-perl \
				libcrypt-openssl-rsa-perl \
				libdata-uniqid-perl \
				libencode-imaputf7-perl \
				libfile-copy-recursive-perl \
				libfile-tail-perl \
				libio-socket-inet6-perl \
				libio-socket-ssl-perl \
				libio-tee-perl \
				libhtml-parser-perl \
				libjson-webtoken-perl \
				libmail-imapclient-perl \
				libparse-recdescent-perl \
				libmodule-scandeps-perl \
				libreadonly-perl \
				libregexp-common-perl \
				libsys-meminfo-perl \
				libterm-readkey-perl \
				libtest-mockobject-perl \
				libtest-pod-perl \
				libunicode-string-perl \
				liburi-perl \
				libwww-perl \
				libtest-nowarnings-perl \
				libtest-deep-perl \
				libtest-warn-perl \
				make \
				cpanminus
			
			echo -e "\n************************************"
			echo -e " DOWNLOADING APPLICATION: IMAP Sync "
			echo -e "************************************\n"
			wget https://raw.githubusercontent.com/imapsync/imapsync/master/imapsync

			echo -e "\n***********************************"
			echo -e " INSTALLING APPLICATION: IMAP Sync "
			echo -e "***********************************\n"
			chmod -x imapsync
			mv imapsync /usr/bin/

			echo -e "\n***********************************************"
			echo -e " SUCCESSFULLY INSTALLED APPLICATION: IMAP Sync "
			echo -e "***********************************************\n"
			;;
        No)
			break;;
	esac
done