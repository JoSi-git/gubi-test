#!/bin/bash
  
cat <<'EOF'

----------------------------------------------------------------------------------------------------------
  ___  ___    _   __  __              _ _       ___          _             _         _        _ _         
 |   \/ __|_ | | |  \/  |___  ___  __| | |___  |   \ ___  __| |_____ _ _  (_)_ _  __| |_ __ _| | |___ _ _ 
 | |) \__ \ || | | |\/| / _ \/ _ \/ _` | / -_) | |) / _ \/ _| / / -_) '_| | | ' \(_-<  _/ _` | | / -_) '_|
 |___/|___/\__/  |_|  |_\___/\___/\__,_|_\___| |___/\___/\__|_\_\___|_|   |_|_||_/__/\__\__,_|_|_\___|_|

----------------------------------------------------------------------------------------------------------

EOF


# Backup und Anpassung von ports.conf
cp /etc/apache2/ports.conf /etc/apache2/ports.conf.bak
if ! grep -q '^Listen 8080' /etc/apache2/ports.conf; then
  echo 'Listen 8080' >> /etc/apache2/ports.conf
fi

# Backup und Anpassung der VirtualHost-Konfiguration
site_conf="/etc/apache2/sites-available/000-default.conf"
cp "$site_conf" "${site_conf}.bak"
sed -i "s/<VirtualHost \*:80>/<VirtualHost *:8080>/g" "$site_conf"

# Backup und Anpassung von config.php
moodle_cfg="/var/www/html/config.php"
cp "$moodle_cfg" "${moodle_cfg}.bak"
sed -i "s|\\$CFG->wwwroot\s*=.*|\\$CFG->wwwroot = 'http://localhost:8080';|g" "$moodle_cfg"

systemctl reload apache2

echo "Fertig: Apache lauscht nun auf 8080 und Moodle unter http://localhost:8080 erreichbar."
