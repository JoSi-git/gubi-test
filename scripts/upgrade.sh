cd /opt/moodle-docker/migration

docker compose up -d


docker exec -u www-data moodle-migration php /var/www/html/admin/cli/upgrade.php --non-interactive
# docker compose down
docker compose down

# docker image git clone moodle version ändern mit sed
# 1) Branch austauschen
sed -i 's/--branch MOODLE_401_STABLE/--branch main/' Dockerfile

# 2) Image neu bauen (ohne Cache, um sicherzugehen)
docker-compose build --no-cache moodle-migration

# 3) Container neu starten
docker-compose up -d

# docker image neu builden
id