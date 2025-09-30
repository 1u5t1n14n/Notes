#import "Template.typ": *

#set heading(numbering: "1.1.")
#set page(
  numbering: "1"
)
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
  === Abbildung, Funktion <graph>
  Es seien $X$ und $Y$ nichtleere Mengen.

  + Eine Vorschrift $f$, die jedem Element von $X$ genau ein Element von $Y$
    zuordnet, heißt *Abbildung* von $X$ nach $Y$.

    $forall x in D(f) subset.eq X$ gibt es genau ein $y = f(x) in Y$.

    $ f : X &-> Y \
    x &|-> y $

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

  + Die Menge aller Urpunkte von $y$ unter $f$ bezeichnen wir mit $f^(-1)(y)
    := {x in X | f(x) = y}$. Zu $f^(-1)$ sagen wir auch *das Urbild* von $y$
    unter $f$.

    #tldr([
      *Das Urbild* ist die Menge aller *Urbilder*.
    ])

    $X = D(f)$ heißt *Definitionsbereich* von $f$ und $Y = B(f)$ heißt
    *Wertebereich* von $f$.

    Die Menge $"im"(f) := {f(x) | x in X} = {y in Y | exists x in X}$ mit
    $f(x) = y$ heißt *Bild* von $f$.

  + Die Menge $ Gamma_f := {(x, f(x)) | x in X} subset X times Y$
    #footnote[siehe @kartesischesProdukt] heißt der Graph von $f$.

  + Zwei Abbildungen $f, g : X -> Y$ heißen gleich ($f = g$), wenn
    $f(x) = g(x)$ $forall x in X$.

  #example([
    === Beispiel
    Wir betrachten die Funktion $f(x) = sin(x)$.

    Für $X_1 = [0; pi/2]$ wäre das Bild $"im"(f(X_1)) = [0; 1]$.

    //TODO: Check, ob das hier stimmt
    Für $Y_1 = [ - 1/2; 1/2]$ wäre $f^(-1)(Y_1) = {x in RR | - 1/2 <= sin(x) <=
    1/2}$ oder $f^(-1)(Y_1) = limits(union.big)_(k in ZZ) [- pi/6 + k pi; pi/6
    + k pi]$.

    Der Definitionsbereich $D(f)$ = $ZZ$ und der Wertebereich $B(f) = [-1; 1]$.
  ])
])

#remark([
  #set enum(numbering: "(1)")

  === Verschiedene Abbildungen
  + Es sei $X$ eine nichtleere Menge. Die *Identität* auf $X$ ist definiert
    durch

    $ I d_X : X &-> X \
    x &|-> x $

  + Sei $y_0 in Y$ fixiert. Dann heißt die Abbildung

    $ c_y_0 : X &-> Y \
    x &|-> y_0 $

    *konstante Abbildung*.

  + Ist $X subset RR$, so heißt jede Abbildung $f : X -> RR$ *reelle
    Funktion*.

    #example([
      === Beispiel
      Die Logarithmusfunktion ist eine reelle Funktion.
      $ ln : RR^+ -> RR &\
      x &|-> ln(x) $
    ])

  #set enum(numbering: "1.")
])

== Verkettung von Abbildungen

#definition([
  === Verkettung
  Es seien $X$, $Y$, $Z$ nichtleere Mengen und $f : X -> Y$ und $g:  
  Y -> Z$ zwei Abbildungen. Dann heißt die Abbildung

  $ g compose f : X &-> Z \
  x &|-> g(f(x)) $

  die *Verkettung* (oder *Verknüpfung*, *Hintereinanderausführung*) von $f$ und
  $g$.

  Wir sagen auch "$g$ nach $f$", d.h. $f$ wird zuerst angewendet, danach $g$.
])

#theorem([
  === Assoziativität <assoziativitaet>
  Seien $f : X -> Y$, $g : Y -> Z$ und $h : Z -> W$
  Abbildungen.

  Dann sind die Verkettungen $h compose (g compose f)$ und $(h compose g)
  compose f$ wohldefiniert und es gilt

  $ h compose (g compose f) ) (h compose g) compose f $

  Dies nennt man *Assoziativität der Verkettung*.
])

== Abbildungseigenschaften

