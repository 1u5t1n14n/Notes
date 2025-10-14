#import "Template.typ": *
#show: template

// Ist halt Latein, deswegen kommen
// römische Zahlen schon hart
#set heading(numbering: "I.")
#set page(numbering: "I")

= Plinius
== Aufstand im Bad
#grid(
  [Cornelius Plinius Acilio suo salutem.],
  [Cornelius Plinius grüßt seinen Acilius.],

  [Rem atrocem nec tantum epistula dignam Larcius Macedo, vir praetorius, a
  servis suis passus est, superbus alioqui dominus et saevus, et qui servisse
  patrem suum parum, immo nimium meminisset.],
  [Larcius Macedo, ein Mann im Rang eines Prätors, ein sonst hochmütiger und
  grausamter Herr, welcher sich zu wenig, oder im Gegenteil eher zu viel daran
  erinnerte, dass sein Vater ein Sklave war, ertrug eine schreckliche Sache,
  welche nicht nur eines Briefes würdig wäre.],

  [Lavabatur in villa Formiana; repente eum servi circumsistunt, alius fauces
  invadit, alius os verberat, alius pectus et ventrem atque etiam, foedum
  dictu, verenda contundit; et, cum exanimem putarent, abiciunt in fervens
  pavimentum, ut experirentur, an viveret.],
  [Er nahm ein Bad in einer fromischen Villa; plötzlich umringten ihn die
  Sklaven. Einer ging ihm an die Gurgel, ein anderer schlug ihm ins Gesicht,
  ein weiterer schlug auch auf seine Brust und seinen Bauch ein, und sogar -
  was abscheulich zu erwähnen ist - auf seine Schamteile. Und als sie ihn für
  leblos hielten, warfen sie ihn hinab auf den glühenden Boden, um zu prüfen,
  ob er noch lebte.],

  [Ille, sive quia non sentiebat, sive quia se non sentire simulabat, immobilis
  et extentus fidem peractae mortis implevit.],
  [Jener, entweder weil er nichts fühlte, oder wil er vorgab, nichts zu fühlen,
  erbrachte unbeweglich und hingestreckt den Beweis seines vollendeten Todes.],

  [Tum demum quasi aestu solutus effertur; excipiunt servi fideliores,
  concubinae cum ululatu et clamore concurrunt.],
  [Dann schließlich, als hätte die Glut ihn getötet, wurde er herausgetragen;
  die treueren Sklaven nahmen ihn entgegen, seine Geliebten liefen unter Geheul
  und Geschrei dazu.],

  [Ita et vocibus excitatus et recreatus loci frigore sublatis oculis
  agitatoque corpore vivere se (et iam tutum erat) confitetur.],
  [Auf folgende Weise gab er zu erkennen, sowohl durch die Stimmen als auch
  durch die Kälte des Ortes wiederbelebt, indem er die Augen aufschlug und
  seinen Körper bewegte, dass er noch lebte - und schon war dies sicher.],

  [Diffugiunt servi; quorum magna pars comprehensa est, ceteri requiruntur.],
  [Die Sklaven zerstreuten sich fliehend, ein großer Teil von ihnen wurde
  gefasst, die Übrigen werden gesucht.],

  [Ipse paucis diebus aegre focilatus non sine ultionis solacio decessit, ita
  vivus vindicatus, ut occisi solent.],
  [Er selbst starb, für wenige Tage mit großer Mühe wiederbelebt, nicht ohne
  den Trost der Rache, weil er lebend so gerächt wurde, wie normalerweise die
  Toten.],

  [Vides, quot periculis, quot contumeliis, quot ludibriis simus obnoxii; nec
  est, quod quisquam possit esse securus, quia sit remissus et mitis; non enim
  iudicio domini, sed scelere perimuntur.],
  [],

  [Verum haec hactenus.],
  [],
)

= Seneca <seneca>
== _Epistulae morales_

#let immo = "Im Gegenteil"

#grid(
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
