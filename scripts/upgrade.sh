cd /opt/moodle-docker/migration
###########################
# upgrade to versuion 401 #
###########################

# start container
docker compose up -d
# upgrade database
echo "upgrade moodle to 401"
docker exec -u www-data moodle-migration php /var/www/html/admin/cli/upgrade.php --non-interactive
# docker compose down
docker compose down

##########################
# upgrade to version 402 #
##########################

# replace moodle version
sed -i 's/--branch MOODLE_401_STABLE/--branch MOODLE_402_STABLE/' Dockerfile
# rebuild docker image
docker build -t migration-moodle:latest --no-cache -f Dockerfile .
# restart container
docker compose up -d
# upgrade database
echo "upgrade moodle to 402"
docker exec -u www-data moodle-migration php /var/www/html/admin/cli/upgrade.php --non-interactive
# docker compose down
docker compose down

##########################
# upgrade to version 500 #
##########################
# replace moodle version
sed -i 's/--branch MOODLE_402_STABLE/--branch MOODLE_500_STABLE/' Dockerfile
# replace apache version
sed -i 's|^FROM moodlehq/moodle-php-apache:7\.4|FROM moodlehq/moodle-php-apache:8.2|' Dockerfile
# rebuild docker image
docker build -t migration-moodle:latest --no-cache -f Dockerfile .
# restart container
docker compose up -d
# upgrade database
echo "upgrade moodle to 500"
docker exec -u www-data moodle-migration php /var/www/html/admin/cli/upgrade.php --non-interactive
# docker compose down
docker compose down
