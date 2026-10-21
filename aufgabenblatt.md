# Linux-Auftrag: Erste Schritte im Terminal

**Klasse:** 9. Klasse, Sekundarschule A  **Zeit:** maximal 2 Stunden  **Vorwissen:** keines

Du brauchst für diesen Auftrag kein Vorwissen. Alles, was du wissen musst, steht auf diesen Blättern.
**Lies jeden Text genau durch, bevor du etwas tippst.** Bei diesem Auftrag wird nicht nur geprüft,
ob du die Befehle eintippen kannst, sondern auch, ob du verstanden hast, was du gelesen hast.

---

## Wichtige Regeln – bitte zuerst lesen!

1. Alle deine Ergebnisse speicherst du im Ordner **`Ergebnisse`** auf deinem Laptop.
   Diesen Ordner erstellst du in Aufgabe 0.
2. Jede Aufgabe hat einen **Namen**, zum Beispiel `aufgabe1_betriebssystem`.
   Deine Datei für diese Aufgabe heisst genau gleich, mit **`.txt`** am Ende:
   `aufgabe1_betriebssystem.txt`
3. In der **ersten Zeile** jeder Ergebnisdatei steht immer dein **Vorname und Nachname**.
4. Schreibe Antworten in **ganzen Sätzen**, wenn nach einer Erklärung gefragt wird.
5. Wenn du nicht weiterkommst: Lies den Text **nochmals** durch. Hilft das nicht, frag die Betreuungsperson.

### Übersicht

| Nr. | Name der Aufgabe (= Dateiname)  | Thema                         | Zeit   |
|-----|---------------------------------|-------------------------------|--------|
| 0   | –                               | Vorbereitung                  | 15 Min |
| 1   | `aufgabe1_betriebssystem`       | Was ist Linux?                | 15 Min |
| 2   | `aufgabe2_terminal`             | Erste Befehle                 | 15 Min |
| 3   | `aufgabe3_ordner`               | Ordner und Pfade              | 20 Min |
| 4   | `aufgabe4_dateien_lesen`        | Dateien anschauen             | 10 Min |
| 5   | `aufgabe5_ordnung`              | Aufräumen                     | 20 Min |
| 6   | `aufgabe6_schatzsuche`          | Versteckte Dateien            | 15 Min |
| 7   | `aufgabe7_rueckblick`           | Was hast du gelernt?          | 10 Min |
| ★   | `zusatz_suchen`                 | Freiwillig: Text durchsuchen  |   –    |
| ★   | `bonus_hilfe`                   | Freiwillig: Hilfe benutzen    |   –    |

Die Aufgaben 0 bis 7 sind Pflicht. Die zwei Aufgaben mit ★ machst du nur, wenn du vorher fertig bist.

---

## Aufgabe 0 – Vorbereitung (keine Datei)

### Das Terminal öffnen

Das **Terminal** ist ein Fenster, in das du Befehle eintippst. Statt mit der Maus zu klicken,
sagst du dem Computer mit Text, was er tun soll.

So öffnest du es: Klicke auf das Menü bzw. die Suche und tippe **Terminal**.

Im Terminal siehst du etwa so etwas:

```
anna@laptop:~$
```

Das ist die **Eingabeaufforderung**. Sie bedeutet: «Ich warte auf deinen Befehl.»
Hinter dem `$` tippst du einen Befehl und drückst dann die **Enter-Taste** (⏎).
Erst mit Enter wird der Befehl ausgeführt.

> **Tipp:** Befehle in einem grauen Kasten kannst du genau so abtippen oder kopieren.
> Im Terminal fügst du mit `Ctrl` + `Shift` + `V` ein (nur `Ctrl` + `V` funktioniert dort nicht).

### Spezielle Zeichen auf der Schweizer Tastatur

