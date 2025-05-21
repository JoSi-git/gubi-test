#!/bin/bash

# Variables
INSTALL_DIR="/opt/moodle-docker/migration"
LOG_FILE="$INSTALL_DIR/logs/install.log"
SCRIPT_DIR="$(pwd)"
ENV_FILE="$SCRIPT_DIR/Docker/.env"
Ver="V1.0"


# Creating required directories in $INSTALL_DIR
print_cmsg "Creating required directories in $INSTALL_DIR..." | tee -a "$LOG_FILE"
mkdir -p "$INSTALL_DIR/moodle"
mkdir -p "$INSTALL_DIR/moodledata"
mkdir -p "$INSTALL_DIR/db_data"
mkdir -p "$INSTALL_DIR/dumps"
mkdir -p "$INSTALL_DIR/logs/moodle"
mkdir -p "$INSTALL_DIR/logs/apache"
mkdir -p "$INSTALL_DIR/logs/mariadb"

if [[ -f "$ENV_FILE" ]]; then
    source "$ENV_FILE"
    print_cmsg ".env file found and loaded." | tee -a "$LOG_FILE"
else
    print_cmsg ".env file found in $SCRIPT_DIR/Docker. Exiting." | tee -a "$LOG_FILE"
    exit 1
fi

# Copy Docker files
print_cmsg "Copying Docker files from $SCRIPT_DIR/Docker to $INSTALL_DIR..." | tee -a "$LOG_FILE"
cp "$SCRIPT_DIR/Docker/docker-compose.yml" "$INSTALL_DIR/"
cp "$SCRIPT_DIR/Docker/Dockerfile" "$INSTALL_DIR/"
cp "$SCRIPT_DIR/Docker/.env" "$INSTALL_DIR/"

# Clone Moodle repository
print_cmsg "Cloning Moodle repository..." | tee -a "$LOG_FILE"
git clone -b MOODLE_311_STABLE https://github.com/moodle/moodle.git "$INSTALL_DIR/moodle"

# Moodle migration

# Mysql dump
mysqldump -u root -p $MYSQL_ROOT_PASSWORD > $INSTALL_DIR/dumps/moodle_backup.sql

# Copy moodledata
cp -r /var/www/moodledata $INSTALL_DIR

# Add aliases to ~/.bashrc (if not already present)
if ! grep -qE "^alias moodleup=" "$SHELL_RC"; then
    {
        echo ""
        echo "# Moodle Docker aliases"
        echo "alias moodleup='(cd /opt/moodle-docker && docker compose up -d && docker compose ps && xdg-open http://localhost)'"
        echo "alias moodledown='(cd /opt/moodle-docker && docker compose down)'"
        echo "alias moodlebackup='echo \"[WIP] moodlebackup: This function is still under development. For details, see: https://github.com/JoSi-git/m169\"'"
    } >> "$SHELL_RC"
    echo "Aliases 'moodleup', 'moodledown', and 'moodlebackup' added to $SHELL_RC" | tee -a "$LOG_FILE"
else
    print_cmsg "Aliases already exist in $SHELL_RC - skipping addition." | tee -a "$LOG_FILE"
fi


