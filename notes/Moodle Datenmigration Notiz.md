## 🛠️ Schritte zur Migration

### 📦 1. **Backup auf der alten VM erstellen**

#### Moodle-Dateien sichern:

`sudo tar czf moodle.tgz /var/www/html/moodle sudo tar czf moodledata.tgz /var/www/moodledata`

#### Datenbank sichern:

`mysqldump -u root -p moodle > moodle.sql`

Kopiere dann `moodle.tgz`, `moodledata.tgz` und `moodle.sql` **auf deinen Host-Rechner oder direkt in die neue Docker-Umgebung** (z. B. mit `scp` oder `rsync`).

---

### 🐳 2. **Docker-Umgebung vorbereiten**

Erstelle ein `docker-compose.yml` mit Moodle & MariaDB (ich kann dir eins vorbereiten, wenn du willst).

Starte dann die Umgebung:

`docker-compose up -d`

---

### 📁 3. **Daten in Docker übertragen**

#### Moodle-Dateien (Code):

Entpacke `moodle.tgz` und ersetze den Moodle-Ordner im Container:

`docker cp moodle/. <moodle-container>:/var/www/html/`

#### moodledata:

Das Gleiche für `moodledata`:

`docker cp moodledata/. <moodle-container>:/var/www/moodledata/`

Achte darauf, dass die **Rechte** stimmen:

`docker exec -it <moodle-container> chown -R www-data:www-data /var/www/html /var/www/moodledata`

---

### 🧠 4. **Datenbank importieren**

Kopiere `moodle.sql` in den DB-Container:

`docker cp moodle.sql <db-container>:/tmp/ docker exec -it <db-container> bash mysql -u moodle -pmoodlepass moodle < /tmp/moodle.sql`

---

### 🧪 5. **Testen**

- Öffne Moodle im Browser (z. B. [http://localhost:8080](http://localhost:8080))
    
- Teste Login, Kurse, Inhalte
    
- Prüfe Berechtigungen, Bilder, Dateien
    

---

### 💡 6. **Konfiguration prüfen**

In `config.php` (im Moodle-Hauptverzeichnis):

- DB-Zugangsdaten anpassen
    
- `wwwroot` auf neue URL setzen (z. B. `http://localhost:8080`)
    
- `dataroot` anpassen, falls Pfad sich ändert