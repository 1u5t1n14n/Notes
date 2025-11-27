#import "Template.typ": *
#show: template.with(color: "#14E8C1", title: "Chemie")

= Anorganik
== Basis

#definition[
  === Isoelektrischer Punkt
  Der $p H$-Wert, bei dem eine Aminosäure in Form von Zwitterionen vorliegt,
  wird als *isoelektrischer Punkt* (IEP) bezeichnet.

  Bei einem $p H"-Wert" > "IEP"$ liegen Aminosäuren vorwiegend in der
  *kationischen* Form vor, bei einem $p H"-Wert" > "IEP"$ liegen sie vorwiegend
  in *anionischer* Form vor.
]

= Organik
== Proteine

#definition[
  === Nomenklatur von Peptiden
  Eine Peptidbindung ($"-CO-NH-"$) entsteht durch die Reaktion einer
  _Carboxy_-Gruppe einer Aminosäure mit der _Amino_-Gruppe einer zweiten
  Aminosäure unter Wasserabspaltung #footnote[Wasser ist Produkt der Reaktion].

  Das _Amino_-Ende ($"N"$-Terminus) steht links und das _Carboxy_-Ende
  ($"C"$-Terminus) steht rechts. Zur systematischen Benennung der Peptide
  werden die Namen der Aminosäuren mit der Endung -_yl_ versehen – nur die
  letzte, also die an der $"C"$-terminalen Seite – behält ihren normalen Namen.

  #example[
    Sind die Amonisäuren Glutaminsäure, Histidin und Prolin aneinander
    gebunden, heißt der systematische Name _Glutamyl-Histidyl-Prolin_.
  ]
]

#remark[
  === Unterteilung der Peptide
  Peptide werden durch die Anzahl ihrer Aminosäuren in verschiedene Gruppen
  unterteilt.

  *Dipeptide* bestehen aus *zwei* Aminosäuren und gehören gewissermaßen zu den
  Oligopeptiden. *Oligopeptide* sind Peptide, die aus *zwei bis zehn*
  Aminosäuren aufgebaut sind.

  *Polypeptide* sind solche, die aus *elf bis einhundert* Aminusäuren bestehen.

  *Proteine* sind jene Peptide, welche aus *mehr als einhundert* Aminosäuren
  aufgebaut sind.
]

#definition[
  === Strukturen eines Proteins
  + Unter der *Primärstruktur* versteht man die Abfolgesequenz von Aminosäuren.

  + Die *Sekundärstruktur* ist die räumliche Darstellung von
    Peptidkettenteilen.

  + Mit *Tertiärstruktur* ist die auf intramolekularen Wechselwirkungen
    basierende gesamte dreidimensionale Architektur einer Peptidkette gemeint.

  + Unter der *Quartärstruktur* versteht man wiederum die Struktur aus mehreren
    Peptidketten und zusätzlichen Molekülbindungen.
]

#pagebreak()

= Anhang
== Protokolle
=== Nachweisreaktionen von Peptidproteinen

+ *Material*: Ninhydrinreagenz, Wasserkocher, Reagenzglas, Reagenzglasklammer,
  Becherglas, Kupfersulfatlösung, Natriumhydroxidlösung, Spaghetti, Salami,
  Wasser, Glycin, Proteinpulver

+ *Durchführung*:

  + _Ninhydrin-Reaktion_: Die Probe wird mit einigen Tropfen Ninhydrinreagenz
    versetzt. Anschließend geschüttelt und gegebenenfalls im siedenden
    Wasserbad erwärmt.

  + _Biuret-Reaktion_: Die Probe wird mit $1 "ml"$ verdünnter
    Natriumhydroxidlösung und einigen Tropfen verdünnter Kupfersulfatlösung
    versetzt. Anschließend wird eine Blindprobe erstellt

+ *Hypothese*: Das Proteinpulver wird eine positive Reaktion zeigen, da es
  Protein enthält.

