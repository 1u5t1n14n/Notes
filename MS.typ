#import "Template.typ": *
#show: template.with(color: "#FF0000", title: "Mathematik")

= Mengen und Zahlbereiche
== Mengen

#definition[
  === Definition nach Cantor
  Unter einer *Menge* verstehen wir eine Zusammenfassung von bestimmten,
  wohlunterschiedenen Objekten unserer Anschauung oder unseres Denkens, welche
  *Elemente* der Menge heißen, zu einem Ganzen.
]

#remark[
  === Mengeneigenschaften
  Sei $M$ eine Menge. Dann heißt

  - $x in M$, $x$ ist ein Element von $M$.

  - $x in.not M$, $x$ ist kein Element von $M$.

  - $M = emptyset$, $M$ ist eine Leere Menge, die kein Element enthält, also $M
    = {}$.

  - $|M|$ heißt *Mächtigkeit* oder Kardinalzahl von $M$ und gibt an, wie viele
    Elemente $M$ enthält.

  Wir können Mengen auf verschiedene Weisen darstellen.

  - Wortvorschriften

    #example[
      Z.B. $M$ ist die Menge aller natürlichen Zahlen, die durch $5$ teilbar
      ist.
    ]

  - Auflistung der Elemente

    #example[
      Z.B. $M = { 0; 5; 10; dots}$
    ]

  - Definition der Eigenschaften

    #example[
      Z.B. $M = {n in NN | n mod 5 = 0}$
    ]

  - Graphisch, z.B. als Venn-Diagramm.
]

#definition[
  === Mengenbeziehungen
  Seien $X$ und $Y$ Mengen.

  - $X$ heißt *Teilmenge* von $Y$ ($X subset.eq Y$), wenn jedes Element von $X$
    auch in $Y$ ist.

  - $X$ heißt *echte Teilmenge* von $Y$ ($X subset Y$), wenn jedes Element von
    $X subset.eq Y and X eq.not Y$.

  - Die Mengen $X$ und $Y$ heißen *gleich*, wenn $X subset.eq Y and Y subset.eq
    X$.
]

#definition[
  === Vereinigung, Durchschnitt und Mengendifferenz
  Seien $X$ und $Y$ Mengen. Dann heißt

  - $X inter Y := {x | x in X and x in Y}$ *Durchschnitt* von $X$ und $Y$.

    #tldr[
      Durchschnitt ist eine Schnittmenge.
    ]

  - $X union Y := {x | x in X or x in Y}$ *Vereinigung* von $X$ und $Y$.

  - $X union.dot Y := {x | x in X or.dot x in Y}$ *disjunkte Vereinigung* von
    $X$ und $Y$.

  - $X without Y := {x | x in X and x in.not Y}$ *Differenz* von $X$ und $Y$.
]

#definition[
  === Kartesisches Produkt <kartesischesProdukt>
  Seien $X$ und $Y$ Mengen, dann ist ihr kartesisches Produkt definiert durch
  die Kreuzmenge aus beiden.

  $ X times Y = {(x; y) | x in X and y in Y} $

  #footnote[$(x; y)$ ist ein geordnetes Paar #footnote[$(x; y) = (v; w) <=> x =
  v wide y = w$].]
  
]

== Zahlbereiche

#remark[
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
]

= Abbildungen
== Abbildung, Bild, Urbild, Definitions- und Wertebereich

#definition[
  //TODO: Bild hinzufügen
  === Abbildungen und Funktionen <graph>
  Es seien $X$ und $Y$ nichtleere Mengen.

  + Eine Vorschrift $f$, die jedem Element von $X$ genau ein Element von $Y$
    zuordnet, heißt *Abbildung* von $X$ nach $Y$.

    $forall x in D_f subset.eq X$ gibt es genau ein $y = f(x) in Y$.

    $
      f : X &-> Y \
      x &|-> y
    $

    Handelt es sich bei $X$ und $Y$ um reine Zahlenmengen (z.B. $RR$), so
    bezeichnen wir die Abbildung $f$ auch als *Funktion*.

  + $D_f$ ist die *Definitionsmenge* #footnote(<funkyColdMedina>) von der
    Vorschrift $f$.

  + $B_f$ ist die *Bildungsmenge* #footnote[siehe @funktionsBegriffe für
    Funktionen] <funkyColdMedina> von $f$, wobei $B_f = {y in Y | y = f(x)
    "mit" x in D_f}$

  + $f(x) in Y$ heißt *Bildpunkt* bzw. *Funktionswert* von $x$ unter $f$.

    Ist $y in Y$, so heißt jedes $x in X$ mit $f(x) = y$ *ein Urbild* bzw.
    *Argument* von $y$ unter $f$.

  + Die Menge aller Urpunkte von $y$ unter $f$ bezeichnen wir mit $f^(-1)(y) :=
    {x in X | f(x) = y}$. Zu $f^(-1)$ sagen wir auch *das Urbild* von $y$ unter
    $f$.

    #tldr[
      *Das Urbild* ist die Menge aller *Urbilder*.
    ]

    $X = D_f$ heißt *Definitionsbereich* von $f$ und $Y = B_f$ heißt
    *Wertebereich* von $f$.

    Die Menge $i m(f) := {f(x) | x in X} = {y in Y | exists x in X}$ mit $f(x)
    = y$ heißt *Bild* von $f$.

  + Die Menge $ Gamma_f := {(x, f(x)) | x in X} subset X times Y$
    #footnote[siehe @kartesischesProdukt] heißt der Graph von $f$.

  + Zwei Abbildungen $f, g : X -> Y$ heißen gleich ($f = g$), wenn $f(x) =
    g(x)$ $forall x in X$.

  #example[
    === Beispiel
    Wir betrachten die Funktion $f(x) = sin(x)$.

    Für $X_1 = [0; pi/2]$ wäre das Bild $i m(f(X_1)) = [0; 1]$.

    //TODO: Check, ob das hier stimmt
    Für $Y_1 = [ - 1/2; 1/2]$ wäre $f^(-1)(Y_1) = {x in RR | - 1/2 <= sin(x) <=
    1/2}$ oder $f^(-1)(Y_1) = limits(union.big)_(k in ZZ) [- pi/6 + k pi; pi/6
    + k pi]$.

    Der Definitionsbereich $D_f = ZZ$ und der Wertebereich $B_f = [-1; 1]$.
  ]
]

#theorem[
  #set enum(numbering: "1)")
  === Satz über Bilder und Urbilder
  Sei $f : X -> Y$ eine Abbildung, $A, A_1, A_2 subset X$ und $B, B_1, B_2
  subset Y$. Dann gilt

  + $f(A_1 union A_2) = f(A_1) union f(A_2)$

  + $f(A_1 inter A_2) = f(A_1) inter f(A_2)$

  + $f(X without A) = f(X) without f(A)$

  + $f^(-1)(B_1 union B_2) = f^(-1)(B_1) union f^(-1)(B_2)$

  + $f^(-1)(B_1 inter B_2) = f^(-1)(B_1) inter f^(-1)(B_2)$

  + $f^(-1)(Y without B) = X without f^(-1)(B)$

  #set enum(numbering: "1.")
]

#remark[
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

    #example[
      === Beispiel
      Die Logarithmusfunktion ist eine reelle Funktion.
      $ ln : RR^+ -> RR &\
      x &|-> ln(x) $
    ]

  #set enum(numbering: "1.")
]

== Verkettung von Abbildungen

#definition[
  === Verkettung
  Es seien $X$, $Y$, $Z$ nichtleere Mengen und $f : X -> Y$ und $g:  
  Y -> Z$ zwei Abbildungen. Dann heißt die Abbildung

  $ g compose f : X &-> Z \
  x &|-> g(f(x)) $

  die *Verkettung* (oder *Verknüpfung*, *Hintereinanderausführung*) von $f$ und
  $g$.

  Wir sagen auch "$g$ nach $f$", d.h. $f$ wird zuerst angewendet, danach $g$.
]

#theorem[
  === Assoziativität <assoziativitaet>
  Seien $f : X -> Y$, $g : Y -> Z$ und $h : Z -> W$
  Abbildungen.

  Dann sind die Verkettungen $h compose (g compose f)$ und $(h compose g)
  compose f$ wohldefiniert und es gilt

  $ h compose (g compose f) ) (h compose g) compose f $

  Dies nennt man *Assoziativität der Verkettung*.
]

== Abbildungseigenschaften

#definition[
  //TODO: Bild hinzufügen
  === Surjektivität, Injektivität und Bijektivität <injSurBij>
  Eine Abbildung $f : X -> Y$ heißt *surjektiv*. wenn $forall y in Y : exists x
  in X : f(x) = y$.

  In der Sprache der Relationen spricht man von *Rechtstotalität*. Man könnte
  die Surjektivität einer Abbildung mit $f : X ->> Y$ ausdrücken.

  #tldr[
    Eine Abbildung ist surjektiv, wenn es zu jedem $y in Y$ *mindestens* ein $x
    in X$ gibt.
  ]

  //TODO: Bild hinzufügen
  Eine Abbildung $f : X -> Y$ heißt *injektiv*, wenn $forall x_1, x_2 in X
  : f(x_1) = f(x_2) <=> x_1 = x_2$.

  In der Sprache der Relationen spricht man von *Linkseindeutigkeit*. Man
  könnte die Injektivität einer Zuordnung mit $f : X arrow.r.hook Y$
  ausdrücken, wobei der Pfeil eine Ähnlichkeit mit einer Teilmenge ($subset$)
  aufweist.

  #tldr[
    Eine Abbildung heißt injektiv, wenn es zu jedem $y in Y$ *maximal* ein $x
    in X$ gibt.
  ]

  //TODO: Bild hinzufügen
  Eine Abbildung ist *bijektiv*, wenn sie sowohl subjektiv als auch injektiv
  ist. Diese Abbildung nennen wir auch eineindeutige Zuordnung.

  #tldr[
    Eine Abbildung ist bijektiv, wenn jedem $x in X$ genau ein $y in Y$
    zugeordnet wird und jedes $y in Y$ einem $x in X$ zugeordnet wird.
  ]

  #example[
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

      $ endOfProof $

    + $f$ ist kann folglich nicht *bijektiv* sein, da es dafür surjektiv und
      injektiv sein müsste. Es wäre bijektiv für $f : RR without {-1} -> RR
      without {1}$.
  ]
]

