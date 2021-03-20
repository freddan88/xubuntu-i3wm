#!/bin/sh

################################
# DO NOT EDIT BELOW THIS LINE! #
################################

if [ "$(id -u)" != "0" ]; then
	echo " "
		echo "PLEASE RUN THIS SCRIPT AS ROOT OR SUDO"
	echo " "
	exit
fi

echo " "
    echo "INITIALIZE" && sleep 4
    apt install apt-transport-https ca-certificates gnupg-agent software-properties-common -y

echo " "
    echo "ADDING GBG-KEYS TO SYSTEM" && sleep 4
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

echo " "
    echo "ADDING PERSONAL PACKAGE ARCHIVES" && sleep 4
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -yn
    add-apt-repository ppa:linuxgndu/sqlitebrowser -yn
    add-apt-repository ppa:serge-rider/dbeaver-ce -yn
    add-apt-repository ppa:regolith-linux/stable -yn
    apt-get update

echo " "
    echo "INSTALLING SOFTWARE" && sleep 4
    apt-get install sqlitebrowser dbeaver-ce i3-wm ssh zip sudo ufw gufw net-tools gimp thunderbird gparted synaptic neofetch nitrogen imagemagick libreoffice \
    compton arc-theme ayu-theme sqlite3 ubuntu-restricted-extras gnome-icon-theme xfce4-appmenu-plugin flatpak snapd nano git apache2 libsodium23 libpcre3 pwgen \
    php php-{bcmath,cli,common,curl,gd,mbstring,mysql,opcache,readline,sqlite3,xml,zip} libapache2-mod-php php-common php-imagick php-pear php-cgi php-phpseclib \
    imagemagick imagemagick-common imagemagick-6-common imagemagick-6.q16 imagemagick-6.q16hdri libmagickcore-6.q16-6 libmagickwand-6.q16-6 libmagickwand-6.q16hdri-6 \
    openssl libapache2-mpm-itk libmagickcore-6.q16hdri-3-extra libmagickcore-6.q16-6-extra ffmpeg ghostscript net-tools docker-ce docker-ce-cli containerd.io \
    fonts-ubuntu-font-family-console ttf-ubuntu-font-family python3 python3-pip build-essential libssl-dev libffi-dev python3-dev curl wget fail2ban \
    mysql-server mysql-client mysql-workbench-community libmysqlclient21 wget curl unzip zip -y

    snap install code --classic
    snap install spotify postman insomnia
    
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak install flathub com.github.alecaddd.sequeler

echo " "
    echo "DOWNLOADING PACKAGES" && sleep 4
    # sed "s/v//g" <<< "v2.225"

    URL_MONOFONT="https://github.com/JetBrains/JetBrainsMono/releases/download/v2.225/JetBrainsMono-2.225.zip"
    wget -q $URL_MONOFONT && unzip -qqo JetBrainsMono*.zip && cd fonts/ttf && cp JetBrainsMono*.ttf /usr/share/fonts/

    URL_MONGODB_COMPASS="https://github.com/mongodb-js/compass/releases/download/v1.26.0/mongodb-compass_1.26.0_amd64.deb"
    wget -q $URL && apt install ./mongodb-compass_*_amd64.deb -y

    LATEST_MYSQL=$(curl -s https://dev.mysql.com/downloads/repo/apt/ | grep mysql-apt-config | cut -d'(' -f2 | cut -d')' -f1)
    wget -q https://dev.mysql.com/get/$LATEST_MYSQL && apt install ./mysql-apt-config_*_all.deb -y
    
    wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    apt install ./google-chrome-stable_current_amd64.deb -y

    wget -q https://getcomposer.org/installer && chmod 755 installer
    php ./installer && mv composer.phar /usr/local/bin/composer

    LATEST_COMPOSE=$(curl -s https://github.com/docker/compose/releases/latest | cut -d'"' -f2)
    LATEST_VERSION=$(echo $LATEST_COMPOSE | cut -d'/' -f8)
    wget -q https://github.com/docker/compose/releases/download/$LATEST_VERSION/docker-compose-Linux-x86_64
    mv docker-compose-Linux-x86_64 docker-compose && chmod 755 docker-compose

echo " "
    echo "DOWNLOADING WALLPAPER" && sleep 4
    cd /usr/share/backgrounds
    wget -q https://img.wallpapersafari.com/desktop/1920/1080/95/51/LEps6S.jpg
    mv LEps6S.jpg linux-wallpaper-01.jpg

echo " "
exit