| Zeichen | So tippst du es                                                   |
|---------|-------------------------------------------------------------------|
| `~`     | `AltGr` + `^` (Taste rechts neben `'`), danach die **Leertaste**  |
| `/`     | `Shift` + `7`                                                     |
| `>`     | `Shift` + `<` (Taste links neben `Y`)                             |
| `_`     | `Shift` + `-`                                                     |
| `"`     | `Shift` + `2`                                                     |
| `:`     | `Shift` + `.`                                                     |
| `\|`    | `AltGr` + `7` (ein senkrechter Strich)                            |
| `<`     | Taste links neben `Y`                                             |
| `(` `)` | `Shift` + `8` und `Shift` + `9`                                   |

### Zwei Tricks, die dir viel Arbeit sparen

- **Pfeiltaste nach oben `↑`:** holt den letzten Befehl zurück. So musst du nicht alles neu tippen.
- **Tabulator-Taste `⇥`** (links neben `Q`): ergänzt Namen von Dateien und Ordnern automatisch.
  Tippe z. B. `cd linux-a` und drücke `⇥` – der Rest wird ergänzt.

### Die Übungsdateien herunterladen

Für diesen Auftrag brauchst du Übungsdateien. Du lädst sie mit einem einzigen Befehl aus dem
Internet herunter. **Kopiere** diesen Befehl am besten (er ist lang!) oder tippe ihn ganz genau ab.
Alles gehört in **eine** Zeile. Drücke danach Enter:

```
bash <(curl -fsSL https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh || wget -qO- https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh)
```

Was passiert dabei?

- `curl` und `wget` sind zwei Programme, die Dateien aus dem Internet herunterladen. Die Adresse
  dahinter sagt, welche Datei. Nicht auf jedem Computer sind beide installiert.
- `||` bedeutet «oder»: Wenn `curl` nicht funktioniert, wird `wget` versucht.
  Erscheint die Meldung `curl: command not found`, ist das also **kein Problem**.
- Die Buchstaben mit Bindestrich (`-fsSL`, `-qO-`) sind **Optionen**. Sie sagen den Programmen,
  dass sie still arbeiten sollen. Bei `-qO-` ist das Zeichen in der Mitte ein grosses **O** wie
  «Otto», keine Null.
- `bash <( ... )` führt die heruntergeladene Datei aus. Sie erstellt deine Übungsdateien und
  installiert Programme, die noch fehlen.

**Passwort?** Wenn ein Programm fehlt, fragt der Computer vielleicht nach deinem Passwort.
Tippe es ein und drücke Enter. Beim Tippen siehst du **keine Zeichen** – das ist normal.
Kennst du das Passwort nicht, melde dich bei der Betreuungsperson.

Wenn alles geklappt hat, steht am Schluss **«Fertig!»**. Jetzt hast du in deinem persönlichen
Ordner zwei neue Ordner: `linux-auftrag` (die Übungsdateien) und `Ergebnisse` (für deine Antworten).

> Steht nicht «Fertig!» da? Kontrolliere den Befehl Buchstabe für Buchstabe. Mit der
> Pfeiltaste `↑` holst du ihn zurück und kannst ihn verbessern.

### Antworten schreiben mit dem Editor «nano»

Für deine Antworten benutzt du das Programm **nano**. nano ist ein **Editor**, also ein einfaches
Schreibprogramm, das direkt im Terminal läuft. So öffnest du eine Datei:

```
nano ~/Ergebnisse/aufgabe1_betriebssystem.txt
```

- Wenn die Datei noch nicht existiert, wird sie beim Speichern neu erstellt.
- Mit den **Pfeiltasten** bewegst du dich im Text. Die Maus funktioniert in nano meistens **nicht**.
- **Speichern:** `Ctrl` + `O`, danach **Enter** drücken.
- **nano verlassen:** `Ctrl` + `X`.

Unten in nano steht z. B. `^O Speichern`. Das Zeichen `^` bedeutet dort die Taste `Ctrl`.

> Wenn du nano mit `Ctrl` + `X` verlässt, ohne vorher gespeichert zu haben, fragt nano, ob du
> speichern willst. Drücke dann `J` (oder `Y`) und danach Enter.

---

## Aufgabe 1 – `aufgabe1_betriebssystem`

**Lies zuerst den Text. Beantworte danach die Fragen.**

### Lesetext: Was ist ein Betriebssystem und was ist Linux?

