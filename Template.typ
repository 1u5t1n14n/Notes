#let template(color: "#FF0000", author: "J. F.", title: "", doc) = {
  set text(
    lang: "de",
    size: 10pt,

    //font: "Georgia"
    //font: "Inter"
    font: "Jost*"
  )

  set page(fill: rgb(color), margin: (top: 15em, rest: 15em))
  line(start: (0%, 0%), end: (85em, 0%), stroke: (thickness: 2pt))
  align(horizon + left)[
    #text(size: 24pt, [Betrachtungen der Tafel \ und andere Überlegungen]) \ \
    #text(size: 16pt, title)
  ]
  align(bottom + right)[
    #author \
    #datetime.today().display("[year].[month].[day]")
  ]

  set document(title: title, author: author, date: datetime(day: 2, month: 1, year: 2009))
  set page(fill: none, margin: auto)
  set grid(columns: (1fr, 1fr), gutter: 0.65em)
  set highlight(radius: 0.3em, extent: 0.2em)
  set heading(numbering: "1.1.")
  set page(numbering: "1")

  pagebreak()
  outline()
  pagebreak()

  doc
}

// Mathe
#let noteBlock(body, fill: rgb("#000000"), stroke: rgb("#000000")) = block(
  fill: fill,
  inset: 8pt,
  radius: 4pt,
  stroke: stroke,
  width: 100%,
  body
)

#let definition(body) = noteBlock(
  body,
  fill: rgb("#EDF1D6"),
  stroke: rgb("#609966")
)
#let theorem(body) = noteBlock(
  body,
  fill: rgb("#FEF2F4"),
  stroke: rgb("#EE6983")
)
#let example(body) = noteBlock(
  body,
  fill: rgb("#F7FBFC"),
  stroke: rgb("#BAB26F")
)

#let remark(body) = noteBlock(
  body,
  fill: rgb("#F2E1AE"),
  stroke: rgb("#E8967A")
)

#let tldr(body) = noteBlock(
  [*TL;DR* \
  ] + body,
  fill: rgb("#AFCBEA"),
  stroke: rgb("#3D8AE2")
)

#let endOfProof = "Quod erat Demonstrandum"
#let polynom = $a_n x^n + a_(n - 1) x^(n - 1) + ... + a_1 x + a_0$

// Latein
#let predicate(body) = highlight(fill: red)[#body]
