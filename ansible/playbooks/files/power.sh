#!/bin/bash
set -eu

# Disable DPMS
xset s off -dpms
echo 'xset s off -dpms' > $HOME/.xsessionrc

# Turn off delay timer
gsettings set org.gnome.desktop.session idle-delay 0

# Disable lock screen
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'

### Power plugin settings

# Disable power plug in
gsettings set org.gnome.settings-daemon.plugins.power active 'false'

# Do nothing when on lid close
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'

# Do nothing on inactive timer
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Ignore power buttons
gsettings set org.gnome.settings-daemon.plugins.power button-suspend    'nothing'
gsettings set org.gnome.settings-daemon.plugins.power button-hibernate  'nothing'
gsettings set org.gnome.settings-daemon.plugins.power button-sleep      'nothing'
gsettings set org.gnome.settings-daemon.plugins.power button-power      'nothing'

### Screensaver options

# Disable screen locking
gsettings set org.gnome.desktop.screensaver lock-enabled 'false'

# Clear lock timer
gsettings set org.gnome.desktop.screensaver lock-delay 0

# Do not activate on idle
gsettings set org.gnome.desktop.screensaver idle-activation-enabled 'false'

