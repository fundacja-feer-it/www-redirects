#!/bin/bash
whiptail --title "Redirect Engine - Instalator" --msgbox "Ten skrypt zainstaluje serwer przekierowan ." 8 78
cd scripts 
chmod 777 "create.sh"
apt-get update
sudo apt install apache2
sudo a2enmod rewrite
sudo systemctl restart apache2
whiptail --title "Redirect Engine - Instalator" --msgbox "Zainstalowano ." 8 78

