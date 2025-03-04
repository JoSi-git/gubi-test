### 🔹 Allgemeine Fragen

1. Welche spezifischen Anforderungen bestehen an die neue Moodle-Version?
aktuelle moodleversion in der vm
daten in der alten moodle version müssen auch in der neuen verfügbar sind
ein container web
einer db
    
2. Gibt es besondere Funktionen oder Plugins, die übernommen werden müssen?
keine plugins
alte version unter port 8080 und dann auch kenntzeichnen, neue umgebung unter 80

1. Welche Nutzerrollen und Berechtigungen sind erforderlich?
    
4. Gibt es geplante Erweiterungen oder zukünftige Anforderungen?
    

### 🔹 Technische Fragen

1. Welche Server-Ressourcen stehen für das neue System zur Verfügung?
    keine beschränkungen auf os, ort auch
2. Gibt es Einschränkungen bezüglich der eingesetzten Technologien (Docker, Datenbank, PHP-Version)?
    keine beschränkungen auf os, ort auch
3. Wie soll die Migration durchgeführt werden (Big Bang oder schrittweise)?

konfigurationen in einem gitrepo
### 🔹 Datenmigration

1. Welche Daten müssen migriert werden (Kurse, Benutzer, Dateien, Konfigurationen)?
    
2. Gibt es eine Möglichkeit zur Testmigration vor der finalen Umsetzung?
    testfälle: nur beweissen wie man das gemacht hat, also screenshot
3. Welche Testfälle sollen für die Validierung der Migration herangezogen werden?

admin user: vmadmin
pswd: Riethuesli>12345
für admin login vm und moodle

eigenes moodle img nehmen

backup:
backuplösung, in der doku zeigen wie man einfach ein backup machen könnte
### 🔹 Einführung und Abnahme

1. Wer ist für die Abnahme der Migration zuständig?
    
2. Welche Kriterien müssen erfüllt sein, damit die Migration als erfolgreich gilt?


Funktionale Anforderungen

Nicht Funktionale Anforderungen