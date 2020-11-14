#!/bin/bash

while getopts s:d:u:p: flag
do
    case "${flag}" in
        s) source=${OPTARG};;
        d) destination=${OPTARG};;
        u) username=${OPTARG};;
        p) password=${OPTARG};;
    esac
done

echo -e "\nAbout to sync IMAP mail for $username from $source to $destination\n"
read -p "Are you sure you wish to continue? (y|n) > " -n 1 -r
echo -e "\n"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    imapsync --nosslcheck --automap --exclude "Junk E-mail" \
        --host1 $source --user1 $username --password1 $password \
        --host2 $destination --user2 $username --password2 $password
fi