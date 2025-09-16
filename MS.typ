#import "Template.typ": *

#set heading(numbering: "1.1.")
#set text(
  lang: "de",
  size: 10pt,

  //font: "Georgia"
  //font: "Inter"
  font: "Jost*"
)

#outline()
#pagebreak()

= Mengen und Zahlbereiche
== Mengen

#definition([
  === Definition nach Cantor
  Unter einer *Menge* verstehen wir eine Zusammenfassung von bestimmten,
  wohlunterschiedenen Objekten unserer Anschauung oder unseres Denkens, welche
  *Elemente* der Menge heißen, zu einem Ganzen.
])

#remark([
  === Mengeneigenschaften
  Sei $M$ eine Menge. Dann heißt

  - $x in M$, $x$ ist ein Element von $M$.

  - $x in.not M$, $x$ ist kein Element von $M$.

  - $M = emptyset$, $M$ ist eine Leere Menge, die kein Element enthält, also $M
    = {}$.

  - $|M|$ heißt *Mächtigkeit* oder Kardinalzahl von $M$ und gibt an, wie viele
    Elemente $M$ enthält.

  Wir können Mengen auf verschiedene Weisen darstellen.

  - Wortvorschriften, z.B $M$ ist die Menge aller natürlichen Zahlen, die durch
    $5$ teilbar ist.

  - Auflistung der Elemente, z.B. $M = { 0; 5; 10; dots}$.

  - Definition der Eigenschaften, z.B. $M = {n in NN | n mod 5 = 0}$.

  - Graphisch, z.B. als Venn-Diagramm.
])

#definition([
  === Mengenbeziehungen
  Seien $X$ und $Y$ Mengen.

  - $X$ heißt *Teilmenge* von $Y$ ($X subset.eq Y$), wenn jedes Element von $X$
    auch in $Y$ ist.

  - $X$ heißt *echte Teilmenge* von $Y$ ($X subset Y$), wenn jedes Element vin
    $X subset.eq Y and X eq.not Y$.

  - Die Mengen $X$ und $Y$ heißen *gleich*, wenn $X subset.eq Y and Y subset.eq
    X$.
])

#definition([
  === Vereinigung, Durchschnitt und Mengendifferenz
  Seien $X$ und $Y$ Mengen. Dann heißt

  - $X inter Y := {x | x in X and x in Y}$ *Durchschnitt* von $X$ und $Y$.

  - $X union Y := {x | x in X or x in Y}$ *Vereinigung* von $X$ und $Y$.

  - $X union.dot Y := {x | x in X or.dot x in Y}$ *disjunkte Vereinigung* von
    $X$ und $Y$.

  - $X without Y := {x | x in X and x in.not Y}$ *Differenz* von $X$ und $Y$.
])

#definition([
  === Kartesisches Produkt <kartesischesProdukt>
  Seien $X$ und $Y$ Mengen, dann ist ihr kartesisches Produkt definiert durch
  die Kreuzmenge aus beiden.

  $ X times Y = {(x; y) | x in X and y in Y} $

  #footnote[$(x; y)$ ist ein geordnetes Paar.]
  #footnote[$(x; y) = (x; w) <=> x = v thick y = w$]
])

== Zahlbereiche

#remark([
  === Bezeichnung der Zahlbereiche
  $NN$ Menge der natürlichen Zahlen mit $0$

  $NN^*$ Menge der natürlichen Zahlen ohne $0$

  $ZZ$ Menge der ganzen Zahlen

  $QQ$ Menge der rationalen Zahlen

  $QQ^+$ Menge der positiven rationalen Zahlen

  $-QQ^+$ Menge der negativen rationalen Zahlen

  $RR$ Menge der reellen Zahlen, $RR^+$ und $-RR^+$ analog, sodass $RR = -RR^+
  union {0} union RR^+$

  $CC$ Menge der komplexen Zahlen
])

= Abbildungen
== Abbildung, Bild, Urbild, Definitions- und Wertebereich

