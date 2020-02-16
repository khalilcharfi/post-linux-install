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

# Avoid using sudo with n:
# make cache folder and take ownership:
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n

#Take ownership of node install destination folders:
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share

# Install NodeJS version manager:
npm install -g n

# Install composer
sudo apt install -y composer

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