#definition([
  //TODO: Bild hinzufügen
  === Surjektivität, Injektivität und Bijektivität <injSurBij>
  Eine Abbildung $f : X -> Y$ heißt *surjektiv*. wenn $forall y in Y : exists x
  in X : f(x) = y$.

  In der Sprache der Relationen spricht man von *Rechtstotalität*. Man könnte
  die Surjektivität einer Abbildung mit $f : X ->> Y$ ausdrücken.

  #tldr([
    Eine Abbildung ist surjektiv, wenn es zu jedem $y in Y$ *mindestens* ein $x
    in X$ gibt.
  ])

  //TODO: Bild hinzufügen
  Eine Abbildung $f : X -> Y$ heißt *injektiv*, wenn $forall x_1, x_2 in X
  : f(x_1) = f(x_2) <=> x_1 = x_2$.

  In der Sprache der Relationen spricht man von *Linkseindeutigkeit*. Man
  könnte die Injektivität einer Zuordnung mit $f : X arrow.r.hook Y$
  ausdrücken, wobei der Pfeil eine Ähnlichkeit mit einer Teilmenge ($subset$)
  aufweist.

  #tldr([
    Eine Abbildung heißt injektiv, wenn es zu jedem $y in Y$ *maximal* ein $x
    in X$ gibt.
  ])

  //TODO: Bild hinzufügen
  Eine Abbildung ist *bijektiv*, wenn sie sowohl subjektiv als auch injektiv
  ist. Diese Abbildung nennen wir auch eineindeutige Zuordnung.

  #tldr([
    Eine Abbildung ist bijektiv, wenn jedem $x in X$ genau ein $y in Y$
    zugeordnet wird und jedes $y in Y$ einem $x in X$ zugeordnet wird.
  ])
])

#example([
  === Beispielbeweis
  Betrachten wir die Abbildung $f : x |-> x/(x + 1)$ mit $f : RR without {-1}
  -> RR$. Wir wollen nun herausfinden, ob $f$ injektiv, surjektiv oder sogar
  bijektiv, also beides, ist.

  + Damit $f$ *injektiv* ist, muss die Definition #footnote[siehe @injSurBij]
    <iSB> erfüllt sein. Also muss für $x_1, x_2 in X$ mit $f(x_1) = f(x_2)$
    $x_1 = x_2$. Dafür setzen wir sie gleich.

    $
      x_1/(x_1 + 1) &= x_2/(x_2 + 1) wide &&| dot (x_2 + 1) \
      (x_1 x_2 + x_1)/(x_1 + 1) &= x_2 &&| dot (x_1 + 1) \
      x_1 x_2 + x_1 &= x_1 x_2 + x_2 &&| - x_1 x_2 \
      x_1 &= x_2 \ \ \
      &endOfProof
    $

    Somit ist $f$ injektiv. Da $x_1 = x_2$ ist die Definition erfüllt.

  //TODO: Warum ist das der Ansatz?
  + Damit $f$ *surjektiv* ist, muss auch die Definition #footnote(<iSB>)
    $forall y in Y : exists x in X colon f(x) = y$ erfüllt sein.

    $
      y &= x/(x + 1) wide &&| dot (x + 1) \
      y x + y &= x &&| -y -x \
      y x - x &= -y <=> x (y - 1) = -y &&| dot 1/(y - 1) \
      x &= - y/(y - 1)
    $

    $- y/(y - 1)$ ist für $y = 1$ nicht definiert und somit ist $f$ nicht
    surjektiv, da ein $y in Y$ existiert für das es kein $x in X$ gibt.

  + $f$ ist kann folglich nicht *bijektiv* sein, da es dafür surjektiv und
    injektiv sein müsste. Es wäre bijektiv für $f : RR without {-1} -> RR
    without {1}$.
])

== Umkehrabbildung