#definition([
  //TODO: Bild hinzufügen
  === Abbildung, Funktion
  Es seien $X$ und $Y$ nichtleere Mengen.

  + Eine Vorschrift $f$, die jedem Element von $X$ genau ein Element von $Y$
    zuordnet, heißt *Abbildung* von $X$ nach $Y$.

    $forall x in D(f) subset.eq X$ gibt es genau ein $y = f(x) in Y$.

    $ f colon X -> Y $
    $ x |-> y $

    Handelt es sich bei $X$ und $Y$ um reine Zahlenmengen (z.B. $RR$), so
    bezeichnen wir die Abbildung $f$ auch als *Funktion*.

    #tldr([
      Jedem $x$ muss ein $y$ zugeordnet werden.
      Wenn $X$ und $Y$ reine Zahlenmengen sind, ist die Abbildung eine
      Funktion.
    ])

    + $D(f)$ ist die *Definitionsmenge* #footnote[Definitionsbereich bei
      Funktionen] von der Vorschrift $f$.

    + $B(f)$ ist die *Bildungsmenge* #footnote[Wertebereich bei
      Funktionen] von $f$, wobei $B(f) = {y in Y | y = f(x) "mit" x in D(f)}$

  + $f(x) in Y$ heißt *Bildpunkt* bzw. *Funktionswert* von $x$ unter $f$.

    Ist $y in Y$, so heißt jedes $x in X$ mit $f(x) = y$ *ein Urbild* bzw.
    *Argument* von $y$ unter $f$.

  + Die Menge aller Urpunkte von $y$ unter $f$ bezeichnen wir mit $f^(-1)(y) :=
    {x in X | f(x) = y}$. Zu $f^(-1)$ sagen wir auch *das Urbild* von $y$ unter
    $f$.

    #tldr([
      *Das Urbild* ist die Menge aller *Urbilder*.
    ])

    $X = D(f)$ heißt *Definitionsbereich* von $f$ und $Y = B(f)$ heißt
    *Wertebereich* von $f$.

    Die Menge $"im"(f) := {f(x) | x in X} = {y in Y | exists x in X}$ mit $f(x)
    = y$ heißt *Bild* von $f$.

  + Die Menge $ Gamma_f := {(x, f(x)) | x in X} subset X times Y$
    #footnote[siehe @kartesischesProdukt] heißt der Graph von $f$.

  + Zwei Abbildungen $f, g colon X -> Y$ heißen gleich ($f = g$), wenn
    $f(x) = g(x)$ $forall x in X$.

  #example([
    Wir betrachten die Funktion $f(x) = sin(x)$.

    Für $X_1 = [0; pi/2]$ wäre das Bild $"im"(f(X_1)) = [0; 1]$.

    //TODO: Check, ob das hier stimmt
    Für $Y_1 = [ - 1/2; 1/2]$ wäre $f^(-1)(Y_1) = {x in RR | - 1/2 <= sin(x) <=
    1/2}$ oder $f^(-1)(Y_1) = limits(union.big)_(k in ZZ) [- pi/6 + k pi; pi/6
    + k pi]$.

    Der Definitionsbereich $D(f)$ = $ZZ$ und der Wertebereich $B(f) = [-1; 1]$.
  ])
])

== Verkettung von Abbildungen
#definition([
  === Verkettung
  Es seien $X$, $Y$, $Z$ nichtleere Mengen und $f colon X -> Y$ und $g colon
  Y -> Z$ zwei Abbildungen. Dann heißt die Abbildung

  $ g compose f colon X -> Z $
  $ x |-> g(f(x)) $

  die *Verkettung* (oder *Verknüpfung*, *Hintereinanderausführung*) von $f$ und
  $g$.

  Wir sagen auch "$g$ nach $f$", d.h. $f$ wird zuerst angewendet, danach $g$.
])

#theorem([
  === Assoziativität
  Seien $f colon X -> Y$, $g colon Y -> Z$ und $h colon Z -> W$
  Abbildungen.

  Dann sind die Verkettungen $h compose (g compose f)$ und $(h compose g)
  compose f$ wohldefiniert und es gilt

  $ h compose (g compose f) ) (h compose g) compose f $

  Dies nennt man *Assoziativität der Verkettung*.
])

== Abbildungseigenschaften

#definition([
  //TODO: Bild hinzufügen
  === Surjektivität
  $f subset.eq A times B$ heißt surjektiv. wenn $forall b in B thick exists a
  in A thick ((a; b) in f)$.

  In der Sprache der Relationen spricht man von *Rechtstotalität*. Man könnte die
  Surjektivität einer Abbildung mit $f colon X ->> Y$ ausdrücken.

  #tldr([
    Eine Abbildung ist surjektiv, wenn es zu jedem $y in Y$ *mindestens* ein $x
    in X$ gibt.
  ])
])

#definition([
  //TODO: Bild hinzufügen
  === Injektivität
  Eine Abbildung heißt injektiv, wenn $forall a_1, a_2 in A and forall b in B
  thick ((a_1; b); (a_2; b) in f) <=> a_1 = a_2$.

  In der Sprache der Relationen spricht man von *Linkseindeutigkeit*. Man
  könnte die Injektivität einer Zuordnung mit $f colon X arrow.r.hook Y$
  ausdrücken, wobei der Pfeil eine Ähnlichkeit mit einer Teilmenge ($subset$)
  aufweist.

  #tldr([
    Eine Abbildung heißt injektiv, wenn es zu jedem $y in Y$ *maximal* ein $x
    in X$ gibt.
  ])
])
