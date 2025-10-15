#import "Template.typ": *
#show: template

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

  #footnote[$(x; y)$ ist ein geordnetes Paar #footnote[$(x; y) = (x; w) <=> x =
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

    $forall x in D(f) subset.eq X$ gibt es genau ein $y = f(x) in Y$.

    $
      f : X &-> Y \
      x &|-> y
    $

    Handelt es sich bei $X$ und $Y$ um reine Zahlenmengen (z.B. $RR$), so
    bezeichnen wir die Abbildung $f$ auch als *Funktion*.

  + $D(f)$ ist die *Definitionsmenge* #footnote(<funkyColdMedina>) von der
    Vorschrift $f$.

  + $B(f)$ ist die *Bildungsmenge* #footnote[siehe @funktionsBegriffe für
    Funktionen] <funkyColdMedina> von $f$, wobei $B(f) = {y in Y | y = f(x)
    "mit" x in D(f)}$

  + $f(x) in Y$ heißt *Bildpunkt* bzw. *Funktionswert* von $x$ unter $f$.

    Ist $y in Y$, so heißt jedes $x in X$ mit $f(x) = y$ *ein Urbild* bzw.
    *Argument* von $y$ unter $f$.

  + Die Menge aller Urpunkte von $y$ unter $f$ bezeichnen wir mit $f^(-1)(y) :=
    {x in X | f(x) = y}$. Zu $f^(-1)$ sagen wir auch *das Urbild* von $y$ unter
    $f$.

    #tldr[
      *Das Urbild* ist die Menge aller *Urbilder*.
    ]

    $X = D(f)$ heißt *Definitionsbereich* von $f$ und $Y = B(f)$ heißt
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

    Der Definitionsbereich $D(f)$ = $ZZ$ und der Wertebereich $B(f) = [-1; 1]$.
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
    = a_n x^n + ... + a_1 x + a_0$ ein *Polynom*.

    Dann heißt die Funktion $f : RR -> RR$ mit $f(x) = p(x)$ *ganzrationale
    Funktion*. Der höchste Exponent mit $a_k != 0$ heißt *Grad* von $p$ und $a_0$
    bis $a_n$ heißen *Koeffizienten*.

  + Sind $p$ und $q$ ganzrationale Funktionen, so nennt man die Funktion $f$
    mit $f(x) = p(x)/q(x)$ eine *gebrochen rationale Funktion*.

    Die Funktion $f$ ist an den Nullstellen #footnote[siehe @nullstellen] ihres Nenners
    $q$ nicht definiert. Diese Nullstellen heißen *Definitionslücken* von $f$ und
    gehören nicht zum Definitionsbereich.

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
  Für eine Funktion $f$ ist $x_N in D(f)$ eine Nullstelle von $f$, wenn $f(x_N)
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

  $ f(x) = a_n x^n + ... + a_1 x^1 + a_0 x^0 $

  + Hat $x$ in der Funktionsgleichung nur gerade Exponenten, so ist die
    Funktion *gerade* und *achsensymmetrisch*, denn es gilt

    $ forall x in D(f) : f(x) = f(-x) $

  + Hat $x$ in der Funktionsgleichung nur ungerade Exponenten, so ist die
    Funktion ungerade und punktsymmetrisch, denn es gilt

    $ forall x in D(f) : f(x) = -f(-x) $

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

  $ forall x_1, x_2 in D(f) : x_1 < x_2 <=> f(x_1) > f(x_2) $
]

#definition[
  === Globalverhalten
  Sei $f$ eine Funktion. Das *Globalverhalten* von $f$ beschreibt das Verhalten
  der Funktionswerte, wenn die Argumente unendlich groß oder unendlich klein
  werden.
]

#definition[
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
]

#theorem[
  === Globalverhalten bei ganzrationalen Funktionen
  Der Graph #footnote(<graphFooter>) einer ganzrationalen Funktion $f$ mit
  $f(x) = a_n x^n + ... + a_1 x + a_0$ mit $a_n != 0$ verhält sich für $x ->
  plus.minus oo$ wie der Graph von $g$ mit $g(x) = a_n x^n$.

  #example[
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
    Somit gilt auch, dass *ganzzahlige Nullstellen Teiler* von $q$ sein müssen
    und die *Summe der Nullstellen die Gegenzahl* von $p$ muss.
  ]
]

= Folgen
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
    = a_1 dot q^0$, weil $q^0$ für $q in NN without {0}$ immer $1$ ist.

    $ a_1 &= a_1 dot q^0 \
    a_2 &= a_1 dot q^1 \
    a_3 &= a_2 dot q^1 = a_1 dot q^2 \
    &... $
  ]
]

#remark[
  === Konstante Folgen
  $q$ #footnote[siehe @geometrischeFolgen] darf nicht $1$ sein, denn folglich
  wäre $forall n in NN : a_(n + 1) = a_n$.

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
      -1 &< 0 \ \ \
      endOfProof
    $

    Die Vermutung ist *wahr* für alle $n in NN$, da eine wahre Ungleichung am
    Ende steht.
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
  === Teilfolgensatz
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

      Da $a_n_L$ die letzte Gipfelstelle war, siind alle nachfolgenden
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
    annnähert. Darum vermuten wir zunächst, dass *eine* untere Schranke $-4$
    ist, $forall n in NN : -4 <= a_n$.

    $
      -4 &<= a_n \
      -4 &<= -(4n)/(n + 2) wide &&| dot (n + 2) \
      -4(n + 2) &<= -4n \
      -4n - 8 &<= -4n &&| + 4n \
      -8 &<= 0 \ \ \
      endOfProof
    $

    Die Vermutung $-4 <= a_n$ ist *wahr* für alle $n in NN$.
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

  #example[
    === Schritte zum Nachweis
    Die beliebige Folge $(a_n)$ besitzt die untere Grenze $"inf" a_n$. Es sei
    $k in RR$ mit $"inf" a_n < k$.
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
