FROM moodlehq/moodle-php-apache:8.3

# System-Paketliste aktualisieren und nötige Tools installieren
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      git \
      wget \
      unzip \
      zip \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Moodle klonen (Branch anpassen nach Bedarf)
RUN git clone --branch MOODLE_401_STABLE https://github.com/moodle/moodle.git /var/www/html

COPY config.php /var/www/html/config.php

RUN sed -ri 's@(Directory /var/www/html>.*)AllowOverride None@\1AllowOverride All@' \
      /etc/apache2/apache2.conf \
 && sed -ri 's@(#ServerName).*@\1 localhost@' /etc/apache2/apache2.conf

# Besitz- und Rechtevergabe
RUN chown -R www-data:www-data /var/www/html /var/www/moodledata \
 && chmod -R 755 /var/www/html \
 && chmod -R 0777 /var/www/moodledata

