#!/usr/bin/env bash
# Richtet die Übungsdateien für den Linux-Auftrag ein.
#
# Die Betreuungsperson führt es vor dem Austeilen auf jedem Laptop aus (lädt das Skript mit curl
# oder wget herunter und führt es aus; mit «--ergebnisse-leeren» am Schluss für eine neue Gruppe):
#   bash <(curl -fsSL https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh || wget -qO- https://raw.githubusercontent.com/zeliharuya/linux-task/main/setup.sh)
#
# Lokal:
#   bash setup.sh                      -> Übungsordner (neu) anlegen, Ergebnisse bleiben
#   bash setup.sh --ergebnisse-leeren  -> zusätzlich ~/Ergebnisse leeren (neue Gruppe)
set -euo pipefail

# Einige Texte sind kodiert, damit man die Lösungen nicht direkt im Skript lesen kann.
dekodiere() { base64 -d <<< "$1"; }

BASIS="$HOME/linux-auftrag"
ERGEBNISSE="$HOME/Ergebnisse"
PROGRAMME=(nano)

# Installiert fehlende Programme mit dem Paketmanager der Distribution.
# Gibt 1 zurück, wenn danach noch etwas fehlt.
installiere_fehlende() {
    local fehlend=() p
    for p in "${PROGRAMME[@]}"; do
        command -v "$p" >/dev/null || fehlend+=("$p")
    done
    [[ ${#fehlend[@]} -eq 0 ]] && return 0

    local befehl
    if command -v apt-get >/dev/null; then
        befehl="apt-get update -qq && apt-get install -y -qq ${fehlend[*]}"
    elif command -v dnf >/dev/null; then
        befehl="dnf install -y -q ${fehlend[*]}"
    elif command -v zypper >/dev/null; then
        befehl="zypper --non-interactive install ${fehlend[*]}"
    elif command -v pacman >/dev/null; then
        befehl="pacman -S --noconfirm --needed ${fehlend[*]}"
    else
        return 1
    fi

    echo "Es fehlt noch: ${fehlend[*]}. Das wird jetzt installiert."
    if [[ $EUID -eq 0 ]]; then
        bash -c "$befehl"
    elif command -v sudo >/dev/null; then
        echo "Dafür braucht es das sudo-Passwort."
        sudo bash -c "$befehl"
    else
        return 1
    fi
}

if ! installiere_fehlende; then
    echo "Die Installation hat nicht geklappt. Die Übungsdateien werden trotzdem erstellt."
fi

if [[ "${1:-}" == "--ergebnisse-leeren" ]]; then
    rm -rf "$ERGEBNISSE"
fi

rm -rf "$BASIS"
mkdir -p "$ERGEBNISSE"
mkdir -p "$BASIS"/schule/faecher \
         "$BASIS"/tierheim \
         "$BASIS"/unordnung \
         "$BASIS"/schatzsuche/wald \
         "$BASIS"/schatzsuche/berg/hoehle

# --- willkommen.txt (Aufgabe 4) ---------------------------------------------
cat > "$BASIS/willkommen.txt" <<'EOF'
Hallo und herzlich willkommen!

Du hast es geschafft, diese Datei im Terminal zu öffnen.
Das ist schon ein guter Anfang.
Viele Informatikerinnen und Informatiker arbeiten jeden Tag so.
Das Lösungswort für Aufgabe 4 lautet: @WORT@
Lies immer alles genau, dann findest du auch versteckte Informationen.
Viel Spass beim Weitermachen!
EOF
sed -i "s/@WORT@/$(dekodiere 'S09NTUFORE9aRUlMRQ==')/" "$BASIS/willkommen.txt"

# --- schule/ (Aufgaben 3 und 4) ---------------------------------------------
cat > "$BASIS/schule/stundenplan.txt" <<'EOF'
STUNDENPLAN KLASSE 9A

Montag:      Mathematik, Deutsch, Englisch, Geografie
Dienstag:    Französisch, Mathematik, Natur und Technik, Musik
Mittwoch:    Deutsch, Englisch, Bildnerisches Gestalten
Donnerstag:  Medien und Informatik, Mathematik, Sport, Sport
Freitag:     Englisch, Deutsch, Geschichte, Französisch

Am Mittwochnachmittag ist schulfrei.
EOF

cat > "$BASIS/schule/faecher/mathematik.txt" <<'EOF'
Mathematik: Heute üben wir Gleichungen.
EOF
cat > "$BASIS/schule/faecher/deutsch.txt" <<'EOF'
Deutsch: Wir lesen eine Kurzgeschichte.
EOF
cat > "$BASIS/schule/faecher/englisch.txt" <<'EOF'
Englisch: Vocabulary test on Friday.
EOF

# --- tierheim/ (Zusatzaufgabe) -----------------------------------------------
cat > "$BASIS/tierheim/tierliste.txt" <<'EOF'
Bello, Hund, 3 Jahre
Minka, Katze, 2 Jahre
Hoppel, Kaninchen, 1 Jahr
Rex, Hund, 7 Jahre
Luna, Katze, 5 Jahre
Coco, Papagei, 12 Jahre
Felix, Katze, 9 Jahre
Nemo, Fisch, 1 Jahr
Balu, Hund, 4 Jahre
Mimi, Katze, 1 Jahr
Schnuffel, Meerschweinchen, 2 Jahre
Kira, Hund, 6 Jahre
Tiger, Katze, 3 Jahre
Flocke, Kaninchen, 4 Jahre
Rocky, Hund, 2 Jahre
Susi, Schildkröte, 35 Jahre
Karlo, Katze, 8 Jahre
Max, Hund, 5 Jahre
Pepe, Wellensittich, 3 Jahre
Nala, Katze, 4 Jahre
EOF

# --- unordnung/ (Aufgabe 5) --------------------------------------------------
touch "$BASIS/unordnung/ferien_foto.jpg" \
      "$BASIS/unordnung/geburtstag_foto.jpg" \
      "$BASIS/unordnung/lieblingslied.mp3"
cat > "$BASIS/unordnung/aufsatz.txt" <<'EOF'
Mein Aufsatz: Mein schönster Ferientag
(Dieser Aufsatz ist sehr wichtig!)
EOF
cat > "$BASIS/unordnung/einkaufsliste.txt" <<'EOF'
Brot, Milch, Äpfel, Käse
EOF
cat > "$BASIS/unordnung/loesch_mich.txt" <<'EOF'
Diese Datei wird nicht gebraucht.
EOF

# --- schatzsuche/ (Aufgabe 6) ------------------------------------------------
cat > "$BASIS/schatzsuche/start.txt" <<'EOF'
Willkommen bei der Schatzsuche!
Dein erster Hinweis: Geh in den Ordner "wald".
Aber Achtung: Die Nachricht im Wald ist versteckt!
EOF

cat > "$BASIS/schatzsuche/wald/baum.txt" <<'EOF'
Hier ist nur ein Baum. Suche genauer!
EOF
dekodiere 'U3VwZXIsIGR1IGhhc3QgZGllIHZlcnN0ZWNrdGUgRGF0ZWkgZ2VmdW5kZW4hCk7DpGNoc3RlciBIaW53ZWlzOiBHZWggenVyw7xjayBhdXMgZGVtIFdhbGQuCkdlaCBkYW5uIGluIGRlbiBPcmRuZXIgImJlcmciIHVuZCB2b24gZG9ydCBpbiBkZW4gT3JkbmVyICJob2VobGUiLgpMaWVzIGRvcnQgZGllIERhdGVpLCBkZXJlbiBOYW1lIG1pdCBkZW0gQnVjaHN0YWJlbiB6IGJlZ2lubnQuCg==' \
    > "$BASIS/schatzsuche/wald/.hinweis.txt"

cat > "$BASIS/schatzsuche/berg/gipfel.txt" <<'EOF'
Was für eine schöne Aussicht! Aber hier ist kein Schatz.
EOF
cat > "$BASIS/schatzsuche/berg/hoehle/schatz.txt" <<'EOF'
Haha, das war zu einfach! Das ist NICHT der echte Schatz.
Lies den letzten Hinweis nochmals ganz genau.
EOF
cat > "$BASIS/schatzsuche/berg/hoehle/fledermaus.txt" <<'EOF'
Fiep fiep! Falsche Spur.
EOF
cat > "$BASIS/schatzsuche/berg/hoehle/stein.txt" <<'EOF'
Nur ein Stein. Falsche Spur.
EOF
dekodiere 'R3JhdHVsaWVyZSEgRHUgaGFzdCBkZW4gZWNodGVuIFNjaGF0eiBnZWZ1bmRlbiEKRGFzIFNjaGF0endvcnQgbGF1dGV0OiBUVVgKVHV4IGlzdCBlaW4gUGluZ3Vpbi4gRXIgaXN0IGRhcyBNYXNrb3R0Y2hlbiB2b24gTGludXguCg==' \
    > "$BASIS/schatzsuche/berg/hoehle/zauberkiste.txt"

echo
echo "Fertig! Übungsdateien: $BASIS"
echo "        Ergebnisse:     $ERGEBNISSE"
if [[ -n "$(ls -A "$ERGEBNISSE")" ]]; then
    echo
    echo "Hinweis: In $ERGEBNISSE liegen noch Dateien (frühere Gruppe?)."
    echo "Zuerst einsammeln, dann den Befehl nochmals mit «--ergebnisse-leeren» am Schluss ausführen."
fi
if ! command -v nano >/dev/null; then
    echo
    echo "ACHTUNG: Der Editor 'nano' fehlt und konnte nicht installiert werden. Bitte von Hand installieren."
fi

# Das Skript wird nach dem Einrichten nicht mehr gebraucht und löscht sich selbst.
# Beim Starten mit «wget ... | bash» gibt es keine Datei, dann ist nichts zu tun.
# Ausnahme: im Git-Repository der Betreuungsperson, damit das Original erhalten bleibt.
SKRIPT="${BASH_SOURCE[0]:-}"
if [[ -f "$SKRIPT" ]]; then
    SKRIPT="$(realpath "$SKRIPT")"
    if ! git -C "$(dirname "$SKRIPT")" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        rm -f -- "$SKRIPT"
    fi
fi
