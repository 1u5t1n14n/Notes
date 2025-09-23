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