#definition([
  === Inverse Abbildung <inversAbb>
  Ist die Abbildung $f : X -> Y$ bijektiv, so ist die inverse Abbildung
  $f^(-1) : Y -> X$ zu $f$ definiert durch

  $ f^(-1) : Y -> X \
  y |-> f^(-1)(y) $

  $y |-> f^(-1)(y) := $ das eindeutig bestimmte Urbild von $y$ unter $f$.

  #remark([
    Sei $f : X -> Y$ bijektiv. Dann ist $f^(-1) : Y -> X$ ebenfalls
    bijektiv und es gilt aufgrund der Definition

    $ f^(-1) compose f = I d_X \
    f compose f^(-1) = I d_Y \
    (f^(-1))^(-1) = f $

  ])

  #example([
    #set enum(numbering: "(1)")
    === Beispiel

    + $I d_X : X -> X$ ist bijektiv.

      $ I d_X : RR -> RR \
      x |-> x $

      $ (I d_X)^(-1) = I d_X $

    + Die konstante Abbildung $c_y_0 : X -> Y$ ist weder injektiv noch
      surjektiv, unter der Bedingung, dass $X$ und $Y$ mehr als ein Element
      enthalten.

      $(c_y_0)^(-1)$ ist zudem keine Abbildung mehr.

    + Die reelle Funktion $ln : RR^+ -> RR$, $ln : x |-> ln(x)$ ist
      bijektiv.

      Die Umkehrabbildung wäre

      $ exp : RR -> RR^+ \
      exp: x -> e^x $

    #set enum(numbering: "1.")
  ])
])

#theorem([
  #set enum(numbering: "(1)")
  === Satz über Links- und Rechtsinverse
  Sei $f : X -> Y$ eine Abbildung. Dann gilt

  + $f$ ist genau dann injektiv, wenn es eine Abbildung $g : Y -> X$ gibt,
    sodass $g compose f = I d_X$. \
    $g$ heißt *Linksinverse* von $f$.

  + $f$ ist genau dann surjektiv, wenn es eine Abbildung $h : Y -> X$ gibt,
    sodass $f compose h = I d_Y$. \
    $h$ heißt *Rechtsinverse* von $f$.

  + $f$ ist genau dann bijektiv, wenn es eine Abbildung $g : Y -> X$ gibt, die
    sowohl Links- als auch Rechtsinverse von $f$ ist. D.h. es gilt $g compose f
    = I d_X and f compose g = I d_Y$, wobei $g$ eindeutig bestimmt ist, und $g
    = f^(-1)$.

  #set enum(numbering: "1.")

  #remark([
    Nur für *bijektive* Abbildungen gibt es Umkehrabbildungen. Bei nur
    surjektiv oder injektiven Abbildungen existiert ein Urbild $f^(-1)$, eine
    Menge mit keinem, einem oder anderen Elementen.
  ])
])

#theorem([
  === Satz über die Verkettung bijektiver Abbildungen
  Seien $f : X -> Y$ und $g : Y -> Z$ zwei bijektive Abbildungen. \
  Dann ist auch ihre Verkettung $g compose f$ bijektiv und für ihre inversen
  Abbildungen gilt

  $ (g compose f)^(-1) = f^(-1) compose g^(-1) $

  #example([
    === Beweis
    Für die inversen Abbildungen $f^(-1) : Y -> X$ und $g^(-1) : Z -> Y$ gilt
    #footnote[siehe @inversAbb]
    $
      f^(-1) compose f &= I d_X wide g^(-1) compose g &&= I d_Y \
      f compose f^(-1) &= I d_Y wide g compose g^(-1) &&= I d_Z
    $

    Wegen der Assoziativität #footnote[siehe @assoziativitaet] von
    Verknüpfungen gilt

    $
      (f^(-1) compose g^(-1)) compose (g compose f) \
      &<=> f^(-1) compose g^(-1) compose g compose f \
      &<=> f^(-1) compose (g^(-1) compose g) compose f \
      &<=> f^(-1) compose (I d_Y) compose f \
      &<=> f^(-1) compose f = I d_X \
      (f^(-1) compose g^(-1)) compose (g compose f) = I d_X
    $

    Umgekehrt gilt analog dazu

    $
      (g compose f) compose (f^(-1) compose g^(-1)) \
      &<=> g compose (f compose f^(-1)) compose g^(-1) \
      &<=> g compose (I d_Y) compose g^(-1) \
      &<=> g compose g^(-1) = I d_Z \
      (g compose f) compose (f^(-1) compose g^(-1)) = I d_Z
    $

    Somit gilt, falls $f$ und $g$ bijektiv sind, $exists f^(-1) and g ^(-1)$,
    die eindeutig bestimmt, d.h. ebenfalls bijektiv sind.

    $
      &exists f^(-1) and g^(-1) \
      => &exists f^(-1) compose g^(-1) = (g compose f)^(-1) \ \ \
      endOfProof
    $
  ])
])

