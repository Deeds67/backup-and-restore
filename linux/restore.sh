## Restore hotkeys and other configs:
dconf load / < saved_settings.dconf

## Restore guake config
#guake --restore-preferences guake_prefs

## Restore gnome terminal settings
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt

