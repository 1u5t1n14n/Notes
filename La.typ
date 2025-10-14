#import "Template.typ": *
#show: template

#set heading(numbering: "I.")
#set page(
  numbering: "I"
)

= Seneca <seneca>
== _Epistulae morales_

#let immo = "Im Gegenteil"

#grid(
  columns: (1fr, 1fr),
  gutter: 0.65em,
  [Seneca Lucilio suo salutem.],
  [Seneca #footnote[siehe @seneca] grüßt seinen Lucilius.],

  [Libenter ex his, qui a te #predicate[veniunt], #predicate[cognovi] te
  familiariter cum services tuis vivere.],
  [Gern habe ich von diesen, die von dir kamen, gehört, dass du
  freundschaftlich mit deinen Sklaven lebst.],

  [Hoc prudentiam tuam, hoc eruditionem #predicate[decet].],
  [Dies passt zu deiner Klugheit und zu deiner Erziehung.],

  ["Servi #predicate[sunt]!" - "Immo homines."],
  ["Sie sind Sklaven!" - "#immo, Menschen."],

  ["Servi #predicate[sunt]!" - "Immo contubernales."],
  ["Sie sind Sklaven!" - "#immo, Hausgenossen."],

  [ "Servi #predicate[sunt]!" - "Immo humiles amici."],
  ["Sie sind Sklaven!" - "#immo, niedrige Freunde."],

  ["Servi #predicate[sunt]!" - "Immo conservi, si #predicate[cogitaveris]
  tantunde in utrosque licere fortunae.],
  ["Sie sind Sklaven!" - "#immo, Mitsklaven, wenn du berücksichtigst, dass dem
  Schicksal gegenüber beiden ebensoviel erlaubt ist."],

  [Itaque #predicate[rideo] istos, qui turpe #predicate[existimant] cum servo
  suo cenare.],
  [Deshalb lache ich über diese, die es für schändlich halten, mit ihren
  Sklaven zu essen.],

  [#predicate[Est] ille plus quam #predicate[capit], et ingenti aviditate
  #predicate[onerat] distentum ventrum, ut maiore opera omnia
  #predicate[egerat] quam #predicate[ingessit].],
  //TODO: Übersetz das mal richtig
  [Irgendwas passiert, damit alle mit mehr Mühe rausbringen als
  hineinbringen.],

  [At infelicibus servis labra movere non #predicate[licet].],
  [Aber den unglücklichen Sklaven ist es nicht erlaubt, ihre Lippen zu
  bewegen.],

  [Sic #predicate[fit], ut isti de domino #predicate[loquantur], quibus coram
  domino loqui non #predicate[licet].],
  [So geschieht es, dass],

  [At illi, quibus non tantum coram dominis, sed cum ipsis #predicate[erat]
  sermo, parati #predicate[erant] pro domino porrigere cervicem.],
  [],

  [Proverbium #predicate[est] totidem hostes esse quot servos.],
  [],

  [Non #predicate[habemus] illos hostes, sed #predicate[facimus].],
  [],
)