Ein Computer besteht aus vielen Teilen, zum Beispiel Prozessor, Speicher und Bildschirm. Damit sie
zusammenarbeiten, braucht er ein **Betriebssystem**. Es ist das wichtigste Programm: Es startet als
Erstes, verwaltet die Dateien und sorgt dafür, dass andere Programme wie ein Browser oder ein Spiel
laufen können. Das Betriebssystem ist also der **Vermittler** zwischen dir, deinen Programmen und
den Geräten im Computer.

Bekannte Betriebssysteme sind **Windows** von Microsoft und **macOS** von Apple. Ein drittes ist
**Linux**. Der finnische Student **Linus Torvalds** startete es **1991** und stellte seinen
Programmcode ins Internet. Bald halfen Tausende Menschen auf der ganzen Welt mit, Linux zu
verbessern – bis heute. Linux ist **Open Source**: Jeder darf den Code anschauen, verändern und
weitergeben, und Linux ist **kostenlos**.

Wahrscheinlich hast du Linux schon benutzt: Es steckt in fast allen **Android-Handys**, in vielen
Smart-TVs und auf den meisten **Servern** im Internet. Server sind die Computer, auf denen
Webseiten laufen.

Es gibt viele Versionen von Linux, die **Distributionen**, zum Beispiel Ubuntu oder Debian. Man
kann es mit Autos vergleichen: Der **Kern** von Linux ist der **Motor**. Verschiedene Firmen bauen
verschiedene **Autos** um diesen Motor herum. Sie sehen unterschiedlich aus, fahren aber mit dem
gleichen Motor.

Fachleute benutzen bei Linux oft das **Terminal**, also Text-Befehle statt der Maus. Viele
Aufgaben gehen so **schneller** als mit vielen Mausklicks. Ausserdem haben Server oft **keinen
Bildschirm** – man steuert sie aus der Ferne nur mit Text-Befehlen.

### Fragen

Öffne die Datei mit:

```
nano ~/Ergebnisse/aufgabe1_betriebssystem.txt
```

Schreibe in die erste Zeile deinen Vor- und Nachnamen. Beantworte dann die Fragen.
Schreibe vor jede Antwort die Nummer der Frage (z. B. `1)`).

1. Erkläre **in deinen eigenen Worten** (nicht abschreiben!), was ein Betriebssystem ist.
   Schreibe 1–2 Sätze.
2. Nenne die zwei Betriebssysteme aus dem Text, die **nicht** Linux sind. Antworte mit genau
   **zwei Wörtern**.
3. Richtig oder falsch? Schreibe **R** oder **F** und begründe jede Antwort mit einem Satz.
   - a) Wer ein Android-Handy hat, benutzt eigentlich Linux.
   - b) Für Linux muss man eine teure Lizenz kaufen.
   - c) Linus Torvalds arbeitet bis heute ganz allein an Linux.
4. Im Text wird Linux mit Autos verglichen. Was ist bei diesem Vergleich der **Motor** und was
   sind die **Autos**?
5. Nenne **zwei Gründe** aus dem Text, warum Fachleute das Terminal benutzen.

Speichern (`Ctrl` + `O`, Enter) und nano verlassen (`Ctrl` + `X`).

---

## Aufgabe 2 – `aufgabe2_terminal`

### Lesetext: Deine ersten Befehle

Ein **Befehl** ist ein Wort, das du ins Terminal tippst. Der Computer führt ihn aus und zeigt
dir das Ergebnis an. Hier sind drei einfache Befehle:

| Befehl   | Was er macht                                                                         |
|----------|--------------------------------------------------------------------------------------|
| `whoami` | zeigt, mit welchem **Benutzernamen** du angemeldet bist («who am I» = «wer bin ich»). |
| `date`   | zeigt das aktuelle **Datum** und die **Uhrzeit**.                                     |
| `echo`   | gibt einfach den Text aus, den du dahinter schreibst. Beispiel: `echo Hallo`          |

**Ergebnisse in eine Datei schreiben:** Normalerweise erscheint das Ergebnis eines Befehls auf
dem Bildschirm. Mit dem Zeichen **`>`** kannst du das Ergebnis stattdessen in eine **Datei**
schreiben lassen. Es gibt aber einen wichtigen Unterschied:

