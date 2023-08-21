## System tweaks
sudo loadkeys fr

## Update repos & packages
echo
echo ---- Updating package list ----
echo
sudo apt update           # Update repos

echo
echo ---- Upgrading packages ----    
echo
sudo apt -y upgrade > /dev/null       # Upgrade packages
sudo apt -y autoremove > /dev/null    # Remove unused dependencies
echo Successfully updated packages