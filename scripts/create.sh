#!/bin/bash
if [ "$EUID" -ne 0 ];then
    echo "Nie masz uprawnień do wykonania skryptu"
    exit 1
fi
whiptail --title "URL Redirects engine " --msgbox "Skrypt tworzy nowe przekierowanie" 10 60
DOMENA=$(whiptail --title "Zródło" --inputbox "Jaka jest nazwa domeny?" 10 60  3>&1 1>&2 2>&3)
URL=$(whiptail --title "Cel" --inputbox "URL docelowy: " 10 60  3>&1 1>&2 2>&3)

 
sudo mkdir -p /var/www/$DOMENA/public_html
sudo chown -R $USER:$USER /var/www/$DOMENA/public_html
sudo chmod -R 755 /var/www
cd "/var/www/$DOMENA/public_html/"
echo $DOMENA >> .htaccess
fi
