## Backup guake
#guake --save-preferences guake_prefs

## Backup hotkeys, etc:
dconf dump / > saved_settings.dconf

## Backup gnome terminal settings
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt

