## Change packages to be installed below
pkgs="git prettyping btop spice-vdagent"

## System tweaks
sudo dpkg-reconfigure keyboard-configuration #Configure keyboard

## Update repos & packages
echo
echo ---- Updating repos \& Upgrading packages ----
echo
sudo apt update > /dev/null           # Update repos
sudo apt -y upgrade &> /dev/null   # Upgrade packages
echo Successfully updated packages

## Install & configure tools
# Zsh & Starship
echo
echo '---- Installing ZSH ----'
echo
sudo apt -y install zsh starship > /dev/null # Install zsh & starship
wget https://github.com/harvxld/autoconf/raw/master/dotfiles/.zshrc
cp .zshrc ~/.zshrc   # grab zshrc file from github repo & copy it to proper location
chsh -s $(which zsh)
echo Successfully installed Z-Shell
# System utilities
echo
echo '---- Installing System Utilities ----'
echo
sudo apt -y install $pkgs > /dev/null
echo "Deployment finished."; echo "Please logout and login back to your account to switch to Z-Shell.