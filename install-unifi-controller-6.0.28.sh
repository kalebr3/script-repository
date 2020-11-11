#!/bin/bash

clear

echo -e "-------------------------------------"
echo -e "|      SOFTWARE INSTALL SCRIPT      |"
echo -e "| Ubiquiti UniFi Network Controller |"
echo -e "|         November 11, 2020         |"
echo -e "|           Kaleb Redman            |"
echo -e "-------------------------------------"
echo -e "| DEPENDENCIES AUTOINSTALLED:       |"
echo -e "|     - binutils                    |"
echo -e "|     - curl                        |"
echo -e "|     - jsvc                        |"
echo -e "|     - openjdk-8-jre-headless      |"
echo -e "|     - openjdk-8-jdk-headless      |"
echo -e "|     - mongodb-org-server-3.6.20   |"
echo -e "-------------------------------------"

echo -e "\nAre you sure you wish to install UniFi Network Controller and it's dependencies?\n"
select yn in "Yes" "No"; do
	case $yn in
		Yes)
			echo -e "\n*************************************************************"
			echo -e " CREATING TEMPORARY DIRECTORY: /tmp/install_unifi_controller "
			echo -e "*************************************************************\n"
			mkdir /tmp/install_unifi_controller
			cd /tmp/install_unifi_controller

			echo -e "\n************************************************"
			echo -e " DOWNLOADING DEPENDENCY: openjdk-8-jre-headless "
			echo -e "************************************************\n"
			wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jre-headless_8u272-b10-0+deb9u1_amd64.deb

			echo -e "\n************************************************"
			echo -e " DOWNLOADING DEPENDENCY: openjdk-8-jdk-headless "
			echo -e "************************************************\n"
			wget http://security.debian.org/debian-security/pool/updates/main/o/openjdk-8/openjdk-8-jdk-headless_8u272-b10-0+deb9u1_amd64.deb

			echo -e "\n***************************************************"
			echo -e " DOWNLOADING DEPENDENCY: mongodb-org-server-3.6.20 "
			echo -e "***************************************************\n"
			wget https://repo.mongodb.org/apt/debian/dists/stretch/mongodb-org/3.6/main/binary-amd64/mongodb-org-server_3.6.20_amd64.deb

			echo -e "\n***************************************************"
			echo -e " DOWNLOADING APPLICATION: UniFi Network Controller "
			echo -e "***************************************************\n"
			wget https://dl.ui.com/unifi/6.0.28/unifi_sysvinit_all.deb

			echo -e "\n*******************************************************"
			echo -e " INSTALLING DEPENDENCIES VIA APT: binutils, curl, jsvc "
			echo -e "*******************************************************\n"
			apt-get update
			apt-get install -y binutils curl jsvc

			echo -e "\n***********************************************"
			echo -e " INSTALLING DEPENDENCY: openjdk-8-jre-headless "
			echo -e "***********************************************\n"
			dpkg -i openjdk-8-jre-headless_8u272-b10-0+deb9u1_amd64.deb

			echo -e "\n***********************************************"
			echo -e " INSTALLING DEPENDENCY: openjdk-8-jdk-headless "
			echo -e "***********************************************\n"
			dpkg -i openjdk-8-jdk-headless_8u272-b10-0+deb9u1_amd64.deb

			echo -e "\n**************************************************"
			echo -e " INSTALLING DEPENDENCY: mongodb-org-server-3.6.20 "
			echo -e "**************************************************\n"
			dpkg -i mongodb-org-server_3.6.20_amd64.deb

			echo -e "\n**************************************************"
			echo -e " INSTALLING APPLICATION: UniFi Network Controller "
			echo -e "**************************************************\n"
			dpkg -i unifi_sysvinit_all.deb

			echo -e "\n*************************************************************"
			echo -e " REMOVING TEMPORARY DIRECTORY: /tmp/install_unifi_controller "
			echo -e "*************************************************************\n"
			cd
			rm -rf /tmp/install_unifi_controller

			echo -e "\nWould you like to restart the server now\n?"
			select yn in "Yes" "No"; do
				case $yn in
					Yes)
						reboot now;;
					No)
						break;;
				esac
			done
			;;
		No)
			break;;
	esac
done