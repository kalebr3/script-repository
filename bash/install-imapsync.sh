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
            break;;
        No)
			break;;
	esac
done