- **`>`** (ein Zeichen) schreibt in die Datei und **löscht dabei alles, was vorher drin war**.
- **`>>`** (zwei Zeichen) hängt das Ergebnis **unten an**. Was vorher in der Datei stand, **bleibt erhalten**.

Beispiel: `date >> notizen.txt` hängt Datum und Uhrzeit unten an die Datei `notizen.txt` an.

Der Ordner `~/Ergebnisse` bedeutet: der Ordner `Ergebnisse` in **deinem persönlichen Ordner**.
Das Zeichen `~` ist eine Abkürzung für deinen persönlichen Ordner. Mehr dazu in Aufgabe 3.

### Aufträge

1. Tippe `whoami` und drücke Enter. Tippe danach `date` und drücke Enter. Schau dir die Ergebnisse an.
2. Schreibe nun deinen Namen in die Ergebnisdatei. Ersetze dabei *Vorname Nachname* durch
   **deinen** Namen:
   ```
   $ echo "Vorname Nachname" > ~/Ergebnisse/aufgabe2_terminal.txt
   ```
3. Hänge jetzt das Ergebnis von `whoami` **und danach** das Ergebnis von `date` an diese Datei an.
   **Überlege genau, ob du `>` oder `>>` brauchst!** Dein Name darf dabei nicht verloren gehen.
4. Kontrolliere deine Datei mit nano. Es müssen **3 Zeilen** darin stehen: dein Name, dein
   Benutzername und das Datum.
5. Schreibe in nano unten in die Datei eine Antwort auf diese Frage:
   **Was wäre passiert, wenn du in Auftrag 3 das Zeichen `>` statt `>>` benutzt hättest?**
   Speichern und nano verlassen.

---

## Aufgabe 3 – `aufgabe3_ordner`

### Lesetext: Ordner und Pfade

Auf jedem Computer sind die Dateien in **Ordnern** abgelegt. Ordner können wieder Ordner
enthalten – wie eine Schachtel, in der kleinere Schachteln liegen.

Jede Benutzerin und jeder Benutzer hat einen **persönlichen Ordner**. Das Terminal startet immer
dort. Die Abkürzung für den persönlichen Ordner ist **`~`** (Tilde).

Der Weg zu einem Ordner oder einer Datei heisst **Pfad**. Ein Pfad ist wie eine Adresse.
Die einzelnen Ordner werden mit einem **Schrägstrich `/`** getrennt. Beispiel:

```
~/linux-auftrag/schule/stundenplan.txt
```

Das bedeutet: «Im persönlichen Ordner gibt es den Ordner `linux-auftrag`, darin den Ordner
`schule`, und darin die Datei `stundenplan.txt`.»

Im Terminal bist du immer **in genau einem Ordner**. Diese Befehle helfen dir:

| Befehl      | Was er macht                                                                        |
|-------------|-------------------------------------------------------------------------------------|
| `pwd`       | zeigt den ganzen Pfad des Ordners, in dem du **gerade bist** («print working directory»). |
| `ls`        | zeigt, was im aktuellen Ordner **drin ist** («list»).                               |
| `ls -F`     | wie `ls`, aber hinter jeden **Ordner** wird ein `/` geschrieben. So erkennst du, was ein Ordner und was eine Datei ist. |
| `cd ordner` | wechselt **in** den Ordner mit diesem Namen («change directory»).                     |
| `cd ..`     | geht **eine Stufe zurück**, also in den Ordner, in dem der aktuelle Ordner liegt.   |
| `cd`        | (ohne etwas dahinter) bringt dich **immer zurück** in deinen persönlichen Ordner.  |

> **Wichtig:** Zwischen dem Befehl und dem, was dahinter kommt, steht immer ein **Leerzeichen**.
> `cd ..` ist richtig, `cd..` funktioniert nicht. Ausserdem achtet Linux auf
> **Gross- und Kleinschreibung**: `Schule` und `schule` sind zwei verschiedene Namen!

### Aufträge