#example[
  === Hinrichtungs- und Rückrichtungsbeweise
  #set enum(numbering: "1)")
  *Injektivität* \
  + "$==>$" \ \
    Sei $f$ injektiv. \
    Wir fixieren ein Element $x_0 in X$ und definieren $g : Y -> X$ durch

    $
      g(y) := cases(
        x &"falls" y in i m(f) and f(x) = y,
        x_0 &"falls" y in.not i m(f)
      )
    $

    Dann ist $g$ *wohldefiniert* und es gilt $g(f(x)) = x$ für alle $x in X$. \
    $g$ ist also eine Linksinverse #footnote[siehe @linksRechts] von $f$.

    "$<==$" \ \
    Sei $g : Y -> X$ eine Linksinverse von $f$. \
    Seien $x_1, x_2 in X$ zwei Punkte mit $f(x_1) = f(x_2)$. \
    Dann gilt $x_1 = g(f(x_1)) = g(f(x_2)) = x_2$ und somit $x_1 = x_2$. \
    Folglich ist $f$ injektiv.

    $ endOfProof $

  *Surjektivität*
  + "$==>$" \ \
    Sei $f$ surjektiv. \
    Für jedes $y in Y$ wählen wir ein Urbild $x(y) in X$ aus. \
    Dann ist die Abbildung $h : Y -> X$ mit $h(x) := x(y)$ wohldefiniert und es
    gilt $f(h(y)) = f(x(y)) = y$ für alle $y in Y$. \
    $h$ ist also eine Rechtsinverse von $f$.

  + "$<==$" \ \
    Sei $h : Y -> X$ eine Rechtsinverse von $f$. \
    Dann gilt $f(h(y)) = y$ für alle $y in Y$. \
    Also ist $h(y) in X$ ein Urbild von $y$ unter $f$. \
    Folglich ist $f$ surjektiv. \

    $ endOfProof $

  //TODO: Hier noch Bijektivität einbringen.

  #set enum(numbering: "1.")
]

== Umkehrabbildung

#definition[
  === Inverse Abbildung <inversAbb>
  Ist die Abbildung $f : X -> Y$ bijektiv, so ist die inverse Abbildung
  $f^(-1) : Y -> X$ zu $f$ definiert durch

  $ f^(-1) : Y -> X \
  y |-> f^(-1)(y) $

  $y |-> f^(-1)(y) := $ das eindeutig bestimmte Urbild von $y$ unter $f$.

  #remark[
    Sei $f : X -> Y$ bijektiv. Dann ist $f^(-1) : Y -> X$ ebenfalls
    bijektiv und es gilt aufgrund der Definition

    $ f^(-1) compose f = I d_X \
    f compose f^(-1) = I d_Y \
    (f^(-1))^(-1) = f $

  ]

  #example[
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
  ]
]

#theorem[
  #set enum(numbering: "(1)")
  === Satz über Links- und Rechtsinverse <linksRechts>
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

  #remark[
    Nur für *bijektive* Abbildungen gibt es Umkehrabbildungen. Bei nur
    surjektiv oder injektiven Abbildungen existiert ein Urbild $f^(-1)$, eine
    Menge mit keinem, einem oder anderen Elementen.
  ]
]

#theorem[
  === Satz über die Verkettung bijektiver Abbildungen
  Seien $f : X -> Y$ und $g : Y -> Z$ zwei bijektive Abbildungen. \
  Dann ist auch ihre Verkettung $g compose f$ bijektiv und für ihre inversen
  Abbildungen gilt

  $ (g compose f)^(-1) = f^(-1) compose g^(-1) $

  #example[
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
  ]
]

= Funktionen

== Grundlagen zum Funktionsbegriff

#definition[
  === Zahlenmengenkriterium <funktion>
  Sei $f$ eine Zuordnung von der Menge $X$ in die Menge $Y$, d.h. $f : X -> Y$,
  wobei $X$, $Y$ Zahlenmengen sind. $f$ heißt *Funktion* genau dann, wenn jedem
  $x in X$ genau ein $y in Y$ zugeordnet wird.
]

#remark[
  #set enum(numbering: "(1)")
  === Begriffe <funktionsBegriffe>
  + Die Menge $X$ ist der *Definitionsbereich* $D_f$ von $f$. Die Elemente von
    $X$ heißen *Argumente*.

  + Die zugeordneten Elemente aus der Menge $Y$ heißen *Funktionswerte*. Sie
    bilden den *Wertebereich* $W_f$ der Funktion. Es gilt $W_f subset.eq Y$.

  + Für die FUnktionswere $y$ wird auch die Symbolik $f(x)$ verwendet, d.h.
    $f(x)$ ist der Funktionswert zum Argument $x$, z.B. $f(2) = 3$ bedeutet,
    dass $3$ der Funktionswert des Arguments $2$ ist.

  + Die Angabe einer Funktion mittels Funktionsterm wird entweder mit $f : f(x)
    = 2x + 1$ oder mit $f: RR -> RR$; $x |-> 2 x + 1$ festgelegt.

    Der Term wird bei ersterer Angabe _Funktion $f$: Funktionswert ist gleich
  Funktionsterm_ gesprochen.

  #set enum(numbering: "1.")
]

#example[
  #set enum(numbering: "(1)")
  === Grundlegende Funktionstypen
  + Sei $f : RR -> RR$ eine Abbildung mit $f(x) = m x + n$ $m, n in RR$.

    Dann heißt die Abbildung *lineare Funktion* #footnote[siehe @linear]. Ihr
    Graph #footnote[siehe @graph] eine Gerade.

  + Sei $f : RR -> RR$ eine Abbildung mit $f(x) = a x^2 + b x + c$ $a, b, c in
    RR$ $a != 0$.

    Dann heißt die Abbildung *quadratische Funktion* #footnote[siehe @quadrat].
    Ihr Graph ist eine nach oben oder unten geöffnete Parabel.

  + Sei $q$ eine rationale Zahl.

    Dann heißt die Funktion $f : RR -> RR$ mit $f(x) = x^q$ *Potenzfunktion*.
    Insbesondere heißt die Funktion $f : RR^+ -> RR$ mit $f(x) = x^(1/m) =
    root(m, x)$ mit $m in NN$ *Wurzelfunktion*.

  + Seien $a_0, a_1, ..., a_n in RR$ und $p(x) := limits(sum)_(k = 0)^n a_k x^k
    = #polynom$ ein *Polynom*.

    Dann heißt die Funktion $f : RR -> RR$ mit $f(x) = p(x)$ *ganzrationale
    Funktion*. Der höchste Exponent mit $a_k != 0$ heißt *Grad* von $p$ und $a_0$
    bis $a_n$ heißen *Koeffizienten*.

  + Sind $p$ und $q$ ganzrationale Funktionen, so nennt man die Funktion $f$
    mit $f(x) = p(x)/q(x)$ eine *rationale Funktion* #footnote[siehe
    @gebrochenRacional].

    Die Funktion $f$ ist an den Nullstellen #footnote[siehe @nullstellen] ihres
    Nenners $q$ nicht definiert. Diese Nullstellen heißen *Definitionslücken* von
    $f$ und gehören nicht zum Definitionsbereich.

  + Eine Funktion $f : RR -> RR$ der Form $f(x) = a dot b^x$ mit $a, b in RR$,
    $a != 0$, $b != 1$ heißt *Exponentialfunktion*, da das Argument im
    Exponenten steht. $b$ heißt Basis.

  + Eine Funktion $f : RR^+ -> RR$ der Form $f(x) = a dot log_b(x)$ mit $a, b
    in RR$, $a != 0$, $b != 0$, $b != 1$ heißt *Logarithmusfunktion* zur Basis
    $b$.

  + Die Funktionen $s : RR -> RR$ mit $s(x) = sin(x)$ und $c : RR -> RR$ mit
    $c(x) = cos(x)$ heißen *Sinusfunktion* und *Kosinusfunktion*. Des Weiteren
    heißt die Funktion $t$ mit $tan(x) = s(x)/c(x)$ *Tangensfunktion*. $s$, $c$
    und $t$ sind die elementaren *trigonometrischen Funktionen*.

  #set enum(numbering: "1.")
]

#definition[
  === Nullstellen <nullstellen>
  Für eine Funktion $f$ ist $x_N in D_f$ eine Nullstelle von $f$, wenn $f(x_N)
  = 0$.
]

== Symmetrie

#definition[
  === Gerade Funktionen
  Bei geraden Funktionen haben *Gegenzahlen* den gleichen Funktionswert.
  
  $ f(x) = f(-x) $

  Gerade Funktionen sind *achsensymmetrisch*.

  #example[
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
  ]

  === Ungerade Funktionen
  Bei ungeraden Funktionen haben Gegenzahlen Gegenzahlen als Funktionswerte.

  $ f(x) = -f(-x) $

  Ungerade Funktionen sind *punktsymmetrisch*.
]

#theorem[
  #set enum(numbering: "(1)")
  === Exponentenkriterium für Symmetrie ganzrationaler Funktionen
  Wir betrachten die Funktionsgleichung *ganzrationaler Funktionen* in
  Polynomform.

  $ f(x) = #polynom$

  + Hat $x$ in der Funktionsgleichung nur gerade Exponenten, so ist die
    Funktion *gerade* und *achsensymmetrisch*, denn es gilt

    $ forall x in D_f : f(x) = f(-x) $

  + Hat $x$ in der Funktionsgleichung nur ungerade Exponenten, so ist die
    Funktion ungerade und punktsymmetrisch, denn es gilt

    $ forall x in D_f : f(x) = -f(-x) $

  #set enum(numbering: "1.")

  #example[
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
  ]
]

== Verhalten

#definition[
  === Monotonie
  Eine Funktion $f$ ist streng monoton fallend, genau dann wenn

  $ forall x_1, x_2 in D_f : x_1 < x_2 <=> f(x_1) > f(x_2) $
]

#definition[
  === Globalverhalten
  Sei $f$ eine Funktion. Das *Globalverhalten* von $f$ beschreibt das Verhalten
  der Funktionswerte, wenn die Argumente unendlich groß oder unendlich klein
  werden.
]

