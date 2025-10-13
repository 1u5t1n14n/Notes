#import "Template.typ": *

#set highlight(radius: 3pt, extent: 1pt)
#set heading(numbering: "I.")
#set page(
  numbering: "I"
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

= Seneca
== _Epistulae morales_

#let immo = "Im Gegenteil"

#grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
  [Seneca Lucilio suo salutem.],
  [Seneca grüßt seinen Lucilius.],

  [Libenter ex his, qui a te veniunt, cognovi te familiariter cum services tuis
  vivere.],
  [Gern habe ich von diesen, die von dir kanen, gehört, dass du
  freundschaftlich mit deinen Sklaven lebst.],

  [Hoc prudentiam tuam, hoc eruditionem decet.],
  [Dies passt zu deiner Klugheit und zu deiner Erziehung.],

  ["Servi sunt!" - "Immo homines."],
  [],

  ["Servi sunt!" - "Immo contubernales."],
  [],

  [ "Servi sunt!" - "Immo humiles amici."],
  [],

  ["Servi sunt!" - "Immo conservi, si cogitaveris tantunde in utrosque licere
  fortunae.],
  [],

  [Itaque rideo istos, qui turpe existimant cum servo suo cenare.],
  [],

  [Est ille plus quam capit, et ingenti aviditate onerat distentum ventrum, ut
  maiore opera omnia egerat quam ingessit.],
  [],

  [At infelicibus servis labra movere non licet.],
  [],

  [Sic fit, ut isti de domino loquantur, quibus coram domino loqui non licet.],
  [],
)
