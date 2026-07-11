#!/bin/bash
# This script runs inside the KIWI chroot phase automatically

# Configure LightDM to autologin the user we just added in the XML
mkdir -p /etc/lightdm/lightdm.conf.d
cat <<EOF > /etc/lightdm/lightdm.conf.d/autologin.conf
[Seat:*]
autologin-user=pikaos
autologin-user-timeout=0
user-session=budgie-desktop
EOF

exit 0