#theorem[
  === Globalverhalten bei ganzrationalen Funktionen
  Der Graph #footnote(<graphFooter>) einer ganzrationalen Funktion $f$ mit
  $f(x) = #polynom$ mit $a_n != 0$ verhält sich für $x -> plus.minus oo$ wie
  der Graph von $g$ mit $g(x) = a_n x^n$.

  #example[
    === Beweis
    Sei $f$ mit $f(x) = #polynom$ mit $a_n != 0$ eine ganzrationale Funktion.
    Dann gilt mit $lim_(x -> oo) a/x^n = 0$

    $
      lim_(x -> oo) f(x) &= lim_(x -> oo) (x^n (a_n + a_(n - 1)/x + a_(n -
    2)/x^2 + ... + a_1/x^(n - 1) + a_0/x^n)) \
      &= lim_(x -> oo) (x^n (a_n)) = lim_(x -> oo) a_n x^n \
      &= lim_(x -> oo) g(x) \ \ \
      endOfProof
    $
  ]
]

== Verschiebung

#theorem[
  === Verschiebung einer Funktion in $y$-Richtung
  Um eine beliebige Funktion $f(x)$ um $c$ Einheiten in $y$-Richtung zu
  verschieben, sei die verschobene Funktion $f^*(x) = f(x) + c$.
]

#theorem[
  === Verschiebung einer Funktion in $x$-Richtung
  Um eine beliebige Funktion $f(x)$ um $d$ Einheiten in $x$-Richtung zu
  verschieben, sei die verschobene Funktion $f^*(x) = f(x - d)$.
]

== Grenzwerte

#definition[
  === Syntax und Semantik
  Betrachten wir $f(x) = (1/2)^x$.

  $Gamma_f$, der Graph #footnote[siehe @graph] <graphFooter> von $f$, verläuft
  für $x --> oo$ gegen $y = 1$ und für $x -> -oo$ gegen $y = oo$. Um das kurz
  und knapp auszudrücken, wird die _Limes_-Schreibweise #footnote[siehe
  römisches Germanien] verwendet.

  $ lim_(x -> oo) f(x) = 1 $

  Der _Limes_ von $f(x)$ für $x$ gegen unendlich ist $1$. D.h., dass sich die
  Funktionswerte für sehr große $x$-Werte beliebig nah an $y = 1$ annähern,
  diesen aber nicht unbedingt erreichen.

  $ lim_(x -> -oo) f(x) = oo $
]

#theorem[
  #set enum(numbering: "(1)")
  === Grenzwerte für Funktionen
  Sind $f, g : D -> RR$ Funktionen und existieren #footnote[konvergieren nicht
  gegen Unendlich, sondern gegen eine Zahl] ihre Grenzwerte $limits(lim)_(x
  -> oo) f(x) = b$ und $limits(lim)_(x -> oo) g(x) = c$, dann gilt Folgendes.

  + $limits(lim)_(x -> oo) (f(x) + g(x) = b + c$

  + $limits(lim)_(x -> oo) (f(x) dot g(x)) = b dot c$, falls $b, g != 0$.

  + $limits(lim)_(x -> oo) (f(x)/g(x)) = b/c$

  + $limits(lim)_(x -> oo) (a dot f(x)) = a dot b$

  #set enum(numbering: "1.")
]

#remark[
  === Lokales Grenzvertverhalten
  Für $limits(lim)_(x -> x_0) f(x)$ mit $x_0 in D$ existieren ein linksseitiger
  und ein rechtsseitiger Grenzwert.

  Der linksseitige Grenzwert nähert sich von *links nach rechts* an und hat
  verschiedene Darstellungsmöglichkeiten.

  $
    lim_(x -> x_0^-) f(x) &= lim_(x -> x_0) f(x) "mit" x < x_0 \
    &= lim_(x -> x_0 \ x < x_0) f(x) \
    &= lim_(x arrow.tr x_0) f(x)
  $

  Der rechtsseitige Grenzwert nähert sich von *rechts nach links* an und hat
  verschiedene Darstellungsmöglichkeiten.

  $
    lim_(x -> x_0^+) f(x) &= lim_(x -> x_0) f(x) "mit" x > x_0 \
    &= lim_(x -> x_0 \ x > x_0) f(x) \
    &= lim_(x arrow.br x_0) f(x)
  $

  Zur Berechnung nutzt man eine konvergente Folge #footnote[siehe @folgen].

  $
    (x_n) : x_n = x_0 + 1/n "für" x > x_0 \
    (x_n) : x_n = x_0 - 1/n "für" x < x_0 \
  $

  Danach ersetzt man in der Grenzwertberechnung jedes Argument $x$ durch die
  Folge.

  $ lim_(x -> x_0^+) f(x) = lim_(n -> oo) f(x) $

  #example[
    === Beispiel <grenzSpiel>
    Betrachten wir $f(x) = x^2$ und $x_0 = 2$.

    Zuerst berechnen wir den linksseitigen Grenzwert. // Weil's Spaß
                                                      // macht.

    $
      lim_(x -> 2^-) f(x) &= lim_(x -> 2^-) x^2 = lim_(n -> oo) (2 - 1/n)^2 \
      &= lim_(n -> oo) (4 - 4/n - 1/(n^2)) \
      &= 4
    $

    Nun kann man ihn auch rechtsseitig bestimmen.

    $
      lim_(x -> 2^+) f(x) &= lim_(x -> 2^+) x^2 = lim_(n -> oo) (2 + 1/n)^2 \
      &= lim_(n -> oo) (4 + 4/n + 1/(n^2)) \
      &= 4
    $
  ]
]

#theorem[
  === Satz für die Stetigkeit
  Eine Funktion $f : D_f -> RR$ ist in $x_0 in D_f$ genau dann stetig, wenn
  links- und rechtsseitiger Grenzwert existieren und mit dem Funktionswert von
  $x_0$ übereinstimmen.

  $ lim_(x -> x_0^-) f(x) = f(x_0) = lim_(x -> x_0^+) f(x) $

  #example[
    Nehmen wir das Beispiel aus @grenzSpiel.

    $ lim_(x -> 2^-) f(x) = f(2) = lim_(x -> 2^+) = 2 $

    Somit ist $f$ stetig.
  ]
]

#definition[
  === Unstetigkeitsstelle
  Ist eine Funktion $f$ aus der Stelle $x_0 in D_F$ nicht stetig, so heißt
  $x_0$ Unstetigkeitsstelle.

  #tldr[Ist $x_0$ nicht stetig, so ist $x_0$ nicht stetig.]

  #remark[
    Es wird zwischen Unstetigkeitsstellen *erster* und *zweiter Art*
    unterschieden.

    + $x_0$ ist eine Unstetigkeitsstelle *erster Art*, falls links- und
      rechtsseitiger Grenzwert existieren und endlich sind, aber nicht mit dem
      Funktionswert an der Stelle $x_0$ übereinstimmen.

      Falls links- und rechtsseitiger Grenzwert übereinstimmen wird $x_0$ als
      *hebbare Unstetigkeitsstelle* bezeichnet, da die Stelle durch Änderung von
      $f(x_0)$ stetig werden kann.

      $ lim_(x -> x_0^-) f(x) = lim_(x -> x_0^+) f(x) != f(x_0) $

      Falls links- und rechtsseitiger Grenzwert nicht übereinstimmen wird $x_0$
      als *Sprungstelle* (mit Sprung $sigma$) bezeichnet, da die Funktion
      sinnbildlich springt.

      $
        lim_(x -> x_0^-) f(x) != lim_(x -> x_0^+) f(x) != f(x_0) wide
        sigma = | lim_(x -> x_0^-) f(x) - lim_(x -> x_0^+) f(x) |
      $

    + $x_0$ ist eine Unstetigkeitsstelle *zweiter Art*, falls mindestens der
      links- oder der rechtsseitige Grenzwert nur *uneigentlich* oder *gar
      nicht* existieren.
  ]
]

== Lineare Funktionen <linear>

#definition[
  === Funktionsgleichung
  Ist $f$ eine ganzrationale Funktion 1. Grades, so wird sie auch *lineare
  Funktion* genannt. Ihr Graph ist eine *Gerade*.

  Ihre Funktionsgleichung lautet $f(x) = m x + n$ mit $m, n in RR$, wobei $m$
  die *Steigung* der Geraden und $Y(0|n)$ der Schnittpunkt mit der $y$-Achse
  ist.
]

#theorem[
  #set enum(numbering: "1)")
  === Steigung linearer Funktionen
  Seien $f$ und $g$ zwei lineare Funktionen mit den Steigungen $m_f$ und $m_g$.
  Dann gilt

  + Die Graphen #footnote(<graphFooter>) von $f$ und $g$ sind genau dann
    *parallel* zueinander, wenn $m_f = m_g$.

  + Die Graphen von $f$ und $g$ sind genau dann *orthogonal* zueinander, wenn
    $m_f dot m_g = -1$ gilt.

    #remark[
      Falls man die Steigung einer Geraden $g$ berechnen wollte, die
      *orthogonal* zur Geraden $f$ ist, kann man diese Formel umstellen.

      $
        m_f dot m_g &= -1 wide | div m_f \
        m_g &= - 1/m_f = - (m_f)^(-1)
      $
    ]

  #example[
    === Beweis
    Seien $f$ und $g$ zwei lineare Funktionen mit den Steigungen $m_f$ und
    $m_g$.

    + Wir nehmen an, dass $f$ und $g$ genau einen Schnittpunkt besitzen. Dann
      $exists! x in D_f inter D_g : f(x) = g(x)$

      $
        f(x) &= g(x) \
        m_f x + n_f &= m_g x + n_g wide &&"mit" m_f = m_g = m \
        m x + n_f &= m x + n_g &&| - m x \
        n_f &= n_g
      $

      Für $n_f != n_g$ gilt $exists.not x in D_f inter D_g : f(x) = g(x)$. Zwei
      Geraden, die keinen gemeinsamen Punkt haben, sind *parallel*.

      Für $n_f = n_g$ gilt $forall x in D_f inter D_g : f(x) = g(x)$. Zwei
      Geraden, die unendlich viele gemeinsame Punkte haben, sind *identisch*.

      $ endOfProof $

    + Ohne Beschränkung der Allgemeinheit #footnote[Nur gewisse Fälle werden
      aufgezeigt, da die restlichen Fälle _trivial_ sind.] legen wir fest, dass
      sich $f$ und $g$ im Ursprung unter einem rechten Winkel treffen.

      - Es gilt $m_f = (Delta y)/(Delta x)$, wobei $Delta x$ und $Delta y$ die
        Katheten eines Steigungsdreiecks von $f$ sind.

      - Dreht man die Gerade $f$ samt Steigungsdreieck um $90 degree$ um den
        Ursprung, so erhält man die gerade $g$, mit kongruentem
        Steigungsdreieck und $m_g = (Delta x)/(-Delta y)$.

      - Es folgt $m_f dot m_g = (Delta y)/(Delta x) (Delta x)/(-Delta y) = -1$

      $ endOfProof $
  ]

  #set enum(numbering: "1.")
]

