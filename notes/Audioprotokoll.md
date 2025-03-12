### Anforderungen an die neue Moodle-Version

#### Jonas Sieber:

> Gibt es spezifische Anforderungen an die neue Moodle-Version? Was muss die neue Version über der alten erfüllen, oder ist es einfach nur ein Upgrade der Software?

#### Oliver Lux:

> Es hat die veraltete Version in der VM, die ich Ihnen bereitstelle. Wichtig ist, dass es wirklich die neueste Version von Moodle ist und auch wirklich **alle Daten bestehen von der alten**.  
> Alle User sollen sich wie gehabt einloggen können, gleich viele Rechte haben und noch alle Kurse sehen.
> 
> Was auch noch wichtig ist: Das Ganze sollte in einer **Container-Lösung** laufen. Die alte Version ist einfach ein Apache-Webserver, eine MySQL-Datenbank und ein PHP-Fix auf der Maschine.
> 
> **Ich hätte gerne auf der neuen Version zwei Container:**
> 
> - Der eine für den **Webserver und PHP**.
> - Der andere für die **Datenbank**.

---

### Plugins und Zugriff

#### Jonas Sieber:

> Gibt es zusätzliche Plugins, die installiert werden müssen? Die Frage hat sich aber eigentlich schon geklärt – es muss einfach alles übernommen werden.

#### Oliver Lux:

> Richtig. Ich kann sagen, dass die alte Version keine zusätzlichen Plugins hat, also einfach eine Standardinstallation.

---

### Zugriff auf die Versionen

#### Oliver Lux:

> Was ich aber froh wäre, ist, wenn das neue System so ist, **dass ich die neue Version per `localhost` aufrufen kann und die alte unter `localhost:8080`**.
> 
> Genau, damit es dann einfach die alte Version erkennt. Nett wäre es auch, wenn man kennzeichnen würde, dass das die alte Version ist.

---

### Technische Anforderungen

#### Jonas Sieber:

> Sehr gut. Nun, technische Fragen: Gibt es hier noch Ressourcen- oder Server-Einschränkungen? Sind wir hier generell irgendwie eingeschränkt, auch was Distributionen angeht?

#### Oliver Lux:

> Man kann es machen, wo man will – Cloud wäre auch eine Option, oder in der VM. Generell frei hier.
> 
> Schlussendlich will ich auch gar nicht die ganzen Container von Ihnen, sondern es reicht mir, wenn in der Dokumentation bei den Testfällen steht, dass es funktioniert. Ein Screenshot reicht.
> 
> Das Einzige, was ich gerne hätte, wäre, wenn allfällige Konfigurationsfiles in einem **Git-Repo** abgelegt sind, damit ich darauf zugreifen kann.
> 
> Dokumentation normal im Word-Format.

---

### Testmigration

#### Jonas Sieber:

> Begriff Testmigration: Wir sind hier nicht gebunden durch das Abgeben der VMs, richtig?

#### Oliver Lux:

> Genau.

---

### Testfälle

#### Jonas:

> Nun zu den Testfällen: Wie ausführlich müssen diese sein? Reichen grundlegende Tests?

#### Oliver Lux:

> Bei den Testfällen müssen Sie sich überlegen, wie Sie das alles testen, basierend auf den Anforderungen, die Sie haben.  
> Sie müssen beweisen, dass Sie es so umgesetzt haben.  
> Wie Sie das testen, liegt bei Ihnen.
> 
> Es wird so laufen, dass Sie am Ende alles einmal durchgehen und es dann fortlaufend in den Tests aufnehmen. Zum Beispiel: **Benutzer XY kann sich mit dem Passwort XY anmelden.**

---

### Dokumentation des alten Moodle-Systems

#### Jonas Sieber:

> Gibt es eine Dokumentation, die beschreibt, wie das alte Moodle aufgebaut ist?

#### Oliver Lux:

> Nein, Sie haben einfach das Moodle zur Verfügung. Ich kann Ihnen aber gerade noch den Admin-User für die alte Umgebung sagen, wenn Sie das wollen.

#### Jonas Sieber:

> Wäre gut.

---

### Zugang zur alten Umgebung

#### Oliver Lux:

> Der User ist:
> 
> - **Benutzername:** vmadmin
> - **Passwort:** Riethuesli>12345

---

### Moodle-Image

#### Oliver Lux:

> Schauen Sie vielleicht auch noch, dass Sie nicht ein bestehendes Moodle-Image nehmen, sondern ein eigenes erstellen.

#### Jonas Sieber:

> Genau, das haben Sie auch erwähnt beim „Abheben von der alten Version“.

---

### Backup

#### Oliver Lux:

> Noch zum Thema Backup: Mich nervt, dass es bei der alten Version schwer ist, ein Backup zu machen. Schön wäre es, wenn Sie mir (nicht ein Muss) in der Container-Lösung das so gestalten, dass es für mich dann relativ einfach ist, ein Backup zu erstellen.
> 
> Sie müssen das Backup nicht einrichten, aber wenn Sie mir kurz in der Dokumentation zeigen, wie ich ein Backup machen könnte, wäre das super.