= Funktionen <funktion>

== Funktionseigenschaften

#definition([
  === Nullstellen
  Für eine Funktion $f$ ist $x_N in D(f)$ eine Nullstelle von $f$, wenn $f(x_N)
  = 0$.
])

== Symmetrie

#definition([
  === Gerade Funktionen
  Bei geraden Funktionen haben *Gegenzahlen* den gleichen Funktionswert.
  
  $ f(x) = f(-x) $

  Gerade Funktionen sind *achsensymmetrisch*.

  #example([
    === Beispielbeweis
    Betrachten wir die Funktion $f(x) = x^4 - 3$.

    $
      f(x) &= f(-x) \
      (-x)^4 - 3 &= x^4 - 3 \
      ((-x) (-x))^2 - 3 &= x^4 - 3 \
      (x^2)^2 - 3 &= x^4 - 3 \
      x^4 - 3 = x^4 - 3 \ \ \
      endOfProof
    $

    Die Funktion $f$ ist achsensymmetrisch und gerade.
  ])

  === Ungerade Funktionen
  Bei ungeraden Funktionen haben Gegenzahlen Gegenzahlen als Funktionswerte.

  $ f(x) = -f(-x) $

  Ungerade Funktionen sind *punktsymmetrisch*.
])

#theorem([
  #set enum(numbering: "(1)")
  === Exponentenkriterium für Symmetrie ganzrationaler Funktionen
  Wir betrachten die Funktionsgleichung *ganzrationaler Funktionen* in
  Polynomform.

  $ f(x) = a_n x^n + ... + a_1 x^1 + a_0 x^0 $

  + Hat $x$ in der Funktionsgleichung nur gerade Exponenten, so ist die
    Funktion *gerade* und *achsensymmetrisch*, denn es gilt

    $ forall x in D(f) : f(x) = f(-x) $

  + Hat $x$ in der Funktionsgleichung nur ungerade Exponenten, so ist die
    Funktion ungerade und punktsymmetrisch, denn es gilt

    $ forall x in D(f) : f(x) = -f(-x) $

  #set enum(numbering: "1.")

  #example([
    === Beweis für Achsensymmetrie
    $
      (-x)^(2n) = ((-x)^2)^n = x^(2n) \

      f(x) &= a_(2n) x^(2n) + a_(2(n - 1)) x^(2(n - 1)) + ... + a_0 x^0 \

      f(-x) &= a_(2n) (-x)^(2n) + a_(2(n - 1)) (-x)^(2(n - 1)) + ... + a_0
      (-x)^0 \
      f(-x) &= a_(2n) x^(2n) + a_(2(n - 1)) x^(2(n - 1)) + ... + a_0 x^0 \
      &= f(x) \ \ \
      endOfProof
    $
  ])
])

== Globalverhalten

#definition([
  === Monotonie
  Eine Funktion $f$ ist streng monoton fallend, genau dann wenn

  $ forall x_1, x_2 in D(f) : x_1 < x_2 <=> f(x_1) > f(x_2) $
])

#definition([
  === Grenzwerte
  Betrachten wir $f(x) = (1/2)^x$.

  $Gamma_f$, der Graph #footnote[siehe @graph] <graphFooter> von $f$, verläuft
  für $x --> oo$ gegen $y = 1$ und für $x -> -oo$ gegen $y = oo$. Um das kurz
  und knapp auszudrücken, wird die _Limes_-Schreibweise verwendet.

  $ lim_(x -> oo) f(x) = 1 $

  Der _Limes_ von $f(x)$ für $x$ gegen unendlich ist $1$. D.h., dass sich die
  Funktionswerte für sehr große $x$-Werte beliebig nah an $y = 1$ annähern,
  diesen aber nicht unbedingt erreichen.

  $ lim_(x -> -oo) f(x) = oo $
])

