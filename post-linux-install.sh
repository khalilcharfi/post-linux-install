# Update and upgrade
sudo apt-get update && sudo apt-get update

# Install vim:
sudo apt-get install -y vim	

# Install php
sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt -y install php7.4

# Install php addition packages:
sudo apt-get install -y php7.4-bcmath
sudo apt-get install -y php7.4-bz2
sudo apt-get install -y php7.4-intl
sudo apt-get install -y php7.4-mysql
sudo apt-get install -y php7.4-mbstring
sudo apt-get install -y php7.4-gd

# Install NodeJS:
sudo apt-get install -y nodejs

# Install NPM:
sudo apt-get install -y npm

# Install yarn:
sudo apt update
sudo apt install -y yarn

# Avoid using sudo with n:
# make cache folder and take ownership:
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n

#Take ownership of node install destination folders:
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

# Install NodeJS version manager:
npm install -g n

# Install composer
wget https://getcomposer.org/installer
mv installer composer-setup.php
HASH="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Composer installer verified'; } else { echo 'Composer installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer


# Install Laravel Installer globally:
composer global require "laravel/installer=~1.1"

# Install curl:
sudo apt-get install -y curl

# Install powerline fonts:
sudo apt-get install -y fonts-powerline

# Install OhMyZSH:
sudo apt-get install -y zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set zsh as default shell:
chsh -s $(which zsh)

# Install xclip
sudo apt-get install xclip


# Create backup for the current linux installation:
sudo add-apt-repository "deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B
sudo apt update
sudo apt install systemback

# Install docker:
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-commmon

#Add the GPG Key for official docker repository:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add docker repository to apt sources:
sudo add-apt-repository "deb [arch=amd64 https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install -y docker-ce

sudo systemctl status docker

# Execute docker commmand without sudo
sudo usermod -aG docker ${USER}

# Install PostgreSQL:
sudo apt-get install postgresql postgresql-contrib

# Install redis:
sudo apt-get install -y redis-server
sudo systemctl enable redis-server.service

# Install php-redis extension:
sudo apt-get install php-redis