== Quadratische Funktionen <quadrat>

#definition[
  === Definition
  Eine quadratische Funktion ist eine ganzrationale Funktion 2. Grades mit der
  *allgemeinen Form*

  $ f(x) = a x^2 + b x +c $

  Der Graph #footnote(<graphFooter>) ist eine nach oben oder unten geöffnete
  Parabel. Maßgeblich für die Lage der Parabel ist ihr *Scheitelpunkt*. Dessen
  Koordinaten $S (x_S | y_S)$ lassen sich direkt aus der *Scheitelpunktform*
  der Funktionsgleichung ablesen

  $ f(x) = a (x - x_S)^2 + y_2 $
]

#theorem[
  #set enum(numbering: "(1)")
  === Nullstellen quadratischer Funktionen
  + Die Nullstellen #footnote[siehe @nullstellen] einer quadratischen Funktion
    in Normalform $f(x) = x^2 + p x + q$ können mit der $p q$-Formel bestimmt
    werden.

    $ x_(1, 2) = - p/2 plus.minus sqrt((p/2)^2 - q) $

  + Sind $x_1$ und $x_2$ Nullstellen der Funktion $f$ mit $f(x) = a x^2 + b x +
    c$, so lässt sich der Funktionsterm in *faktorisierter Form* schreiben.

    $ f(x) = a (x - x_1) (x - x_2) $

    Die Nullstellen lassen sich direkt aus den *Linearfaktoren* $(x - x_1)$ und
    $(x - x_2)$ ablesen.

  #set enum(numbering: "1.")
]

#theorem[
  === Satz von Vieta
  Sind $x_1$ und $x_2$ Lösungen der Gleichung $0 = x^2 + p x + q$, dann gilt

  $ x_1 + x_2 = -p wide x_1 dot x_2 = q $

  #example[
    === Beweis
    Seien $x_(1, 2) = - p/2 plus.minus sqrt((p/2)^2 - q)$ die beiden Lösungen
    der quadratischen Gleichung $x^2 + p x +q = 0$. Dann gilt

    - für die Summe der Nullstellen

      $
        x_1 + x_2 &= (- p/2 + sqrt((p/2)^2 - q)) + (- p/2 - sqrt((p/2)^2 - q))
        \
        &= - p/2 - p/2 = -p \ \ \
        endOfProof
      $

    - für das Produkt der Nullstellen

      $
        x_1 dot x_2 &= (- p/2 + sqrt((p/2)^2 - q)) dot (- p/2 - sqrt((p/2)^2 -
        q)) \
        &= (p/2)^2 - (sqrt((p/2)^2 - q))^2 wide "dritte binomische Formel" \
        &= (p/2)^2 - ((p/2)^2 - q) = q \ \ \
        endOfProof
      $

    #remark[
      Alternativ lassen sich diese Zusammenhänge auch mit dem Ausmultiplizieren
      der faktorisierten Form aufzeigen.
    ]
  ]

  #remark[
    Somit gilt auch, dass *ganzzahlige Nullstellen Teiler* von $q$ sein
    #footnote[siehe @teiler] müssen und die *Summe der Nullstellen die
    Gegenzahl* von $p$ sein muss.
  ]
]

== Ganzrationale Funktionen <ganzRational>

#theorem[
  === Fundamentalsatz der Algebra für reelle Zahlen
  Sei $f(x) = #polynom$ mit $a_n != 0$ ein Polynom $n$-ten Grades. Dann hat $f$
  höchstens $n$ Nullstellen $x_1, ..., x_n in RR$.

  #example[
    === Beweis <induktionBeispiel>
    *Induktionsanfang* #footnote[siehe @induktion] \
    Ist $n = 1$, dann ist $f_1(x) = a_1 x + a_0$. $f_1$ hat genau eine
    Nullstelle.

    $ x_N = - a_0/a_1 $

    *Induktionsvorraussetzung* \
    Es gelte, dass $f$ ein Polynom $n$-ten Grades ist. Dieses hat höchstens $n$
    Nullstellen.

    *Induktionsbehauptung* \
    Ein Polynom vom Grad $n + 1$ hat höchstens $n + 1$ Nullstellen.

    Nun folgt die Argumentation.

    + $f$ hat keine reelle Nullstelle. Folglich hat $f$ höchstens $n + 1$
      Nullstellen.

    + $f$ hat mindestens eine reelle Nullstelle $x_N$. Diese kann nach dem
      Abspaltungssatz #footnote[siehe @abspalten] abgespalten werden.

      $
        f(x) &= (x - x_N) dot g(x)
      $

      $g$ ist ein Polynom $n$-ten Grades und hat somit höchstens $n$
      Nullstellen #footnote[siehe Induktionsvorraussetzung]. Zusammen mit der
      Abgespaltenen Nullstelle ergibt dies $n + 1$ Nullstellen.

    $ endOfProof $
  ]
]

#theorem[
  === Satz zur Abspaltung von Linearfaktoren <abspalten>
  Sei $f$ eine ganzrationale Funktion $n$-ten Grades.

  Wenn $x_N in RR$ eine Nullstelle von $f$ ist, dann gilt $f(x) = (x - x_N) dot
  g(x)$, wobei $g$ eine ganzrationale Funktion $(n - 1)$-Grades ist.

  #remark[
    Wenn $f$ in Polynomform #footnote[$f(x) = #polynom$] vorliegt, dann ist das
    Polynom ohne Rest durch den $(x - x_N)$ Linearfaktor teilbar. Das Ergebnis
    ist $g$.
  ]

  #example[
    === Beweis
    //TODO: !!!
    siehe Skript
  ]
]

#theorem[
  === Zerlegung in Linearfaktoren
  Sei $f$ ein Polynom $n$-ten Grades. $f$ kann genau dann in die Form $f(x) =
  (x - x_1) (x - x_2) dot ... dot (x - x_m) dot f_(n - m)(x)$ zerlegt werden,
  wenn $f$ genau $m$ Nullstellen hat (die nicht alle verschieden sein müssen)
  #footnote[siehe @vielfachheit].

  Dabei ist $f_(n - m)$ ein Restpolynom vom Grad $n - m$, das keine weiteren
  Nullstellen hat.
]

#definition[
  === Vielfachheit von Nullstellen <vielfachheit>
  Die Vielfachheit von Nullstellen gibt an, wie oft eine Nullstelle in einem
  Polynom auftritt.

  Die Vielfachheit wirkt sich auf den Graphen aus.

  #example[
    === Beispiel
    Im Polynom $f(x) = 1/2 (x - 3)^3 (x + 4)$ hat die Nullstelle $3$ eine
    Vielfachheit von $3$, weil sie dreimal vorkommt.
  ]

  #remark[
    === Bemerkung
    Ist $f$ so weit wie möglich faktorisiert, dann lässt sich die Vielfachheit
    einer Nullstelle ablesen am Exponenten des zugehörigen Linearfaktoren.
  ]
]

#theorem[
  === Teilerkriterium für Nullstellen ganzrationaler Funktionen <teiler>
  Sei $f$ mit $f(x) = #polynom$ eine ganzrationale Funktion mit ausschließlich
  ganzzahligen Koeffizienten $a_n, a_(n - 1), ..., a_0 in ZZ$.

  Sei $x_N$ mit $x_N in ZZ$ eine Nullstelle von $f$, dann ist $x_N$ Teiler des
  absoluten Glieds $a_0$. #footnote[siehe Lemma von Gauß]

  #example[
    === Beweis
    Sei $f(x) = #polynom$, wobei $forall n in NN a_n in ZZ$.

    $
      f(x_N) &= 0 \
      #polynom &= 0 wide &&| -a_0 \
      a_n x^n + a_(n - 1) x^(n - 1) +... + a_1 x &= -a_0 \
      x_N (a_n x^(n - 1) + a_(n - 1) x^(n - 2) + ... + a_1) &= -a_0 \
      x_N in ZZ quad (a_n x^(n - 1) + a_(n - 1) x^(n - 2) + ... + a_1) in ZZ
      quad "folglich" -a_0 in ZZ \ \ \
      endOfProof
    $

    Durch bloße Multiplikation und Addition auf der einen Seite ist klar, dass
    $-a_0$ und somit $a_0$ nur ganzzahlig sein kann.
  ]
]

== Rationale Funktionen <gebrochenRacional>

#definition[
  === Zusammensetzung
  Es seien $z : z(x) = limits(sum)_(i = 0)^k a_i x^i$ und $n : n(x) =
  limits(sum)_(j = 0)^l b_j x^j$ ganzrationale Funktionen #footnote[siehe
  @ganzRational] <ganzRacional> mit reellen Koeffizienten $a_i$ bzw. $b_j$
  und $a_k != 0$ bzw. $b_l != 0$. Die Funktion $f$ heißt *rationale Funktion*
  $f : f(x) = (z(x))/(n(x))$ mit $n != 0$. //?
]

