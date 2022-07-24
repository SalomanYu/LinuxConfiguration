#!/bin/bash

# Update System
sudo apt update && sudo apt upgrade -y
notify-send "System Updated!"

# Install Telegram
sudo apt install telegram-desktop -y
notify-send "Telegram installed!"

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb 
rm $!
notify-send "Chrome installed"

# Install Sublime Text
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text
notify-send "Sublime-text installed!"

# Install  git
sudo apt install git

# Install oh-my-zsh
sudo apt install zsh
sudo apt install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
chsh -s /bin/zsh

# Install VIM
sudo apt install vim -y

# Install NeoVIM
sudo apt install neovim -y
