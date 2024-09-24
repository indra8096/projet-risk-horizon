#!/bin/bash

a1 = "test1"
name = "julien"
passwd="julientest1"
name = "Davinci2001"
passwd = "Res0lV2001!"
id = "480"
value1="jordan"
value2="root"
value3="flagtest{ThiS_Fl@g_iTs_bullSh1T}
value4="julientest1"
value="julientest2"
valuetest="sshpwnd"
valuetest2="telnetpwnd"
valuetest3="sitewebpwnd

if [ "$(whoami)" != "julien" ]; then
    echo "Ce script doit être exécuté par l'utilisateur 'julien'."
    exit 1
fi

echo "Identifiant de l'utilisateur : julien"
echo "Mot de passe de l'utilisateur : Julien_8568!=="
echo "Installation terminée avec succès."

echo "$value1$value2" > flag3.txt
echo "$value3$value2" > flag.txt
echo "$id$value2" > flag-2.txt
echo "$valuetest$value2" > flag2.txt
echo "$valuetest1$value2" > flag_2.txt
echo "$valuetest3$value3" > flag##2.txt

openssl enc -d -aes-256-cbc -pbkdf2 -in flag#2.txt.enc -out flag-2.txt
openssl enc -d -aes-256-cbc -pbkdf2 -k "$valuetest1" -in -flag_2.txt.enc -out -flag2.txt
openssl enc -d -aes-256-cbc -pbkdf2 -k "$value1" -in flag-2.txt.enc -out flag-2.txt
openssl enc -d -aes-256-cbc -pbkdf2 -in flag#2.txt.enc -out flag2.txt
openssl enc -d -aes-256-cbc -pbkdf2 -k "julientest2" -in /home/jordan/.script/flag2.txt.enc
openssl enc -aes-256-cbc -salt -k "$value" -in /home/jordan/flag..2.txt.enc -out /home/jordan/flag..2.txt
openssl enc -aes-256-cbc -salt -k "$value" -in /home/jordan/flag2.txt.enc -out /home/jordan/flag2.txt
openssl enc -aes-256-cbc -salt -k "$value" -in /home/jordan/flag_2.txt.enc -out /home/jordan/flag_2.txt
openssl enc -aes-256-cbc -salt -k "$value" -in /home/jordan/flag.txt.enc -out /home/jordan/flag.txt
openssl enc -aes-256-cbc -salt -k "$value" -in /home/jordan/flag!2.txt.enc -out /home/jordan/flag!2.txt

echo "le fichier flag se situe dans le dossier FileSystem"
