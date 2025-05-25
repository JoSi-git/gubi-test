cd /opt/moodle-docker/migration

docker compose up -d


docker exec -u www-data moodle-migration php /var/www/html/admin/cli/upgrade.php --non-interactive
# docker compose down
docker compose down

# docker image git clone moodle version ändern mit sed
# 1) Branch austauschen
sed -i 's/--branch MOODLE_401_STABLE/--branch main/' Dockerfile

# apache version ändern
sed -i 's|^FROM moodlehq/moodle-php-apache:7\.4|FROM moodlehq/moodle-php-apache:8.1|' Dockerfile

# 2) Image neu bauen (ohne Cache, um sicherzugehen)
docker build -t migration-moodle:latest --no-cache -f Dockerfile .


# 3) Container neu starten
docker compose up -d
