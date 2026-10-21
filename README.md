# linux-task

Linux-Einstiegsauftrag für die 9. Klasse (Sekundarschule A), ohne Vorwissen, Dauer maximal 2 Stunden.
Die Schüler/innen lesen kurze Texte, wenden die Befehle im Terminal an und speichern pro Aufgabe
eine Datei im Ordner `~/Ergebnisse`. Der Dateiname ist der Name der Aufgabe.

## Dateien

| Datei | Für wen | Inhalt |
|---|---|---|
| `aufgabenblatt.md` | Schüler/innen | Lesetexte, Aufgaben 0–7 und zwei freiwillige Zusatzaufgaben |
| `setup.sh` | Betreuungsperson | Bereitet einen Laptop vor (Übungsdateien, fehlende Programme) |

Weiteres Material für die Betreuungsperson liegt nur lokal im Ordner `betreuung/` (siehe
`betreuung/README.md`). Dieser Ordner steht in `.gitignore` und wird nie ins öffentliche
Repository hochgeladen.

## Vorbereitung

Bereite jeden Laptop **vor** dem Austeilen vor. Melde dich mit dem Benutzer an, mit dem die
Schüler/innen arbeiten, öffne ein Terminal und führe diesen Befehl aus:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh || wget -qO- https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh)
```

Der Befehl lädt `setup.sh` herunter und führt es direkt aus. Es bleibt keine Datei auf dem Laptop
zurück. Das Skript

- legt `~/linux-auftrag` (Übungsdateien) und `~/Ergebnisse` (leer, für die Antworten) an,
- installiert den Editor **nano**, falls er fehlt (fragt dafür nach dem sudo-Passwort),
- meldet, wenn in `~/Ergebnisse` noch Dateien von einer früheren Gruppe liegen.

Am Schluss muss **«Fertig!»** stehen. Den Befehl kannst du jederzeit nochmals ausführen, um
die Übungsdateien zurückzusetzen. Die Ergebnisse bleiben dabei erhalten. Für eine neue Gruppe
hängst du `--ergebnisse-leeren` an den Befehl an (nach der letzten Klammer). Das löscht auch
`~/Ergebnisse`, also vorher einsammeln.

Wenn du das Repository lieber klonst: `bash linux-task/setup.sh` ausführen und danach den Ordner
mit `rm -rf linux-task` wieder löschen. In einem Git-Repository löscht sich `setup.sh` nicht
selbst, und die Schüler/innen sollen das Skript nicht finden.

## Ergebnisse einsammeln

Zum Beispiel den Ordner `~/Ergebnisse` von jedem Laptop auf einen USB-Stick kopieren und dabei
nach der Schülerin / dem Schüler benennen:

```bash
cp -r ~/Ergebnisse /media/$USER/<STICK>/Ergebnisse_Anna_Muster
```

Danach die Ordner auf dem Laptop löschen, damit die nächste Klasse die Antworten nicht sieht:

```bash
rm -rf ~/Ergebnisse ~/linux-auftrag
```

## Aufgabenblatt als PDF

Das Aufgabenblatt sieht in jedem Markdown-Viewer gut aus. Für einen Ausdruck z. B.:

```bash
pandoc aufgabenblatt.md -o aufgabenblatt.pdf
```