#remark[
  #set enum(numbering: "(1)")
  === Begriffsnutzungen
  + $z$ wird *Zählerfunktion* mit dem *Zählergrad* $k$ und $n$ wird
    *Nennerfunktion* mit dem *Nennergrad* $l$ genannt.

  + Ist $l = 0$ oder lässt sich $f(x)$ zu einem ganzrationalen Term mit
    *Definitionslücke* umformen, so ist die rationale Funktion eine
    ganzrationale Funktion #footnote(<ganzRacional>).

    $ f(x) = (2 x^3 - 4 x^2 + 1)/(2 x^0) = x^3 - 2 x^2 + 1/2 $

  + Der Definitionsbereich #footnote[siehe @funktionsBegriffe] einer rationalen
    Funktion ist $D_f = RR without { x_N | n(x_N) = 0 }$.

    #tldr[An der Stelle, an der die Nennerfunktion eine Nullstelle hat,
    existiert eine Definitionslücke.]

  + Ist $l != 0$, so ist $f$ eine *rationale* Funktion.

    $ f(x) = (x^2 - 1)/(x^3 - x) "mit" D_f = RR without { -1; 0; 1} $

  + Sind $l != 0$ und $k < l$, so ist $f$ eine *echt gebrochene rationale*
    Funktion.

    #tldr[Unter dem Bruch steht ein größerer Exponent.]

    $ f(x) = (x + 11)/(x^3 + 8) "mit" D_f without {-2} $

  + Sind $l != 0$ und $k > l$, so ist $f$ eine *unecht gebrochene rationale*
    Funktion. Der Funktionsterm jeder unecht gebrochenen rationalen Funktion
    kann unter Verwendung der Linearfaktorzerlegung als Summe eines
    ganzrationalen und echt gebrochenen rationalen Funktionsterms geschrieben
    werden.

    #tldr[Unter dem Bruch steht ein kleinerer Exponent.]

    $ f(x) = (2 x^3 - x^2 + 2)/(x^2 - x) = 2x + 2/(x^2 - x) "mit" D_f = RR
    without { 0; 1} $

  #set enum(numbering: "1.")
]

#remark[
  === Stellen der Funktion <polstelle>
  Die besonderen Stellen einer rationalen Funktion hängen von den Nullstellen
  der Zähler- und Nennerfunktion ab.

  + Wenn $x_N$ *Nullstelle der Nennerfunktion* ist, aber nicht der
    Zählerfunktion, dann ist $x_N$ eine *Polstelle*.

    Falls die Vielfachheit der Nullstelle $x_N$ bei der Nennerfunktion und der
    Zählerfunktion verschieden ist, aber $x_N$ eine *größere Vielfachheit in der
    Nennerfunktion* hat, so ist $x_N$ auch eine Polstelle.

  + Falls $x_N$ mit gleicher Vielfachheit #footnote[siehe @vielfachheit]
    *Nullstelle der Nennerfunktion als auch der Zählerfunktion* ist, so ist
    $x_N$ eine *hebbare Definitionslücke*.

    Falls die Vielfachheit der Nullstelle $x_N$ bei der Nennerfunktion und der
    Zählerfunktion verschieden ist, aber $x_N$ eine *größere Vielfachheit in der
    Zählerfunktion* hat, so ist $x_N$ auch hebbare Definitionslücke.
]

#theorem[
  === Satz über Asymptoten
  Jede *gebrochen rationale Funktion* $f$ #footnote[nach der Definition aus
  @gebrochenRacional] mit $f(x) = p(x)/g(x)$ mit $q(x) != 0$ hat zusätzlich
  zu ihren senkrechten Asymptoten eine weitere Asymptote $a(x)$, sodass

  $ f(x) = a(x) + r(x) $

  wobei $a$ eine *ganzrationale Funktion* der Asymptote und $r$ eine *echt
  gebrochene Funktion* des Restterms ist.

  #remark[
    === Verhalten im Unendlichen
    $a$ bestimmt das verhalten von $f$ im Unendlichen, während $r$ das
    Verhalten an den Polstellen #footnote[siehe @polstelle] bestimmt.

    #example[
      === Beispiele
      *Beispiel I.*

      $
        f(x) &= (5 x)/(x^2 - x) wide x_("Polstelle") = 1 \
        &= (x^2 dot 5/x)/(x^2 dot (1 - 1/x)) wide "Ausklammern der größten
        Nennerpotenz"\
        &= (5/x)/(1 - 1/x) limits(->)^(x -> plus.minus oo) 0/1 = 0  wide =>
        a(x) = 0 \
      $

      Die Asymptote liegt also auf der $x$-Achse.

      *Beispiel II.*

      $
        g(x) &= (2x + 1)/(3x - 6) wide x_("Polstelle") = 2 \
        &= (x dot (2 + 1/x))/(x dot (3 - 6/x)) wide "Ausklammern der größten
        Nennerpotenz" \
        &= (2 + 1/x)/(3 - 6/x) limits(->)^(x -> plus.minus oo) 2/3 wide => a(x)
        = 2/3 \
      $

      *Beispiel III.*

      $
        h(x) &= (x^2 - x)/(2x - 1) wide x_("Polstelle") = 1/2 \
        &= (x dot (x - 1))/(x (2 - 1/x)) wide "Ausklammern der größten
        Nennerpotenz" \
        &= (x - 1)/(2 - 1/x) limits(->)^(x -> plus.minus oo) plus.minus oo wide
        => a(x) = (x - 1)/(2) \
      $
    ]
  ]
]

== Trigonometrische Funktionen

#remark[
  === Eigenschaften der allgemeinen trigonometrischen Funktionen
  Sei $k in ZZ$.

  #figure(
    table(
      align: center,
      columns: 4,

      table.header[Eigenschaft][$sin(x)$][$cos(x)$][$tan(x)$],
      [Definitionsbereich $D$],
      [$RR$],
      [$RR$],
      [$RR without {k pi + pi/2}$],

      [Wertebereich $W$],
      [$[-1; 1]$],
      [$[-1; 1]$],
      [$RR$],

      [Nullstellen $x_N$],
      [$x_N = k pi$],
      [$x_N = k pi + pi/2$],
      [$x_N = k pi$],

      [Periodendauer],
      [$p = 2 pi$],
      [$p = 2 pi$],
      [$p = pi$],

      [andere Darstellung],
      [$sin(x) = cos(x - pi/2)$],
      [],
      [$tan(x) = sin(x)/cos(x)$],
    )
  )
]

#definition[
  === Allgemeine Form der Sinus- und Cosinusfunktion

  $
    s(x) = a dot sin(b dot (x - c)) + d \
    "bzw." \
    c(x) = a dot cos(b dot (x - c)) + d \
  $

  $a$ beschreibt dabei die Streckung bzw. Stauchung in $y$-Richtung oder die
  Spiegelung an der $x$-Achse und somit die *Amplitude*.

  $b$ beschreibt die Streckung bzw. Stauchung in $x$-Richtung oder die
  Spiegelung an der $y$-Achse und somit die *Periode* mit der Periodendauer
  $p$.

  $ p = (2 pi)/(|b|) $

  $c$ beschreibt die Verschiebung in $x$-Richtung und somit die
  *Phasenverschiebung*.

  $d$ beschreibt die Verschiebung in $y$-Richtung und somit die *Ruhelage*.

  $
    x_sin_1 = (2 k pi - arcsin(d/a) - c)/b wide
    x_sin_2 = ((2 k + 1) pi + arcsin(d/a) - c)/b \ \ \

    x_cos_1 = ((2 k - 1/2) pi + arcsin(d/a) - c)/b wide
    x_cos_2 = ((2 k + 1/2) pi - arcsin(d/a) - c)/b \
  $

  #example[
    === Herleitung der allgemeinen Nullstellen des Sinus und Cosinus

    $
      s(x) = a dot sin(b x + c) + d &= 0 \
      a dot sin(b x + c) + d &= 0 wide &&| - d \
      a dot sin(b x + c) &= - d wide &&| div a \
      sin(b x + c) &= - d/a wide &&| arcsin() \
      b x + c &= - arcsin(d/a) wide &&| - c \
      b x &= - arcsin(d/a) - c wide &&| div b \
      x &= (- arcsin(d/a) - c)/b wide &&| div b \
    $

    Da die Sinusfunktion periodisch ist, wäre noch ein $2 pi$ zu ergänzen.
    Analog sind die weiteren Nullstellen zu bestimmen. Der Beweis ist dem Leser
    überlassen.
  ]
]

== Änderungsraten

#definition[
  //TODO: Noch mal überarbeiten, da unklar und wahrscheinlich falsch
  === Lokale Änderungsrate
  Die lokale Änderungsrate bildet man über den Grenzwert des
  *Differenzenquotienten*.

  $ (f(x) - f(x_0))/(x - x_0) $
  // x -> x_0 ????

  Dieser Wert heißt *Ableitung* $f'(x_0)$ der Funktion $f$ an der Stelle $x_0$.

  Der Grenzwert gibt die lokale Änderungsrate an der Stelle $x_0$ an und
  entspricht der *Steigung der Tangente* an $f$ in $P(x_0|f(x_0))$
]

#definition[
  === Differenzierbarkeit und erste Ableitung
  Eine Funktion $f : I subset RR -> RR$ heißt in $x_0 in I$ differenzierbar,
  falls der Differentialquotient, der Grenzwert des
  Differenzenquotienten $(f(x) - f(x_0))/(x - x_0)$, existiert.

  $ f'(x_0) \
    &:= (d f)/(d x) (x_0) \
    &:= lim_(x -> x_0) (f(x) - f(x_0))/(x - x_0) \
    &= lim_(h -> 0) (f(x_0 + h) - f(x_0))/(h)
  $

  Dieser Grenzwert heißt Ableitung von $f$ in $x_0$.

  Die Funktion $f : I subset RR -> RR$ heißt differenzierbar, falls sie in
  jedem Punkt $P(x_0|f(x_0))$ mit $x_0 in I$ differenzierbar ist.

  Dann heißt die Funktion $f'$ *erste Ableitung* von $f$.

  $ f' : I subset RR -> RR $

  #example[
    === Beispielbeweis

    $
      f(x) = x^n \
      ((x_0 + h) - x_0^n)/(h) &=
      (x_0^n + n x_0^(n - 1) h + a x_0^(n - 2) h^2 + ... + h^n - x_0^n)/(h) \
      &= (h(n x_0^(n - 1) + a x_0^(n - 2) h + ... + h^(n - 1)))/(h) \
      &= n x_0^(n - 1) + a x_0^(n - 2) h + ... + h^(n - 1) \
      lim_(h -> 0) (n x_0^(n - 1) + a x_0^(n - 2) h + ... + h^(n - 1)) &= n
      x_0^(n - 1)\
    $
  ]
]

= Folgen <folgen>
== Der Folgenbegriff