1. Schreibe deinen Namen in die Datei (wie in Aufgabe 2, Auftrag 2), aber mit dem Dateinamen
   `aufgabe3_ordner.txt`.
2. Wechsle in den Ordner `linux-auftrag`: `cd ~/linux-auftrag`
3. Hänge das Ergebnis von `ls -F` an deine Ergebnisdatei an.
4. Wechsle in den Ordner `schule` und von dort in den Ordner `faecher`.
5. Hänge das Ergebnis von `pwd` an deine Ergebnisdatei an.
6. Tippe zweimal `cd ..` und danach `pwd`. Merke dir, wo du jetzt bist.
7. Öffne deine Ergebnisdatei mit nano und beantworte unten diese Fragen:
   - a) Wie viele **Ordner** und wie viele **Dateien** liegen direkt im Ordner `linux-auftrag`?
   - b) Wie viele Dateien liegen im Ordner `faecher`?
   - c) In welchem Ordner warst du nach dem zweimaligen `cd ..` in Auftrag 6? Warum?
   - d) Du bist irgendwo tief in einem Ordner und hast dich «verlaufen». Mit welchem Befehl
        kommst du am schnellsten zurück in deinen persönlichen Ordner?

---

## Aufgabe 4 – `aufgabe4_dateien_lesen`

### Lesetext: Dateien anschauen

Um den Inhalt einer Textdatei anzuschauen, musst du sie nicht mit nano öffnen.
Es gibt einen schnelleren Weg:

| Befehl          | Was er macht                                                 |
|-----------------|--------------------------------------------------------------|
| `cat datei`     | zeigt den **ganzen Inhalt** der Datei im Terminal an.        |
| `wc -l datei`   | **zählt die Zeilen** der Datei («word count – lines»).       |

Beim Befehl `wc -l` ist das Zeichen nach dem Bindestrich ein kleines **L** (wie «Linie»),
keine Eins.

### Aufträge

1. Gehe in den Ordner `~/linux-auftrag` und schau dir die Datei `willkommen.txt` mit `cat` an.
2. Schau dir die Datei `stundenplan.txt` im Ordner `schule` an. **Tipp:** Du musst dafür nicht in
   den Ordner wechseln. Du kannst den Pfad direkt angeben: `cat schule/stundenplan.txt`
3. Erstelle mit nano die Datei `~/Ergebnisse/aufgabe4_dateien_lesen.txt` (erste Zeile: dein Name)
   und beantworte diese Fragen:
   - a) Wie lautet das **Lösungswort** in der Datei `willkommen.txt`?
   - b) Wie viele Zeilen hat die Datei `willkommen.txt`? Benutze dafür `wc -l`.
   - c) An welchem **Tag** hat die Klasse 9A Sport, und **wie viele Lektionen**?
   - d) Wie viele **Mathematik-Lektionen** hat die Klasse 9A pro Woche?
   - e) Am Mittwoch stehen im Stundenplan drei Fächer. Warum sind es an diesem Tag weniger als
        an den anderen Tagen? (Die Antwort steht in der Datei.)

---

## Aufgabe 5 – `aufgabe5_ordnung`

### Lesetext: Ordner erstellen, verschieben, kopieren und löschen

| Befehl                   | Was er macht                                                              |
|--------------------------|---------------------------------------------------------------------------|
| `mkdir name`             | erstellt einen neuen Ordner («make directory»).                           |
| `mv datei ordner/`       | **verschiebt** eine Datei in einen Ordner («move»). Danach ist sie am alten Ort **weg**. |
| `cp datei ordner/`       | **kopiert** eine Datei in einen Ordner («copy»). Danach gibt es sie **zweimal**: am alten **und** am neuen Ort. |
| `rm datei`               | **löscht** eine Datei («remove»).                                         |
| `ls -R`                  | zeigt den Inhalt eines Ordners **und aller Ordner darin** an.             |

> ⚠️ **Vorsicht mit `rm`!** Im Terminal gibt es **keinen Papierkorb**. Eine Datei, die du mit
> `rm` löschst, ist **für immer weg**. Kontrolliere deshalb vor dem Enter-Drücken immer genau,
> welchen Dateinamen du geschrieben hast.

