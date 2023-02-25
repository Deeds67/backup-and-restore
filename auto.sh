## Update
#sudo apt -y update && sudo apt -y upgrade

## Install ZSH
#sudo apt -y install zsh

## Install Oh My ZSH
#yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Install guake
#sudo apt -y install guake

## Load guake script
## NOTE: Backup with guake `--save-preferences guake_prefs`
#guake --restore-preferences guake_prefs

## Create startup script
#sudo rm ~/.config/autostart/.desktop
#sudo mkdir ~/.config/autostart
#sudo touch ~/.config/autostart/.desktop

## Add Guake to startup script
#echo "[Desktop Entry]
#Type=Application
#Name=Guake
#Exec=/usr/bin/guake
#X-GNOME-Autostart-enabled=true" | sudo tee -a ~/.config/autostart/.desktop > /dev/null


## Install Gnome tweaks for disabling windows key
#sudo apt-get install -y gnome-tweaks


## Restore hotkeys and other configs:
## NOTE: backup with `dconf dump / > saved_settings.dconf`
dconf load / < saved_settings.dconf
