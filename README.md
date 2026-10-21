# linux-task

Linux-Einstiegsauftrag für die 9. Klasse (Sekundarschule A), ohne Vorwissen, Dauer maximal 2 Stunden.
Die Schüler/innen lesen kurze Texte, wenden die Befehle im Terminal an und speichern pro Aufgabe
eine Datei im Ordner `~/Ergebnisse`. Der Dateiname ist der Name der Aufgabe.

## Dateien

| Datei | Für wen | Inhalt |
|---|---|---|
| `aufgabenblatt.md` | Schüler/innen | Lesetexte, Aufgaben 0–7 und zwei freiwillige Zusatzaufgaben |
| `setup.sh` | Schüler/innen | Erstellt die Übungsdateien (wird in Aufgabe 0 heruntergeladen) |

Weiteres Material für die Betreuungsperson liegt nur lokal im Ordner `betreuung/` (siehe
`betreuung/README.md`). Dieser Ordner steht in `.gitignore` und wird nie ins öffentliche
Repository hochgeladen.

## Vorbereitung

Auf den Laptops musst du nichts einrichten. Die Schüler/innen laden die Übungsdateien in
Aufgabe 0 selbst herunter:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh || wget -qO- https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh)
```

Dafür brauchen die Laptops **Internet** und **curl oder wget** (eines davon ist praktisch überall
vorinstalliert). Fehlt der Editor **nano**, installiert ihn das Skript mit dem Paketmanager
(apt, dnf, zypper oder pacman). Dafür fragt es nach dem Passwort des Benutzers, der dafür
Admin-Rechte (sudo) braucht. Haben die Schüler/innen diese nicht, installiere nano vorher selbst.
Das Skript legt `~/linux-auftrag` und `~/Ergebnisse` an.
Wer den Befehl nochmals ausführt, bekommt frische Übungsdateien. Die Ergebnisse bleiben dabei
erhalten. Liegen schon fremde Dateien in `~/Ergebnisse`, bittet das Skript, sich bei der
Betreuungsperson zu melden.

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
