# Info-Lernpfad: UML-Diagramme für die AP2

Selbstlern-Pfad zur Prüfungsvorbereitung für Fachinformatiker:innen Anwendungsentwicklung (Teil 2 der
Abschlussprüfung, Prüfungsbereich „Planen eines Softwareproduktes“). Reiner Info-Pfad: keine Meilensteine,
keine Abgaben, alle Stufen offen.

- **Web-Version:** `docs/index.html` (für GitHub Pages: Einstellungen › Pages › Branch, Ordner `/docs`)
- **Inhalt:** 4 Stufen, 12 Module (ca. 7 Std.), Spickzettel und Glossar
  - Überblick: G1 UML im Überblick
  - Strukturdiagramme: S1/S2 Klassendiagramm, S3 Code ↔ Klassendiagramm, S4 Objektdiagramm,
    S5 Komponenten- und Verteilungsdiagramm
  - Verhaltensdiagramme: V1 Anwendungsfall-, V2 Aktivitäts-, V3 Sequenz-, V4 Zustandsdiagramm
  - Prüfungstraining: P1 Welches Diagramm wofür (Fallstudie Parkhaus), P2 Typische Prüfungsfehler

## Aufbau

Gebaut mit dem [Lernpfad-Baukasten](https://github.com/dclausen01/lernpfad-baukasten). Quelle sind
`kurs.yaml`, `module/*.md`, `seiten/*.md` und `quellen.yaml` – `docs/` und `ausgabe/` werden daraus erzeugt.

Alle 39 Diagramme sind eigene Zeichnungen: PlantUML-Quellen in `diagramme/*.puml` (plus eine handgezeichnete
SVG), gerendert nach `material/*.svg`. Die Notation ist gegen die OMG-Spezifikation UML 2.5.1 geprüft.

## Neu bauen

```bash
sh diagramme/rendern.sh /pfad/zu/plantuml.jar      # braucht Java und Graphviz
python3 <baukasten>/skripte/pruefen.py .
python3 <baukasten>/skripte/bauen.py .
python3 <baukasten>/skripte/durchklicken.py .
rm -rf docs && cp -r ausgabe/web docs && touch docs/.nojekyll
```

## Quellen

Siehe `quellen.yaml`: OMG UML 2.5.1, Westermann „IT-Berufe“ (LF 6–9 und LF 10–12) als fachliche Grundlage,
IHK-AkA und eine Themenliste des IT-Berufe-Podcasts für den Prüfungsbezug. Aus den Lehrbüchern wurden keine Texte,
Abbildungen oder Aufgaben übernommen; alle Beispiele (RadWerk, Parkhaus, Kino …) sind ausgedacht.
