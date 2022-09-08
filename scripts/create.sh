#!/bin/bash
if [ "$EUID" -ne 0 ];then
    echo "Nie masz uprawnień do wykonania skryptu"
    exit 1
fi
whiptail --title "URL Redirects engine " --msgbox "Skrypt tworzy nowe przekierowanie" 10 60
DOMAIN=$(whiptail --title "Zródło" --inputbox "Jaka jest nazwa domeny?" 10 60  3>&1 1>&2 2>&3)
URL=$(whiptail --title "Cel" --inputbox "URL docelowy: " 10 60  3>&1 1>&2 2>&3)

if [ $DOMAIN = 'feer.org.pl' ]; then
   # if body
whiptail --title "URL Redirects engine " --msgbox "Domena nie moze wskazywac na feer.org.pl" 10 60

else
   # else body
fi



sudo mkdir -p /var/www/$DOMAIN/public_html
sudo chown -R $USER:$USER /var/www/$DOMAIN/public_html
sudo chmod -R 755 /var/www
cd "/var/www/$DOMAIN/public_html/"
echo $DOMAIN >> .htaccess