#theorem([
  === Globalverhalten bei ganzrationalen Funktionen
  Der Graph #footnote(<graphFooter>) einer ganzrationalen Funktion $f$ mit
  $f(x) = a_n x^n + ... + a_1 x + a_0$ mit $a_n != 0$ verhält sich für $x ->
  plus.minus oo$ wie der Graph von $g$ mit $g(x) = a_n x^n$.

  #example([
    === Beweis
    Sei $f$ mit $f(x) = a_n x^n + ... + a_1 x + a_0$ mit $a_n != 0$ eine
    ganzrationale Funktion. Dann gilt mit $lim_(x -> oo) a/x^n = 0$

    $
      lim_(x -> oo) f(x) &= lim_(x -> oo) (x^n (a_n + a_(n - 1)/x + a_(n -
    2)/x^2 + ... + a_1/x^(n - 1) + a_0/x^n)) \
      &= lim_(x -> oo) (x^n (a_n)) = lim_(x -> oo) a_n x^n \
      &= lim_(x -> oo) g(x) \ \ \
      endOfProof
    $
  ])
])

= Folgen
== Der Folgenbegriff

#definition([
  === Folgen
  Eine Funktion #footnote[siehe @funktion], deren Definitionsbereich die Menge
  der natürlichen Zahlen ist, heißt *Zahlenfolge*, kurz *Folge*.
])

#remark([
  === Notation
  Im Allgemeinen wird die Zuordnungsvorschrift in Form einer Gleichung gegeben.

  $ (a_n) : a_n = 3n - 4 $

  $(a_n)$ ist die Folgenbezeichnung.

  $n$ ist der Folgenindex, die Indexzahl, mit $n in NN$, wobei zumeist $n >= 1$
  $n$ das Argument.

  $a_n$ ist das $n$-te Folgenglied, d.h. der Funktionswert zum Argument $n$. In
  der üblichen Notation von Funktionen sollte $a_n$ besser als $a(n)$
  geschrieben werden.

  $3n - 4$ ist Term für die Berechnung des $n$-ten Folgegliedes.
])

#definition([
  === Rekursion und Explikation
  Wird die Zuordnungsvorschrift einer Folge mit einem expliziten Term, z.B. $3n
  - 4$, dann spricht man von einer *expliziten* Bildungsvorschrift.

  \

  Die Folge könnte aber auch durch eine *rekursive* Bildungsvorschrift gegeben
  sein. Dann bediene man sich jener Form.

  $ (a_n) : a_1 = -1 and a_n = a_(n - 1) + 3 $

  #tldr([
    Wenn das Berechnen mit *einfachem* Rechenaufwand verbunden ist, der Term
    also nicht auf vorhergehende oder nachfolgende Folgenglieder zurückgreift,
    dann ist die Bildungsvorschrift *explizit*.

    Wenn der Bildungsterm auf vorhergehende oder nachfolgende Folgenglieder
    zurückgreift, dann ist die Zuordnungsvorschrift *rekursiv*.
  ])
])

== Verschiedene Folgen

#definition([
  === Geometrische Folgen <geometrischeFolgen>
  Eine Folge $(a_n)$ heißt geometrisch, wenn $exists q in RR without {0; 1}
  forall n in NN without {0} : (a_(n + 1))/a_n = q$

  Es gibt genau ein $q in RR without {0; 1}$, sodass für alle $n in NN without
  {0}$ $(a_(n + 1))/a_n = q$. Oder anders gesagt

  $ a_(n +1) = q dot a_n $

#theorem([
    Für jede geometrische Folge $(a_n)$ gilt $a_n = a_1 dot q^(n - 1)$, weil $a_1
    = a_1 dot q^0$, weil $q^0$ für $q in NN without {0}$ immer $1$ ist.

    $ a_1 &= a_1 dot q^0 \
    a_2 &= a_1 dot q^1 \
    a_3 &= a_2 dot q^1 = a_1 dot q^2 \
    &... $
  ])
])

#remark([
  === Konstante Folgen
  $q$ #footnote[siehe @geometrischeFolgen] darf nicht $1$ sein, denn folglich
  wäre $forall n in NN : a_(n + 1) = a_n$.

  Solche Folgen nennen wir *konstante Folgen*.
])

#definition([
  === Alternierende Folgen
  Folgen, deren aufeinanderfolgende Folgenglieder unterschiedliche Vorzeichen
  besitzen, nennen wir *alternierend*.

  $ forall n in NN without {0} : a_n dot a_(n+1) < 0 $
])