Mit `mkdir` kannst du auch mehrere Ordner auf einmal erstellen: `mkdir eins zwei drei`

### Aufträge

Im Ordner `~/linux-auftrag/unordnung` herrscht ein Durcheinander. Räume ihn auf!
(Die Bild- und Musikdateien sind nur Übungsdateien und leer.)

1. Wechsle in den Ordner `~/linux-auftrag/unordnung` und schau mit `ls` nach, was drin ist.
2. Erstelle in diesem Ordner drei neue Ordner: `bilder`, `musik` und `texte`.
3. **Verschiebe** beide Fotos (Dateien mit `.jpg` am Ende) in den Ordner `bilder`.
4. **Verschiebe** das Lied (Datei mit `.mp3` am Ende) in den Ordner `musik`.
5. **Verschiebe** die Einkaufsliste in den Ordner `texte`.
6. Der Aufsatz ist sehr wichtig. Lege deshalb eine **Kopie** davon in den Ordner `texte`.
   Das Original soll **dort bleiben, wo es jetzt ist**.
7. Die Datei `loesch_mich.txt` wird nicht gebraucht. Lösche sie.
8. Schreibe deinen Namen in die Datei `~/Ergebnisse/aufgabe5_ordnung.txt` und hänge danach das
   Ergebnis von `ls -R` an.
9. Öffne die Datei mit nano und beantworte unten diese Fragen:
   - a) Was ist der Unterschied zwischen `mv` und `cp`? Erkläre es in deinen eigenen Worten.
   - b) Warum muss man mit dem Befehl `rm` besonders vorsichtig sein?

---

## Aufgabe 6 – `aufgabe6_schatzsuche`

### Lesetext: Versteckte Dateien

Linux kann Dateien **verstecken**. Eine Datei ist versteckt, wenn ihr Name mit einem
**Punkt `.`** beginnt, zum Beispiel `.geheim.txt`. Der normale Befehl `ls` zeigt versteckte
Dateien **nicht** an. Erst mit dem Befehl **`ls -a`** («a» für «all» = alle) siehst du sie.

Bei `ls -a` erscheinen ausserdem immer zwei spezielle Einträge: **`.`** und **`..`**.
Ein Punkt steht für den aktuellen Ordner, zwei Punkte für den Ordner eine Stufe darüber –
genau wie bei `cd ..` in Aufgabe 3. Diese zwei Einträge kannst du bei der Schatzsuche ignorieren.

Versteckte Dateien sind übrigens nicht geheim oder geschützt. Linux benutzt sie vor allem für
Einstellungen, damit sie im Alltag nicht stören.

### Aufträge

1. Gehe in den Ordner `~/linux-auftrag/schatzsuche` und lies die Datei `start.txt`.
2. Folge den Hinweisen, bis du das **Schatzwort** gefunden hast. Lies jeden Hinweis **genau**!
3. Wenn du im Ordner bist, in dem der echte Schatz liegt: Schreibe deinen Namen in die Datei
   `~/Ergebnisse/aufgabe6_schatzsuche.txt` und hänge das Ergebnis von `pwd` an.
4. Öffne die Datei mit nano und beantworte unten:
   - a) Wie lautet das Schatzwort?
   - b) Wie hiess die versteckte Datei, die du gefunden hast?
   - c) Warum hast du diese Datei mit dem normalen `ls` nicht gesehen?
   - d) In der Höhle gibt es auch eine Datei `schatz.txt`. Warum war das nicht der richtige Schatz?

---

## Aufgabe 7 – `aufgabe7_rueckblick`

Erstelle mit nano die Datei `~/Ergebnisse/aufgabe7_rueckblick.txt` (erste Zeile: dein Name) und
beantworte die Fragen **ohne** auf den Blättern nachzuschauen. Es ist nicht schlimm, wenn du
nicht alles weisst – schreibe ehrlich, was du noch weisst.

1. Erkläre in je einem kurzen Satz, was diese Befehle machen:
   `pwd`, `ls`, `cd`, `cat`, `mkdir`, `mv`, `cp`, `rm`
