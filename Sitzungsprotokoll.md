### Sitzung vom YYYY-MM-DD

**Ort:** Random ahh zimmer
**Zeit:** 15:00- 15:08
**Leitung:** Jonas Sieber
**Protokollführer:** Silas Gubler

### Teilnehmer
- Silas Gubler
- david Kästli
- Jonas Sieber
- Oliver Lux
### Beschlüsse und Diskussionen

### 🔹 Allgemeine Fragen

1. Welche spezifischen Anforderungen bestehen an die neue Moodle-Version?
aktuelle version moodle 
zu neuster version 
daten auch in die neue version migrieren

neue lösung min 2 container 
webserver
datenbank

1. Gibt es besondere Funktionen oder Plugins, die übernommen werden müssen?
alles, nichts zu machen
auf local host 
alte sollte noch auf port 8080 laufen
neue unter anderem port 80
eigenes moodle image

1. Welche Nutzerrollen und Berechtigungen sind erforderlich?
    
2. Gibt es geplante Erweiterungen oder zukünftige Anforderungen?
    

### 🔹 Technische Fragen

1. Welche Server-Ressourcen stehen für das neue System zur Verfügung?
nein, keine einschränkungen egal wo. konfigurations dateien in github

1. Gibt es Einschränkungen bezüglich der eingesetzten Technologien (Docker, Datenbank, PHP-Version)?
    
2. Wie soll die Migration durchgeführt werden (Big Bang oder schrittweise)?
    
### 🔹 Datenmigration

1. Welche Daten müssen migriert werden (Kurse, Benutzer, Dateien, Konfigurationen)?
    ja alle
2. Gibt es eine Möglichkeit zur Testmigration vor der finalen Umsetzung?
    
3. Welche Testfälle sollen für die Validierung der Migration herangezogen werden?
   wie anforderungen testen, beweisen das es funktioniert
   testfälle von anforderungen

### 🔹 Einführung und Abnahme

1. Wer ist für die Abnahme der Migration zuständig?
    
2. Welche Kriterien müssen erfüllt sein, damit die Migration als erfolgreich gilt?
    
    vmadmin
    Riethuesli>12345
## backup
in container lösung einfaches backup machen
in doku konzept für backup erstellen


### Anforderungen

| Anforderung                  | Beschreibung                                                                                                                             | Funktional | Nicht-Funktional |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------- | ---------------- |
| Migration der Moodle-Version | Die bestehende Moodle-Version soll auf die neueste Version migriert werden.                                                              | ✅          |                  |
| Docker-Container             | Die neue Lösung muss mindestens **zwei Docker-Container** beinhalten (Webserver + Datenbank).                                            | ✅          |                  |
| Datenmigration               | Alle bestehenden Daten (Kurse, Benutzer, Dateien, Konfigurationen) müssen übernommen werden.                                             | ✅          |                  |
| Portzuweisung                | Die alte Moodle-Instanz soll unter **Port 8080** weiterhin verfügbar bleiben, während die neue Instanz unter **Port 80** erreichbar ist. | ✅          |                  |
| Eigenes Docker-Image         | Es soll ein eigenes Docker-Image für Moodle verwendet werden.                                                                            | ✅          |                  |
| Testmigration                | Möglichkeit zur **Testmigration** vor der finalen Umsetzung.                                                                             | ✅          |                  |
| Backup-Konzept               | Einfaches Backup-Konzept zur Sicherung der Daten in der Container-Lösung.                                                                |            | ✅                |
| Server-Ressourcen            | Keine Einschränkungen bei der Wahl der Server-Ressourcen.                                                                                |            | ✅                |
| Dokumentation                | Konzept für Backup, Migration und Tests muss in der Dokumentation beschrieben werden.                                                    |            | ✅                |
