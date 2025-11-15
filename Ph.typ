#import "Template.typ": *
#show: template.with(color: "#ADD8E6", title: "Physik")

= Gravitation
== Keplersche Gesetze

#definition[
  === Ellipsenbahnen der Planeten
  Die Planeten bewegen sich auf elliptischen Bahnen. In einem ihrer Brennpunkte
  liegt die Sonne.

  #remark[
    Das *Perihel* ergibt sich aus $a + e$, das *Aphel* aus $a - e$ und die
    *numerische Exzentrizität* mit $epsilon = e/a$.
  ]
]

#definition[
  === Flächensatz
  Die gerade Verbindung zwischen Sonne und Planeten überstreicht in gleicher
  Zeit $Delta t$, gleiche Flächen $Delta A$
]

#definition[
  === Systemkonstanten
  Innerhalb eines Planetensystems gilt für die großen Halbachsen der
  Ellipsenbahnen $a_i$ und die Umlaufzeit $T_i$ sämtlicher Planenten

  $ a_1^3/T_1^2 = a_2^3/T_2^2 = ... "usw." $

  beziehungsweise, dass $a^3/T^2$ konstant ist.
]

== Newton'sche Axiome

#definition[
  === Trägheitsgesetz
  Ein Körper *verharrt im Zustand* der Ruhe oder der gleichförmig geradlinigen
  Bewegung, sofern er nicht durch einwirkende Kräfte zur Änderung seines
  Zustands gezwungen wird.
]

#definition[
  === Aktionsgesetz
  Kraft ist gleich Masse mal Beschleunigung.

  $ arrow(F) = m dot arrow(a) $
]

#definition[
  === Reaktionsgesetz
  Eine Kraft, die auf einen Körper wirkt, ruft immer eine gleichstarke
  Gegenkraft hervor.

  Eine Kraft von Körper $A$ auf Körper $B$ geht immer mit einer gleich großen,
  aber entgegen gerichteten Kraft von Körper $B$ auf Körper $A$ einher.

  $ arrow(F)_(A B) = - arrow(F)_(B A) $
]

== Kräfte

#definition[
  === Gravitationskraft
  Die Gravitationskraft ist die Anziehungskraft, die zwischen Körpern mit
  Gravitation wirkt.

  $ F_gamma = (m_1 dot m_2)/(r^2) dot G $
]

#definition[
  === Gewichtskraft
  Die Gewichtskraft ist jene Kraft, die ein Körper auf eine Oberfläche wirkt
  oder an einer Aufhängung zieht.

  $ F = m dot g dot h $
]

#definition[
  === Zentripetalkraft
  Die Zentripetalkraft wird auf einen Körper gewirkt, um ihn auf einer
  Kreisbahn zu halten.

  $ F_Z = m dot a_Z = m dot omega^2 dot r = (m dot v^2)/r $
]

== Gravitationsfelder

#definition[
  === Was ist das?
  Das Gravitationsfeld ist ein physikalischer Raum, in dem eine Masse
  Gravitation ausüben kann.

  Die Gravitationsfeldstärke ist ein Vektor der Fallbeschleunigung, der angibt,
  wie stark das Gravitationsfeld bzw. ein darin befindlicher Körper andere
  anzieht oder anziehen kann.

  Das Gravitationsfeld der Erde ist *homogen* und *radialsymmetrisch*, d.h.
  dass die Feldlinien immer zum Massenmittelpunkt zeigen und im extremen
  Nahfeld parallel erscheinen.
]

#definition[
  === Arbeit im Gravitationsfeld
  Die potenzielle Energie wird verschieden im erdnahen und erdfernen Feld
  berechnet.

  $
    W_"homogen" = m dot g dot (h_2 - h_1) \
    W_"radial" = G dot m_1 dot m_2 dot (1/r_1 - 1/r_2)
  $
]

#definition[
  === Gravitationsfeldstärke
  Der Betrag der Gravitationsfeldstärke $g$ an einer Stelle des
  Gravitationsfelds ist definiert als der Quotient der Gravitationskraft, die
  ein Probekörper mit der Masse $m$ an dieser Stelle erfährt.

  $ g = F_G/m $
]

#definition[
  === Kosmische Geschwindkeiten
  Die *erste kosmische Geschwindigkeit* $v_1$ ist diejenige Geschwindigkeit,
  mit der ein Körper horizontal von der Erdoberfläche abgeschossen werden
  müsste, um antriebslos auf einer Kreisbahn an der Erdoberfläche zu bleiben,
  ohne auf die Erdoberfläche zurückzufallen.

  $ v_1 = sqrt((G dot m)/r) $

  #example[
    === Herleitung erste kosmische Geschwindigkeit
    Zur Herleitung wird der Kraftansatz verwendet.

    $
      F_Z &= F_G \
      (m_1 dot v^2)/r &= G dot (m_1 dot m_2)/(r^2) wide &&| dot r \
      m_1 dot v^2 &= G dot (m_1 dot m_2)/r &&| div m_1 \
      v^2 &= G dot (m_2)/r &&| sqrt(v^2) \
      v &= sqrt((G dot m_2)/r)
    $
  ]

  Als *zweite kosmische Geschwindigkeit* $v_2$ oder auch *Fluchtgeschwindigkeit*
  bezeichnet man diejenige Geschwindigkeit, mit der ein Körper das
  Gravitationsfeld eines Zentralkörpers verlassen kann.

  $ v_2 = sqrt(2) dot v_1 $

  #example[
    === Herleitung Fluchtgeschwindigkeit
    //TODO: HERLEITEN!!!!
    Die Fluchtgeschwindigkeit wird über den Energieerhaltungssatz hergeleitet.
    Dabei muss die Gesamtenergie des Flugkörpers mit der Geschwindigkeit $v_2$
    Null sein.

    $
      E_(k i n) + E_(p o t) &= 0 \
      E_(k i n) &= E_(p o t) \
      1/2 m v^2 &= G dot (m_1 dot m_2)/r wide &&| dot 2 \
      m_1 v^2 &= 2 G dot (m_1 dot m_2)/r wide &&| div m_1 \
      v^2 &= 2 G dot (m_2)/r wide &&| sqrt(v^2) \
      v_2 &= sqrt((2 G m_2)/r) = v_1 dot sqrt(2)
    $

  ]
]
