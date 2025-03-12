### Sitzung vom 2025-02-26

**Ort:** Eventzimmer 1. UG 
**Zeit:** 15:00 - 15:08  
**Leitung:** Jonas Sieber  
**Protokollführer:** Silas Gubler
**Protokollführer:** David Kästli

### Teilnehmer

- Silas Gubler
- David Kästli
- Jonas Sieber
- Oliver Lux

### Beschlüsse und Diskussionen

#### 🔹 Allgemeine Fragen

1. **Welche spezifischen Anforderungen bestehen an die neue Moodle-Version?**
    
    - Die bestehende Moodle-Version soll auf die neueste Version migriert werden.
    - Daten in der alten Moodle-Version müssen auch in der neuen verfügbar sein.
    - Die neue Lösung soll mindestens zwei Container umfassen: einen Webserver und eine Datenbank.
    - Ein eigenes Docker-Image für Moodle wird verwendet.
    
2. **Gibt es besondere Funktionen oder Plugins, die übernommen werden müssen?**
    
    - Es sind keine Plugins zu übernehmen.
    - Die alte Version soll weiterhin unter Port 8080 laufen, die neue Version unter Port 80.
    
3. **Welche Nutzerrollen und Berechtigungen sind erforderlich?**
    
    - Keine speziellen Angaben.
    
4. **Gibt es geplante Erweiterungen oder zukünftige Anforderungen?**
    
    - Keine speziellen Angaben.

#### 🔹 Technische Fragen

1. **Welche Server-Ressourcen stehen für das neue System zur Verfügung?**
    
    - Keine Einschränkungen hinsichtlich Betriebssystem oder Standort.
    - Konfigurationsdateien werden in einem Git-Repository verwaltet.
    
2. **Gibt es Einschränkungen bezüglich der eingesetzten Technologien (Docker, Datenbank, PHP-Version)?**
    
    - Keine Einschränkungen.
    
3. **Wie soll die Migration durchgeführt werden (Big Bang oder schrittweise)?**
    
    - Konfigurationen werden in einem Git-Repository gespeichert.

#### 🔹 Datenmigration

1. **Welche Daten müssen migriert werden (Kurse, Benutzer, Dateien, Konfigurationen)?**
    
    - Alle Daten sollen migriert werden.
    
2. **Gibt es eine Möglichkeit zur Testmigration vor der finalen Umsetzung?**
    
    - Es wird ein Konzept für eine Testmigration erstellt.
    - Testfälle werden durch Screenshots belegt, um die korrekte Umsetzung zu zeigen.
    
3. **Welche Testfälle sollen für die Validierung der Migration herangezogen werden?**
    
    - Anforderungen müssen getestet und bewiesen werden.
    - Testfälle orientieren sich an den funktionalen Anforderungen.

#### 🔹 Einführung und Abnahme

1. **Wer ist für die Abnahme der Migration zuständig?**
    
    - Nicht spezifiziert.
    
2. **Welche Kriterien müssen erfüllt sein, damit die Migration als erfolgreich gilt?**
    
    - Erfolgreiche Datenmigration und Funktionalität gemäss Anforderungen.

#### 🔹 Backup

- Ein Konzept für ein einfaches Backup der Daten in der Container-Lösung wird erstellt.
- Die Dokumentation muss das Konzept für Backup, Migration und Tests umfassen.

#### 🔹 Zugangsdaten

- **Admin-Benutzer:** vmadmin
- **Passwort:** Riethuesli>12345
- Für den Admin-Login auf der VM und in Moodle zu verwenden.

### Anforderungen

|Anforderung|Beschreibung|Funktional|Nicht-Funktional|
|---|---|---|---|
|Migration der Moodle-Version|Die bestehende Moodle-Version soll auf die neueste Version migriert werden.|✅||
|Docker-Container|Die neue Lösung muss mindestens zwei Docker-Container beinhalten (Webserver + Datenbank).|✅||
|Datenmigration|Alle bestehenden Daten (Kurse, Benutzer, Dateien, Konfigurationen) müssen übernommen werden.|✅||
|Portzuweisung|Die alte Moodle-Instanz soll unter Port 8080 weiterhin verfügbar bleiben, während die neue Instanz unter Port 80 erreichbar ist.|✅||
|Eigenes Docker-Image|Es soll ein eigenes Docker-Image für Moodle verwendet werden.|✅||
|Testmigration|Möglichkeit zur Testmigration vor der finalen Umsetzung.|✅||
|Backup-Konzept|Einfaches Backup-Konzept zur Sicherung der Daten in der Container-Lösung.||✅|
|Server-Ressourcen|Keine Einschränkungen bei der Wahl der Server-Ressourcen.||✅|
|Dokumentation|Konzept für Backup, Migration und Tests muss in der Dokumentation beschrieben werden.||✅|