#let template(doc) = [
  #set document(
    title: [Wasona: a crash course in Toki Pona],
    author: "kala Asi and others",
    // description:
    // keywords:
    // date:
  )
  #set page(
    paper: "a5",
  )
  #set text(
    font: "Nunito",
  )
  #set par(
    first-line-indent: 1em,
    spacing: 1.5em,
    justify: true,
    leading: 1em,
  )
  #show link: set text(
    fill: rgb("#d46000"),
    weight: "bold",
  )
  #show link: it => underline(it)

  #doc
]


#let word(key, value) = box[
  #strong[#key]

  #value
]


#let word(sp, sl, m, alt: false) = {
  let sp_ = if sp == none { encode(sl) } else { sp }

  box(
    width: 100%,
    fill: if alt { luma(240) } else { none },
    inset: (x: 10pt, y: 7pt),
    outset: (x: -0.5pt, y: 0pt),

  )[
    #grid(
      columns: (auto, 1fr),
      rows: (auto),
      column-gutter: 10pt,
      align: (left, left),


      text(
        size: 2em,
        font: "nasin-nanpa", // change if needed
      )[ #sp_ ],

      block[
        #text[#emph[#sl]]
        #linebreak()
        #text(m)
      ],
    )
  ]
}