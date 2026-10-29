---
titel: "Spickzettel: UML-Notation"
icon: "📋"
beschreibung: Alle prüfungsrelevanten Symbole und Schreibweisen auf einer Seite.
reihenfolge: 1
---
## Klassendiagramm

| Was | Schreibweise |
| --- | --- |
| Attribut | `- name : String [= Startwert] {Eigenschaften}` |
| Methode | `+ name(param : Typ) : Rückgabetyp` |
| Sichtbarkeit | `+` public · `-` private · `#` protected · `~` package |
| statisch | unterstrichen oder `{static}` |
| Konstante | `{final}`, z. B. `+ MWST : double = 0.19 {final}` |
| abstrakt | kursiv oder `{abstract}` |
| Interface / Aufzählung | `«interface»` (Name kursiv) / `«enumeration»` über dem Namen |

| Beziehung | Linie | Ende |
| --- | --- | --- |
| Assoziation | ——— | – |
| gerichtete Assoziation | ———> | offene Spitze |
| Aggregation (Teil lebt weiter) | ◇——— | hohle Raute **am Ganzen** |
| Komposition (Teil stirbt mit) | ◆——— | gefüllte Raute **am Ganzen**, dort `1` / `0..1` |
| Generalisierung (ist ein) | ———▷ | hohles Dreieck an der **Oberklasse** |
| Realisierung / Implementierung (Interface) | - - - -▷ | hohles Dreieck am **Interface** |
| Abhängigkeit (benutzt) | - - - -> | offene Spitze |

Multiplizitäten (Kardinalitäten): `1` · `0..1` · `*` = `0..*` · `1..*` · `2..10` – an **beiden** Enden.

## Objektdiagramm (Zusatz, nicht im Prüfungskatalog)

`anna : Kunde` **unterstrichen** · Attribute mit Werten (`name = "Anna"`) · Links ohne Multiplizitäten.

## Komponenten- und Verteilungsdiagramm (Zusatz, nicht im Prüfungskatalog)

| Was | Symbol |
| --- | --- |
| Komponente | Rechteck mit Komponentensymbol / `«component»` |
| bereitgestellte Schnittstelle | Kreis ○ („Lolli“) |
| benötigte Schnittstelle | Halbkreis ( („Socket“) |
| Knoten | Quader, `«device»` oder `«executionEnvironment»` |
| Artefakt | Rechteck mit Eselsohr / `«artifact»`, z. B. `app.jar` |
| Kommunikationspfad | Linie, z. B. `«HTTPS»` |

## Anwendungsfalldiagramm

| Was | Symbol |
| --- | --- |
| Akteur | Strichmännchen (Person) oder Rechteck `«actor»` (System) – **außerhalb** |
| Anwendungsfall | Ellipse, Verb-Phrase („Rad ausleihen“) |
| Systemgrenze | Rechteck mit Namen |
| «include» (immer) | Basisfall - - -> inkludierter Fall |
| «extend» (manchmal) | erweiternder Fall - - -> Basisfall, mit `condition: {…}` |
| Generalisierung | hohles Dreieck am allgemeinen Akteur/Fall |

## Aktivitätsdiagramm

| Was | Symbol |
| --- | --- |
| Start / Ende / Ablaufende | ● / ◉ (alles endet) / ⊗ (nur dieser Zweig) |
| Aktion | Rechteck mit runden Ecken |
| Verzweigung / Zusammenführung | Raute, Guards `[…]` an den Kanten |
| Teilung / Synchronisation | dicker Balken (Fork: parallel; Join wartet auf alle) |
| Konnektor | Kreis mit Buchstabe Ⓐ → Ⓐ (Sprungmarke) |
| Objektknoten | eckiges Rechteck |
| Partition (Swimlane, Schwimmbahn) | Bahn mit Namen des Verantwortlichen |

## Sequenzdiagramm

| Was | Symbol |
| --- | --- |
| Lebenslinie | `name : Klasse` + gestrichelte Linie nach unten |
| synchron (wartet) | ———▶ gefüllte Spitze |
| asynchron (wartet nicht) | ———> offene Spitze |
| Antwort | - - - -> gestrichelt |
| Erzeugung | - - - -> `create` auf den Kopf des neuen Objekts |
| Zerstörung | ✕ am Ende der Lebenslinie |
| Fragmente | `alt [Bed.] … [else]` · `opt [Bed.]` · `loop [Bed.]` · `loop(10)` · `loop(min,max) [Bed.]` · `par` · `break` |

## Zustandsdiagramm

| Was | Schreibweise |
| --- | --- |
| Anfang / Ende | ● (Transition ohne Ereignis) / ◉ |
| Zustand | Rechteck mit runden Ecken, Name als Zustand („ausgeliehen“) |
| Transition | `ereignis [bedingung] / aktion` (Auslöser [Bedingung] / Verhalten) |
| im Zustand | `entry / …` · `do / …` · `exit / …` · `ereignis / aktion` (intern) |
| Zeitereignis | `after(15 min)` |
| Entscheidung | Raute mit `[…]`-Guards |
| Selbsttransition | verlässt den Zustand → exit und entry laufen erneut |