#definition[
  === Folgen
  Eine Funktion #footnote[siehe @funktion], deren Definitionsbereich die Menge
  der natürlichen Zahlen ist, heißt *Zahlenfolge*, kurz *Folge*.
]

#remark[
  === Notation
  Im Allgemeinen wird die Zuordnungsvorschrift in Form einer Gleichung gegeben.

  $ (a_n) : a_n = 3n - 4 $

  $(a_n)$ ist die Folgenbezeichnung.

  $n$ ist der Folgenindex, die Indexzahl, mit $n in NN$, wobei zumeist $n >= 1$
  $n$ das Argument.

  $a_n$ ist das $n$-te Folgenglied, d.h. der Funktionswert zum Argument
  #footnote[siehe @funktionsBegriffe] $n$. In der üblichen Notation von
  Funktionen sollte $a_n$ besser als $a(n)$ geschrieben werden.

  $3n - 4$ ist Term für die Berechnung des $n$-ten Folgegliedes.
]

#definition[
  === Rekursion und Explikation
  Wird die Zuordnungsvorschrift einer Folge mit einem expliziten Term, z.B. $3n
  - 4$, dann spricht man von einer *expliziten* Bildungsvorschrift.

  \

  Die Folge könnte aber auch durch eine *rekursive* Bildungsvorschrift gegeben
  sein. Dann bediene man sich jener Form.

  $ (a_n) : a_1 = -1 and a_n = a_(n - 1) + 3 $

  #tldr[
    Wenn das Berechnen mit *einfachem* Rechenaufwand verbunden ist, der Term
    also nicht auf vorhergehende oder nachfolgende Folgenglieder zurückgreift,
    dann ist die Bildungsvorschrift *explizit*.

    Wenn der Bildungsterm auf vorhergehende oder nachfolgende Folgenglieder
    zurückgreift, dann ist die Zuordnungsvorschrift *rekursiv*.
  ]
]

== Verschiedene Folgen

#definition[
  === Geometrische Folgen <geometrischeFolgen>
  Eine Folge $(a_n)$ heißt geometrisch, wenn $exists q in RR without {0; 1}
  forall n in NN without {0} : (a_(n + 1))/a_n = q$

  Es gibt genau ein $q in RR without {0; 1}$, sodass für alle $n in NN without
  {0}$ $(a_(n + 1))/a_n = q$. Oder anders gesagt

  $ a_(n +1) = q dot a_n $

  #theorem[
    Für jede geometrische Folge $(a_n)$ gilt $a_n = a_1 dot q^(n - 1)$, weil $a_1
    = a_1 dot q^0$, weil $q^0$ für $q in NN without {0}$ immer $1$ wäre.

    $ a_1 &= a_1 dot q^0 \
    a_2 &= a_1 dot q^1 \
    a_3 &= a_2 dot q^1 = a_1 dot q^2 \
    &... $
  ]
]

#remark[
  === Konstante Folgen <konstanteFolgen>
  $q$ #footnote[siehe @geometrischeFolgen] darf nicht $1$ oder $0$ sein und
  $a_1$ nicht $0$, denn folglich wäre $forall n in NN : a_(n + 1) = a_n$.

  Solche Folgen nennen wir *konstante Folgen*.
]

#definition[
  === Alternierende Folgen
  Folgen, deren aufeinanderfolgende Folgenglieder unterschiedliche Vorzeichen
  besitzen, nennen wir *alternierend*.

  $ forall n in NN without {0} : a_n dot a_(n+1) < 0 $
]

== Monotonieverhalten

#definition[
  === Strenge Monotonie
  Eine Folge $(a_n)$, deren nächstes Folgeglied immer größer ist als das
  vorhergehende, nennt man *streng monoton steigend*.

  $ forall n in NN : a_n < a_(n + 1) $

  #remark[
    Nicht streng monoton steigend sind jedoch alle Folgen, für die gilt

    $ exists n in NN : a_n >= a_(n + 1) $
  ]

  Wenn das nächste Folgeglied immer kleiner ist als das vorhergehende, dann
  nennt man sie analog dazu *streng monoton fallend*.

  $ forall n in NN : a_n > a_(n + 1) $

  #remark[
    Nicht streng monoton fallend sind jedoch alle Folgen, für die gilt

    $ exists n in NN : a_n <= a_(n + 1) $
  ]

  #example[
    === Beispielbeweis <herausgegriffen>
    Betrachten wir die Folge $(c_n) : c_n = (n-1)/n$ mit $n in NN and n >= 1$.
    Dazu gehen wir zuerst von einer streng monotonen Steigung aus und stellen
    dann um.

    $
      c_n &< c_(n + 1) \
      (n - 1)/n &< n/(n + 1) wide &&| dot n \
      n - 1 &< (n^2)/(n + 1) &&|  dot (n + 1) \
      n^2 - 1 &< n^2 &&| - n^2 \
      -1 &< 0 && "wahr für alle" n in NN \ \ \
      endOfProof
    $
  ]
]

#definition[
  === Einfache Monotonie <monoton>
  Folgen, die auch aufeinanderfolgende gleiche Folgeglieder aufweisen, sonst
  allerdings monoton steigen oder fallen, nennt man *monoton steigend* bzw.
  *monoton fallend*.

  $ forall n in NN : a_n <= a_(n + 1) \
  "bzw." forall n in NN : a_n >= a_(n + 1) $
]

== Teilfolgen

#remark[
  === Folgen mit Systematik
  In @herausgegriffen könnten bezüglich der Folge $(c_n) : c_n = (n - 1)/n$
  systematisch Folgenglieder "herausgegriffen" werden, z.B. $c_1$, $c_10$,
  $c_100$, ..., $c_(10^(k - 1))$. \
  Diese Folgenglieder kann man als Neue Folge auffassen, die ein Teil der
  Folge $(c_n)$ ist.
]

#definition[
  === Definition
  Die Folge $(t_n)$ ist Teilfolge der Folge $(a_n)$. \
  Ist $n_i$ mit $(i = 1; 2; ...; k in NN without {0})$ eine streng monoton
  wachsende Folge natürlicher Zahle, so heißt $(a_(n_i)) = (t_n)$ Teilfolge von
  $(a_n)$.
]

#theorem[
  === Teilfolgensatz <teilfolgen>
  Jede Folge $(a_n)$ besitzt eine monotone Teilfolge.

  #example[
    === Beweis
    Sei eine Gipfelstelle die Indexzahl $n$, sodass $forall m, n in NN : m >= n
    : a_n >= a_m$.

    #tldr[
      Alle nachfolgenden Folgenglieder $a_m$ sind kleiner als $a_n$ bzw. nach
      $a_n$ kommt kein Folgeglied, das größer ist als $a_n$.
    ]

    Nun lässt sich eine Fallunterscheidung durchführen.

    #set enum(numbering: "I.")

    + Es gibt unendlich viele Gipfelstellen. \
      Nummeriert man die Gipfelstellen in der Reihenfolge ihres Auftretens,
      folgt

      $ a_n_1 >= a_n_2 >= a_n_3 >= ... $

      D.h. die Gipfelstellen bilden eine monoton fallende #footnote[siehe
      @monoton] Teilfolge.

    + Es gibt endlich viele Gipfelstellen. \
      Sei $n_L$ die letzte Gipfelstelle. Wir betrachten $a_n_L$. Dann gilt
      $a_n_L > a_(n_L + 1)$

      Da $a_n_L$ die letzte Gipfelstelle war, sind alle nachfolgenden
      Folgeglieder keine Gipfelstellen, d.h. für jedes dieser Folgeglieder
      $a_n^*$ gibt es mindestens ein Folgeglied $a_n^(**)$ mit $a_n^* <
      a_n^(**) < a_n_L$.

      D.h. wir erhalten eine monoton steigende Folge.

      $
        a_(n_L + 1) < a_(n_L + 1) ^* < a_(n_L + 1)^(**) < ... \ \ \
        endOfProof
      $

    #set enum(numbering: "1.")
  ]
]

== Beschränktheit von Folgen

#definition[
  === Schranken
  In @herausgegriffen wurde die Folge $(c_n) : c_n = (n-1)/n$ betrachtet. \
  Man kann "beobachten", dass $forall n in NN : 0 <= c_n < 1$, d.h. die
  Folgenglieder unter- und überschreiten einen bestimmten Wert nicht.
]

#definition[
  === Untere und obere Schranken, Maxi- und Minima <schranken>
  + Eine reelle Zahl $u$ heißt *untere Schranke* der Folge $(a_n)$, wenn für
    alle $n in NN$ gilt $u <= a_n$.

  + Eine reelle Zahl $o$ heißt *obere Schranke* von $(a_n)$, wenn $forall n in
    NN : o >= a_n$.

  + Eine reelle Zahl $"min" a_n$ heißt *Minimum* von $(a_n)$, wenn es ein $k in
    NN$, so dass für alle $n in NN$ gilt $"min" a_n = a_k <= a_n$.

  + Eine reelle Zahl $"max" a_n$ heißt *Maximum* von $(a_n)$, wenn $exists k in
    NN : forall n in NN : "max" a_n = a_k >= a_n$.

  #example[
    === Beispiel
    Betrachten wir die Folge $(a_n): a_n = -(4n)/(n+2)$. Zunächst benötigt man
    eine Vermutung. Dazu werden einige Folgenglieder berechnet.

    $
      a_1 &= -(4 dot 1)/(1 + 3) = -4/3 \
      a_10 &= -(4 dot 10)/(10 + 3) = -40/13 \
      a_100 &= -(4 dot 100)/(100 + 3) = -400/103
    $

    Man kann beobachten, dass sich die Folge mit wachsendem Argument an $-4$
    annnähert. Darum vermuten wir zunächst *eine* untere Schranke bei $-4$

    $
      -4 &<= a_n \
      -4 &<= -(4n)/(n + 2) wide &&| dot (n + 2) \
      -4(n + 2) &<= -4n \
      -4n - 8 &<= -4n &&| + 4n \
      -8 &<= 0 && "wahr für alle" n in NN \ \ \
      endOfProof
    $
  ]
]

