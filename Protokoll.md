J: "Gibt es spezifische Anforderungen an die neue Moodle Version, was muss die neue Version über der alten erfüllen oder ist es einfach nur ein Upgrade der Software?"
Luxi: "Es hat Die Veraltete Version in der VM Die ich Ihnen Bereitstelle, Wichtig, dass es wirklich die neueste Version von Moodle ist und auch wirklich alle Daten bestehen von der alten, alle User können sich wie gehabt einloggen, gleich viel rechte haben und noch alle kürze haben.
Was auch noch wichtig ist, dass das ganz in einer Container Lösung laufen sollte, die Alte Version ist ganz einfach ein Apache Webserver, eine MYSQL Datenbank und ein PHP fix auf der Maschine.
**Nun hätte ich gerne auf der neuen wie zwei Container, zum einten der Webserver und PHP, der Zweite ist dann die Datenbank**"
Json: "Gibt es dann noch zusätzliche plugins die installiert werden müssen, die Frage hat sich aber Eigentlich schon gelöst, also es muss einfach alles übernommen werden"
Luxi: "Richtig, kann sagen, dass die alte Version keine Zusätzliche Plugins hat, also einfach eine Standard Installation"
Json: "Okay Gut"
Luxi: "Was ich aber froh wäre, wenn das neue System so ist, **dass ich die Neue Version per Localhost aufrufen kann und die Alte unter Localhost:8080**"
Luxi: "Genau, das es dann einfach die Alte Version erkennt und nett wäre es auch noch wenn man kennzeichnen würde das, dass die Alte Version ist"
Json: "Sehr Gut"
Json: "Nun Technische Fragen, gibt es hier noch Ressourcen/Server Einschränkungen, sind wir hier generell irgendwie eingeschränkt wie auch Distros?"
Luxi: "Man kann es machen wo man will, Cloud wäre auch eine Option, in der VM, generell frei hier, schlussendlich will ich auch gar nicht die ganzen Container von Ihnen sondern mir langt es, wenn in der Dokumentation steht bei den Testfällen, es funktioniert, screenshot, das einzige was ich gerne hätte, wäre, wenn allfällige Konfigurationsfiles in einem GitRepo abgelegt sind, damit ich dann auch auf diese zugreifen kann, aber Doku normal im Word"
Json: "Begriff Test Migration, also wir sind hier nicht gebunden durch das abgeben der VM's, richtig?"
Luxi: "Genau"
Json: "Nun zu Testfällen, wie ausführlich hier eingegangen werden muss, in welchem umfang reicht es? Sind Grundlegende Sachen okay?"
Luxi: "Bei den Testfällen müssen sie sich überlegen wie Sie das alles Testen mit den Anforderungen die sie haben, also sie müssen beweisen, dass Sie das so umgesetzt haben und wie Sie das Testen können liegt bei Ihnen.
Es wird so laufen dass sie am Ende alles einmal durch machen und es dann so fortlaufend in den Tests aufnehmen, z.b. Benutzer xy könnte sich mit dem Passwort xy anmelden."
Json: "gibt es eine Doku die beschreibt wie das Moodle aufgebaut ist?"
Luxi: "Nö du schwarze, Sie haben einfach das Moodle zu Verfügung, kann Ihnen auch gerade noch den Admin User sagen wenn sie das wollen für die alte Umgebung"
Json: "Wäre gut "
Luxi: "Also der User ist noch:
**-vmadmin**
**-Riethuesli>12345**"
Luxi: "Schauen sie vielleicht auch noch das sie nicht ein bestehendes Moodle Image nehmen sondern ein eigenes machen"
Json: "Genau haben sie auch erwähnt beim "abheben von der alten version" das, dass so ist"
Luxi: "Noch zum Thema Backup, mich nervt dass bei der Alten Version es schwer ist ein Backup zu machen und schön wäre es, wenn Sie mir (nicht ein muss) in der Contrainerlösung das so gestalten, dass es für mich dann relativ einfach ist ein Backup zu erstellen, backup müssen Sie mir nicht einrichten aber wenn sie mir kurz in der Doku zeigen wie Ich jetzt ein Backup machen könnte"