+ *Beobachtung*:

  #figure(
    table(
      columns: (1fr, 1fr, 1fr),

      table.header[Probe][Ninhydrin][Biuret],
      [Spaghetti],
      [weißlich],
      [hellblau],

      [Salami],
      [],
      [schwarz bis dunkelblau],

      [Proteinpulver],
      [],
      [violett],

      [Glycin],
      [durchsichtig neutral],
      [],

      [Wasser],
      [],
      [blau],
    )
  )

+ *Auswertung*:

  + _Ninhydrin-Reaktion_: Beim Vorhandensein von frei vorliegenden Aminosäuren
    kommt es zu einer blauvioletten Färbung.

    Diese Reaktion wurde erstmals 1910 von Siegfried Ruhemann beschrieben.
    Daher wird der entstehende Farbstoff auch _Ruhemannsches_ Purpur genannt.

  + _Biuret-Reaktion_: Die Biuretreaktion dient zum Nachweis von
    Peptidbindungen. Bei einem positiven Ergebnis zeigt sich eine rotviolette
    Färbung. Diese Färbung wird von einer Komplexverbindung hervorgerufen, die aus
    $"Cu"^(2+)$-Ionen und Peptiden besteht.


#pagebreak()

=== Denaturierung von Hühnereiweiß

+ *Material*: Kupfersulfatlösung, verdünnte Salzsäure, Reagenzgläser,
  Reagenzglasklammer, Becherglas, Reagenzglasgestell, Wasserkocher, Ethanol

+ *Durchführung*:

  + _Physikalisch_: Erhitzen Sie Eiklarlösung in einem Wasserbad.

  + _Mechanisch_: Schütteln oder rühren Sie die Eiklarlösung mit Stopfen.

  + _Chemisch_: Geben Sie jeweils $1 "ml"$ Salzsäure, $5 "ml"$ Ethanol und $5
    "ml"$ Kupfersulfatlösung zur Eiklarlösung.

+ *Hypothese*: Die Eiklarlösung wird bei allen Versuchen trüb, da die ihre
  Proteine in ihren intermolekularen Wechselwirkungen denaturiert werden.

+ *Beobachtung* und *Auswertung*:

  #figure(
    table(
      columns: (6fr, 5fr, 15fr, 5fr),

      table.header[Experiment][Beobachtung][Auswertung][Alltagsbezug],
      [Wärme],
      [Das Eiklar flockt aus bzw. gerinnt, wird weiß und fest.],
      [
        Eiklar denaturiert durch Aufbrechen der intermolekularen
        Wechselwirkungen (hier _Van-der-Waals-Kräfte_, _Wasserstoffbrücken_);
        Schwingungen im Molekül steigen
      ],
      [Kochen, Verbrennungen, Fieber, Sterilisation],

      [Salzsäure],
      [Eiklar wird trüb.],
      [
        Veränderung der elektrischen Ladungsverhältnisse; Eiklar denaturiert
        durch Beeinflussung der Ionenbindungen und Wasserstoffbrücken;

        $ "HCl" harpoons.rtlb "H"^+ "Cl"^- $

        _Carboxylat_-Gruppen reagieren mit _Oxoniumionen_ zu _Carboxy_-Gruppen
        #footnote[siehe _Protonenaufnahme_, _Protonierung_]

        $ "COO"^- + "H"^+ -> "COOH" $
      ],
      [Verdauung, Käseherstellung, Verätzung],

      [Ethanol],
      [Eiklar wird milchig trüb.],
      [
        Die Wasserstoffbrücken und Van-der-Waals-Kräfte werden beeinflusst.
        $ "C"_2 "H"_5 "OH" $
      ],
      [Desinfektionsmittel],

      [Kupfersulfatlösung],
      [Eiklar wird milchig hellblau trüb.],
      [
        Ionenbindung wird beeinflusst; Quervernetzungen entstehen.

        $ "CuSO"_4 wide ["Cu"^(2+) + "SO"^(-2)_4] $
      ],
      [Vergiftung],
    )
  )