#theorem[
  === Vielschrankensatz
  Falls eine Folge $(a_n)$ eine untere Schranke besitzt, so besitzt sie
  unendlich viele.

  #example[
    === Beweis
    Sei $u <= a_n$ für alle $n in NN$. Wähle $x in RR$ mit $x < u$.

    D.h. $x < u <= a_n$, folgt $x <= a_n$ und somit existieren unendlich viele
    untere Schranken.
  ]
]

#definition[
  === _Suprema_ und _Infima_
  Die größte untere Schranke #footnote[siehe @schranken] nennt man *untere
  Grenze* oder _Infimum_ $"inf" a_n$ der Folge $(a_n)$. \
  Die kleinste obere Schranke nennt man *obere Grenze* oder _Supremum_ $"sup"
  a_n$ der Folge $(a_n)$.

  #tldr[
    Eine reelle Zahl $i$ ist genau dann ein _Infimum_ der Folge $(a_n)$, wenn

    + $forall n in NN : i <= a_n$, also $i$ eine untere Schranke ist.

    + $forall epsilon > 0 exists n in NN : i + epsilon > a_n$, es also die
      größte untere Schranke ist.
  ]

  #remark[
    === Schritte zum Nachweis
    Die beliebige Folge $(a_n)$ besitzt die untere Grenze $"inf" a_n$. Es sei
    $k in RR$ mit $"inf" a_n < k$.
  ]

  #example[
    === Beispielnachweis
    Betrachten wir die Folge $(b_n) : b_n = (6n - 1)/(4n)$ mit $n >= 1$.

    Zuerst äußern wir die Vermutung, dass das _Supremum_ bei $"sup" b_n = 3/2$
    liegt. Zuerst muss bewiesen werden, dass $"sup" b_n$ eine obere Schranke
    ist. Danach, dass es ein _Supremum_ ist.

    + $"sup" b_n$ ist eine obere Schranke.

      Sei $n in N$.

      $
        3/2 &>= (6n - 1)/(4n) wide &&| dot 4n\
        12/2 n &>= 6n - 1 \
        6n &>= 6n - 1 &&| - 6n \
        0 &>= - 1 && "wahr für alle" n in NN \ \ \
        endOfProof
      $

    + $"sup" b_n$ ist ein _Supremum_.

      Sei $epsilon > 0$.

      $
        b_n &> "sup" b_n - epsilon \
        "D.h." (6n - 1)/(4n) &> 3/2 - epsilon wide &&| dot 4n\
        6n - 1 &> 6n - 4 n epsilon &&| - 6n \
        - 1 &> - 4 n epsilon &&| div epsilon \
        - 1/epsilon &> - 4 n &&| dot (-1) \
        1/epsilon &< 4 n &&| div 4 \
        1/(4 epsilon) &< n \ \ \
        endOfProof
      $

    Aufgrund der Unendlichkeit der natürlichen Zahlen immer eine natürliche
    Zahl für die gilt $1/(4 epsilon) < n$. Somit ist diese Aussage wahr.

    Dementsprechend ist $3/2$ das _Supremum_ der Folge $(b_n)$.
  ]
]

#theorem[
  === Supremumsaxiom <supAxiom>
  Im Bereich der *reellen* Zahlen besitzt jede nach oben beschränkte Folge ein
  Supremum.
]

== Grenzwert und Häufungswert

#definition[
  === Häufungswert
  Sei $(a_n)$ eine Folge. Die reelle Zahl $h$ ist Häufungswert von $(a_n)$,
  falls es für alle $epsilon > 0$ unendlich viele $n$ mit $| a_n - h | <
  epsilon$ gibt.

  #example[
    === Beispielnachweis
    Betrachten wir die Folge $(a_n) : a_n = - 1/2 + ((-1)^n)/n$. Vermutlich ist
    der Häufungswert $h = - 1/2$.

    Sei $epsilon > 0$.

    $
      | a_n - (- 1/2) | = | - 1/2 + ((-1)^n)/n + 1/2 | &= | ((-1)^n) | \
      &= 1/n < epsilon wide &&| div epsilon dot n \
      &= 1/epsilon < n \ \ \
      endOfProof
    $

    Da $1/epsilon in RR^+$ und $n in NN$, wobei $NN$ unendlich ist, findet man
    unendlich viele natürliche Zahlen mit $1/epsilon < n$.
  ]
]

#definition[
  === Grenzwert einer Folge
  Eine reelle Zahl $g$ heißt *Grenzwert* der Folge $(a_n)$, falls für jedes
  $epsilon > 0$ ab einer bestimmten Indexzahl $n_0$ alle Folgenglieder in der
  Epsilonumgebung #footnote[siehe @grenzMerke] $]g -
  epsilon; g + epsilon[$ liegen.

  #align(center)[Oder alternativ:]

  Für jedes $epsilon > 0$ gibt es ein $n_0 in NN$, so dass für alle $n > n_0$
  gilt: $| a_n - g | < epsilon$.

  $ forall epsilon > 0 exists n_0 in NN forall n > n_0 : | a_n - g | < epsilon
  $
]

#remark[
  #set enum(numbering: "(1)")
  === Bemerkungen zum Grenzwert <grenzMerke>
  + Wir wissen, dass $| a_n - g | < epsilon$ gleichwertig zu $- epsilon < a_n -
    g < epsilon$ und $g - epsilon < a_n < g + epsilon$ ist.

    Das somit betrachtete *offene Intervall* $] g - epsilon; g + epsilon [$
    heißt *Epsilonumgebung* #footnote[siehe @glossar unter _Epsilonumgebung_] von
    $g$.

  + Mit Hilfe des Begriffs der Epsilonumgebung kann man den Grenzwert $g$ einer
    Folge auch anders verstehen.

    Egal, welche Epsilonumgebung man um den vermuteten Grenzwert $g$ legt, dürfen
    immer *nur endlich viele Folgenglieder* $a_n$ außerhalb der Epsilonumgebung
    liegen.

  + Besitzt eine Folge einen Grenzwert, so ist sie *konvergent*, ansonsten
    *divergent*.

  + Der Grenzwert wird mit dem _Limes_ symbolisiert.

    $ g = lim_(n -> oo) a_n $

  + Besitzt die Folge $(a_n)$ einen Grenzwert, so konvergiert jede Teilfolge
    $(t_n)$ gegen diesen Grenzwert.

  + Eine Folge, deren Grenzwert $g = 0$ ist, heißt *Nullfolge*.

  #set enum(numbering: "1.")
]

#theorem[
  === Konvergenzprinzip
  Falls eine Folge $(a_n)$ konvergent ist, s besitzt sie *genau einen*
  Grenzwert.

  #example[
    === Argumentation
    Nehmen wir an $g_1$ und $g_2$ seien Grenzwerte von $(a_n)$ mit $g_1 !=
    g_2$.

    Wähle $epsilon < (|g_1 - g_2|)/2$. \
    Somit $U_(epsilon) (g_1) union U_(epsilon) (g_2) = emptyset$. \
    Da $g_1$ ein Grenzwert ist, gilt für alle $n > n_0 : a_n in U_(epsilon)
    (g_1)$. Das sind unendlich viele. \
    D. h. außerhalb liegen nur endlich viele. Somit auch in $U_(epsilon)
    (g_2)$.
  ]
]

#theorem[
  === Grenzwerte konstanter Folgen
  Sei $(a_n) : a_n = c$ mit $c in RR$ eine konstante Folge #footnote[siehe
  @konstanteFolgen]. Dann gilt

  $ lim_(n -> oo) a_n = lim_(n -> oo) c = c $
]

#remark[
  === Geometrische Nullfolgen
  Jede geometrische Folge #footnote[siehe @geometrischeFolgen] $(a_n) : a_n =
  a_1 dot q^(n - 1)$ ist für alle $q$ mit $|q| < 1$ eine *Nullfolge*.

  #example[
    === Beweis
    Seien $epsilon > 0$, $n in NN$ und $|q| < 1$.

    $
      | a_n - 0 | = | a_n | = | a_1 dot q^(n - 1) | &< epsilon \
      | a_1 | dot | q^(n - 1) | = | a_1 | dot | q^n/q | a_1/q | dot | q^n | &<
      epsilon \
      | a_1/q | dot | q |^n &< epsilon &&| div | a_1/q | \
      | q |^n &< epsilon dot | q/a_1 | wide &&| log_(|q|)(...) \
      n &> log_(|q|)(epsilon | q/a_1 |) \ \ \
      endOfProof
    $

    Das Relationszeichen wurde umgedreht, weil $0 < |q| < 1$ und somit die
    Logarithmusgesetze #footnote[$x_1 < x_2 <=> log_a (x_1) > log_a (x_2)$]
    dies verlangen.

    Aufgrund der Unendlichkeit der natürlichen Zahlen finden wir immer ein $n
    in NN$, für das diese Bedingung stimmt.
  ]
]

#definition[
  === Bestimmte Divergenz
  $(a_n)$ ist *bestimmt divergent*, falls $limits(lim)_(n -> oo) a_n =
  plus.minus oo$.

  $ lim_(n -> oo) a_n = oo := forall k in RR^+ exists n in NN : a_n > k $

  Die Folge $(a_n)$ ist bestimmt divergent genau dann, wenn $limits(lim)_(n ->
  oo) 1/a_n = 0$, $(a_n)$ also eine *Nullfolge* ist.
]

Bei etwas komplexeren Folgen ist nicht direkt ersichtlich, ob diese überhaupt
einen Grenzwert besitzt.

$ (a_n) : a_n (1 + 1/2n)^n $

Um einfacher zu bestimmen, ob eine Folge konvergent ist, gibt es bestimmte
*Konvergenzkriterien*, welche hier aufgeführt werden.

#theorem[
  === Satz der Relation von Konvergenz und Beschränktheit
  <beschränktKonvergent>
  Sei $(a_n)$ eine Folge.

  Wenn $(a_n)$ konvergent ist, so ist $(a_n)$ beschränkt.

  #tldr[
    Wenn $(a_n)$ nicht beschränkt ist, so ist $(a_n)$ nicht konvergent.
  ]

  #example[
    === Beweis
    Wir nehmen an, die Folge $(a_n)$ konvergiert gegen $g$. Dazu müsste die
    Definition gelten.

    $ forall epsilon > 0 exists n_0 in NN forall n > n_0 : | a_n - g | <
    epsilon $

    Wähle $epsilon = 1$, sodass alle Folgenglieder für $n > n_0$ innerhalb von
    $]g - 1; g + 1[$. Somit ist die Folge mit $n > n_0$ durch $g - 1$ und $g +
    1$ beschränkt.
  ]
]