== Monotonieverhalten

#definition([
  === Strenge Monotonie
  Eine Folge $(a_n)$, deren nächstes Folgeglied immer größer ist als das
  vorhergehende, nennt man *streng monoton steigend*.

  $ forall n in NN : a_n < a_(n + 1) $

  #remark([
    Nicht streng monoton steigend sind jedoch alle Folgen, für die gilt

    $ exists n in NN : a_n >= a_(n + 1) $
  ])

  Wenn das nächste Folgeglied immer kleiner ist als das vorhergehende, dann
  nennt man sie analog dazu *streng monoton fallend*.

  $ forall n in NN : a_n > a_(n + 1) $

  #remark([
    Nicht streng monoton fallend sind jedoch alle Folgen, für die gilt

    $ exists n in NN : a_n <= a_(n + 1) $
  ])

  #example([
    === Beispielbeweis <herausgegriffen>
    Betrachten wir die Folge $(c_n) : c_n = (n-1)/n$ mit $n in NN and n >= 1$.
    Dazu gehen wir zuerst von einer streng monotonen Steigung aus und stellen
    dann um.

    $
      c_n &< c_(n + 1) \
      (n - 1)/n &< n/(n + 1) wide &&| dot n \
      n - 1 &< (n^2)/(n + 1) &&|  dot (n + 1) \
      n^2 - 1 &< n^2 &&| - n^2 \
      -1 < 0 \ \ \
      endOfProof
    $

    Die Vermutung ist *wahr*, da eine wahre Ungleichung am Ende steht.
  ])
])

#definition([
  === Einfache Monotonie
  Folgen, die auch aufeinanderfolgende gleiche Folgeglieder aufweisen, sonst
  allerdings monoton steigen oder fallen, nennt man *monoton steigend* bzw.
  *monoton fallend*.

  $ forall n in NN : a_n <= a_(n + 1) \
  "bzw." forall n in NN : a_n >= a_(n + 1) $
])

== Teilfolgen

#remark([
  === Folgen mit Systematik
  In @herausgegriffen könnten bezüglich der Folge $(c_n) : c_n = (n - 1)/n$
  systematisch Folgenglieder "herausgegriffen" werden, z.B. $c_1$, $c_10$,
  $c_100$, ..., $c_(10^(k - 1))$. \
  Diese Folgenglieder kann man als Neue Folge auffassen, die ein Teil der
  Folge $(c_n)$ ist.
])

#definition([
  === Definition
  Die Folge $(t_n)$ ist Teilfolge der Folge $(a_n)$. \
  Ist $n_i$ mit $(i = 1; 2; ...; k in NN without {0})$ eine streng monoton
  wachsende Folge natürlicher Zahle, so heißt $(a_(n_i)) = (t_n)$ Teilfolge von
  $(a_n)$.
])

#theorem([
  === Teilfolgensatz
  Jede Folge $(a_n)$ besitzt eine monotone Teilfolge.
])

= Beweise
== Beweistechniken

#definition([
  === Hinrichtung und Rückrichtung
  Beweise können _Genau dann, wenn ..._ Aussagen, die in zwei Richtungen
  funktionieren, sein.

  #example([
    === Satz vom Nullprodukt als Beispiel
    $a dot b = 0$ für $a,b in RR$ gilt genau dann, wenn $a = 0 or b = 0$.

    \

    *Hinrichtung* "$==>$" \
    + Wir nehmen an, dass $a dot b = 0$
      Sei nun $a != 0$. Jetzt können wir durch Null teilen.

      $
        a dot b &= 0 wide | div a \
        b &= 0
      $

    + Analog gilt dies auch für $b != 0$.

    Es folgt, dass wenn $a dot b = 0$, muss mindestens einer der Faktoren $a$
    oder $b$ Null sein.

    \

    *Rückrichtung* "$<==$" \
    + Wir nehmen an, dass $a = 0$. Somit gilt

      $ a dot b = 0 dot b = 0 $

    + Analog gilt dies für $b = 0$.

    Es folgt, dass wenn mindestens einer der Faktoren Null ist, dann ist auch
    das Produkt Null.

    $
      \ \ \
      endOfProof
    $
  ])
])