2. Du bist im Ordner `~/linux-auftrag/schule/faecher`. Du willst in den Ordner
   `~/linux-auftrag/schule`. Welchen Befehl tippst du?
3. Deine Kollegin tippt `echo Hallo > gruesse.txt` und danach `echo Tschüss > gruesse.txt`.
   Was steht danach in der Datei `gruesse.txt`? Begründe.
4. Was war für dich heute am schwierigsten? Was hat dir am besten gefallen?

---

## ★ Zusatz – `zusatz_suchen` (freiwillig, nur wenn du noch Zeit hast)

### Lesetext: Text durchsuchen

Stell dir vor, eine Datei hat tausend Zeilen und du suchst nur die Zeilen mit einem bestimmten
Wort. Dafür gibt es den Befehl **`grep`**:

| Befehl                | Was er macht                                                         |
|-----------------------|----------------------------------------------------------------------|
| `grep wort datei`     | zeigt **nur die Zeilen** der Datei an, in denen `wort` vorkommt.     |
| `grep -c wort datei`  | zeigt nicht die Zeilen, sondern **zählt**, in wie vielen Zeilen `wort` vorkommt («c» für «count» = zählen). |

**Achtung:** `grep` unterscheidet zwischen **Gross- und Kleinschreibung**. Für `grep` sind
`Hund` und `hund` zwei verschiedene Wörter.

### Aufträge

Im Ordner `~/linux-auftrag/tierheim` liegt die Datei `tierliste.txt`. Darin stehen alle Tiere
eines Tierheims – pro Zeile ein Tier mit Name, Tierart und Alter.

1. Wechsle in den Ordner `tierheim` und schau dir die ganze Liste mit `cat` an.
2. Schreibe deinen Namen in die Datei `~/Ergebnisse/zusatz_suchen.txt`.
3. Suche mit `grep` alle **Katzen** und hänge das Ergebnis an deine Ergebnisdatei an.
4. Tippe nun `grep katze tierliste.txt` (mit kleinem **k**) und schau, was passiert.
5. Öffne die Ergebnisdatei mit nano und beantworte unten:
   - a) Wie viele **Hunde** gibt es im Tierheim? Benutze `grep -c`. Schreibe auch den Befehl auf,
        den du benutzt hast.
   - b) Wie viele Tiere gibt es **insgesamt** im Tierheim? Welchen Befehl aus Aufgabe 4 kannst du
        dafür benutzen?
   - c) Warum hat `grep katze tierliste.txt` in Auftrag 4 nichts gefunden?
   - d) Welches Tier ist das **älteste** im Tierheim? (Name und Tierart)

---

## ★ Bonus – `bonus_hilfe` (freiwillig, nur wenn du noch Zeit hast)

Fast jeder Befehl hat eine eingebaute **Hilfe**. Du rufst sie auf, indem du **`--help`**
(zwei Bindestriche) hinter den Befehl schreibst, zum Beispiel `ls --help`.
Die Hilfe ist oft lang. Scrolle mit dem Mausrad oder mit `Shift` + `Bild↑` / `Bild↓` nach oben.

Erstelle die Datei `~/Ergebnisse/bonus_hilfe.txt` (erste Zeile: dein Name) und beantworte:

1. Was macht die Option `-r` beim Befehl `ls`? Suche die Antwort in `ls --help` und probiere es
   im Ordner `~/linux-auftrag/tierheim` oder `~/linux-auftrag` aus.
2. Nur wenn du die Zusatzaufgabe gemacht hast: Was macht die Option `-n` beim Befehl `grep`?
   Suche in `grep --help` und probiere es mit der Tierliste aus. Wofür könnte das nützlich sein?

---

## Zum Schluss

Kontrolliere mit diesem Befehl, ob alle deine Dateien im Ordner `Ergebnisse` sind:

```
ls ~/Ergebnisse
```

Es sollten mindestens **7 Dateien** sein (Aufgaben 1 bis 7), deren Namen genau so heissen wie die Aufgaben.

**Gut gemacht – du hast deine ersten Schritte mit Linux gemacht! 🐧**