#theorem[
  === Beschränkungskonvergenzsatz <konvergentBeschränkt>
  Sei $(a_n)$ monoton. $(a_n)$ ist konvergent genau dann, wenn $(a_n)$
  beschränkt ist.

  #example[
    === Beweis
    Sei $(a_n)$ ohne Beschränkung der Allgemeinheit monoton wachsend.

    + "$==>$" \ \
      Sei $(a_n)$ konvergent. Nach dem Satz der Relation von Konvergenz und
      Beschränktheit #footnote[siehe @beschränktKonvergent] ist $(a_n)$ somit
      beschränkt.

    + "$<==$" \ \
      Sei $(a_n)$ beschränkt, d.h. sie besitzt eine obere Schranke und nach
      Supremumsaxiom #footnote[siehe @supAxiom] sogar ein _Supremum_ $"sup" a_n =
      S$. Damit existieren  für alle $epsilon > 0$ ein $m in NN$ mit $a_m > S -
      epsilon$.

      Das heißt $a_n in ]S - epsilon; S + epsilon[$. Damit ist $(a_n)$
      konvergent mit $limits(lim)_(n -> oo) a_n = S = "sup" a_n$.
  ]

  #theorem[
    === Korollar <korollar>
    Sei $(a_n)$ monoton wachsend. Wenn $(a_n)$ nach oben beschränkt ist, dann
    gilt $limits(lim)_(n -> oo) a_n = "sup" a_n$.
  ]
]

#theorem[
  === Satz von _Bolzano-Weierstraß_
  Jede beschränkte Folge reeller Zahlen besitzt eine konvergente Teilfolge.

  #example[
    === Beweis
    Sei $(a_n)$ eine beschränkte reelle Folge. Nach dem Satz in @teilfolgen
    besitzt jede Folge eine monotone Teilfolge. Da $(a_n)$ beschränkt ist, ist
    auch ihre monotone Teilfolge $(t_n)$ beschränkt.

    Nach dem Korollar #footnote[siehe @korollar] des vorherigen Satzes
    #footnote[siehe @konvergentBeschränkt] gilt für eine monoton steigende
    beschränkte Folge $limits(lim)_(n -> oo) a_n = "sup" a_n$. So gilt dies
    auch umgekehrt für monoton fallende Folgen, die beschränkt sind. $(t_n)$
    besitzt somit ein _Supremum_ oder ein _Infimum_ welches durch die Monotonie
    der Folge auch Grenzwert ist.
  ]
]

= Beweise
== Beweistechniken

#definition[
  === Hinrichtung und Rückrichtung
  Beweise können _Genau dann, wenn ..._ Aussagen, die in zwei Richtungen
  funktionieren, sein.

  #example[
    === Satz vom Nullprodukt als Beispiel
    $a dot b = 0$ für $a,b in RR$ gilt genau dann, wenn $a = 0 or b = 0$.

    \

    *Hinrichtung* #footnote[siehe revolutionäres Frankreich] "$==>$" \
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

    $ endOfProof $
  ]
]

#example[
  === Aufbau
  _Wenn $A$, dann $B$._

  $A$ ist die *Vorraussetzung*, unter der $B$ gilt.
  $B$ ist somit die *Behauptung*.

  Nun folge die *Argumentation*.
]

#definition[
  === Beweis durch vollständige Induktion <induktion>
  Bei einer vollständigen Induktion wird zunächst ein *Induktionsanfang*
  definiert. #footnote[siehe @induktionBeispiel] Hier wird die Wahrheit der
  Aussage anhand eines Beispiels demonstriert.

  Danach folgt die *Induktionsvorraussetzung*, in der die Aussage als wahr
  vorrausgesetzt wird.

  Diese wird dann in der *Induktionsbehauptung* benutzt, um die Aussage zu
  beweisen.
]

#pagebreak()

= Anhang
== Glossar <glossar>

/ Epsilonumgebung:
  die Epsilonumgebung um eine Zahl $a$ ist definiert mit $U_(epsilon) := ] a -
  epsilon; a + epsilon [$ \
  Intervall um eine Zahl wird im Abstand von $epsilon$ betrachtet

#set par(justify: true)
#set math.equation(numbering: "(1)")
#set page(columns: 2)

#place(
  top + center,
  float: true,
  scope: "parent",
  [
    == Relation des Häufungswerts zum Grenzwert
  ],
)

#place(
  left + top,
  float: true,
  scope: "parent",
  [
    Mit der Definition der Grenzwerte und Häufungswerte sind noch längst nicht
    alle Fragen geklärt. Immernoch muss man sich mit Antworten auf diese Fragen
    beschäftigen:

    _Können Folgen mit zwei Häufungswerten konvergent sein? Gibt es ein Maximum
    an Häufungswerten? Ist der einzige Häufungswert einer Folge mit Sicherheit
    Grenzwert?_

    Das sind alles Fragen, die man sich stellen muss, um das Konzept der
    Häufungswerte und Grenzwerte zu begreifen und ihr Verhältnis zueinander zu
    verstehen.
  ],
)

=== Der Grenzwert als eine Spezialform des Häufungswertes
Definieren wir zuerst die Begriffe Grenzwert und Häufungswert. \
Für den reellen Grenzwert $g$ gilt die Definition
$
  forall epsilon > 0 exists n_0 in NN forall n > n_0 : |a_n - g| < epsilon
$ <definition>

Es müssen also ab einem _Index_ $n_0$ alle Folgenglieder innerhalb der
Epsilonumgebung um  den Grenzwert liegen. Da die _Indices_ einer Folge
natürliche Zahlen sind, sind sie ins Unendliche unbeschränkt, aber nicht Teil
des negativen Zahlenbereichs. Somit ist die Anzahl der _Indices_ vor $n_0$
beschränkt und endlich; die Anzahl der _Indices_ nach $n_0$ ist unendlich. \
Also müssen außerhalb der Epsilonumgebung des Grenzwertes endlich viele
Folgenglieder liegen und innerhalb alle Folgenglieder ab _Index_ $n_0$ aufgrund
der Unendlichkeit der natürlichen Zahlen unendlich viele, sonst ist die
betrachtete Zahl kein Grenzwert.

Der Häufungswert ist die reelle Zahl $h$, falls es für alle $epsilon > 0$
unendlich viele $n$ mit $|a_n - h| < epsilon$ gibt. In der Epsilonumgebung des
Häufungswertes müssen also unendlich viele Folgenglieder liegen.

Diese Definition überlagert sich mit der des Grenzwertes. In beiderlei
Epsilonumgebungen müssen unendlich viele Folgenglieder liegen -- mit dem
Unterschied, dass außerhalb der Epsilonumgebung des Häufungswertes nicht
endlich viele Folgenglieder liegen müssen.

Wir können also festhalten, dass falls in der Epsilonumgebung einer reellen
Zahl unendlich viele Folgenglieder liegen, diese Zahl mit Sicherheit
Häufungswert der Folge ist, da dies der Definition entspricht. Falls zusätzlich
dazu nur endlich viele Folgenglieder außerhalb der Epsilonumgebung liegen, ist
der Häufungswert zugleich Grenzwert. \
Jeder Grenzwert ist also auch Häufungswert.

Wenn eine Folge $(a_n)$ einen Grenzwert besitzt, ist dieser mit Sicherheit auch
ein Häufungswert der Folge.

=== Zahl der Häufungswerte
Tatsächlich lässt sich mit einer einfachen _Modulo_-Folge begründen, dass es
keine Maximalzahl an Häufungswerten gibt.

$
  (a_n) : a_n := cases(
    0 "falls" n mod 3 = 0,
    1 "falls" n mod 3 = 1,
    2 "falls" n mod 3 = 2,
  )
$ <modulo>

Die Werte dieser Folge häufen sich im Unendlichen bei $0$, $1$ und $2$, ein
Verhalten, welches sich mittels einer angelegten Epsilonumgebung zeigen ließe.
Um die Anzahl der Häufungswerte zu erhöhen, könnte man bei diesem Beispiel den
Divisor erhöhen und einen weiteren Fall hinzufügen.

Da eine Folge durch natürliche _Indices_ unendlich ist, kann sie sich im
Unendlichen unbegrenzt vielen Werten mehrfach annähern, wodurch diese zu
Häufungswerten der Folge werden. Am einfachsten ließe sich dies durch
periodische Vorgänge, wie diese _Modulo_-Folge oder eine _Sinus_-Folge
bewerkstelligen.

$
  (b_n) : b_n = sin(n/90 pi)
$ <sinus>

=== Konvergenz bei zwei oder mehr Häufungswerten
Aufgrund des Verhaltens einer Folge, sich an den Häufungswerte im Unendlichen
unendlich oft zu häufen, werden außerhalb der Epsilonumgebung eines Wertes
immer unendlich viele Folgenglieder in den Epsilonumgebungen der Häufungswerte
liegen, wodurch die Definition eines Grenzwertes nicht erfüllt werden kann und
folglich kein Grenzwert existiert.

Eine Folge mit zwei oder mehr Häufungswerten kann folglich nicht konvergent
sein.

=== Grenzwerte bei Folgen mit nur einem Häufungswert
Der einzige Häufungswert einer Folge ist nicht mit Sicherheit Grenzwert
ebendieser Folge, was sich anhand eines Gegenbeispiels zeigen lässt.

Betrachten wir folgende Folge.

$
  (c_n) : c_n := cases(
    1 "falls" n mod 2 = 0,
    - n "andernfalls",
  )
$ <negativ>

Diese Folge hätte einen Häufungswert $1$, aber keinen Grenzwert, da die
ungerade Teilfolge $(t_n) : t_n = c_(2 n + 1)$ mit $n_1 = 0$ unbeschränkt ist
und somit keinen bestimmten Grenzwert besitzt.

Teilfolgen einer Folge, die einen Grenzwert besitzt, müssen allerdings auch
diesen Grenzwert besitzten, was hier nicht der Fall ist. Somit ist der einzige
Häufungswert einer Folge nicht mit Sicherheit Grenzwert ebendieser Folge.
