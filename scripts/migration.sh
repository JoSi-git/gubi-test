#!/bin/bash

# ================== VARIABLEN ===================
MOODLE_DIR="/var/www/html"
MOODLEDATA_DIR="/var/www/moodledata"
BACKUP_DIR="/root/moodle-backup-$(date +%F_%H-%M)"
DB_NAME="moodle"
DB_USER="root"
DB_PASS="Riethuesli>12345"
NEW_MOODLE_ZIP="https://download.moodle.org/download.php/direct/stable400/moodle-latest-400.tgz"

# =============== BACKUPS ERSTELLEN ==============
echo "🔄 Erstelle Backup unter $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"
cp -r "$MOODLE_DIR" "$BACKUP_DIR/moodle-code"
cp -r "$MOODLEDATA_DIR" "$BACKUP_DIR/moodledata"
mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db.sql"

# =============== NEUE MOODLE LADEN ===============
echo "⬇️ Lade neue Moodle-Version..."
cd /tmp || exit 1
wget -O moodle-latest.tgz "$NEW_MOODLE_ZIP"
tar xzf moodle-latest.tgz

# ========== ALTE MOODLE INSTALLATION ERSETZEN =========
echo "🔁 Ersetze alte Moodle-Dateien (config.php bleibt)..."
rm -rf "$MOODLE_DIR.old"
mv "$MOODLE_DIR" "$MOODLE_DIR.old"
mv /tmp/moodle "$MOODLE_DIR"
cp "$MOODLE_DIR.old/config.php" "$MOODLE_DIR/"

# ============ BERECHTIGUNGEN SETZEN ============
echo "🔐 Setze Dateiberechtigungen..."
chown -R www-data:www-data "$MOODLE_DIR"
chown -R www-data:www-data "$MOODLEDATA_DIR"

# ============ UPGRADE STARTEN ============
echo "🚀 Upgrade auslösen..."
/usr/bin/php "$MOODLE_DIR/admin/cli/upgrade.php" --non-interactive --allow-unstable --agree-license

echo "✅ Moodle-Upgrade abgeschlossen."
