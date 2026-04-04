#let template(doc) = [
  #set document(
    title: [Wasona: a crash course in Toki Pona],
    author: "kala Asi and others",
    // description:
    // keywords:
    // date:
  )

  #set page(
    width: 5in,
    height: 8in,
    margin: (
      top: 10mm,
      bottom: 15mm,
      inside: 10mm,
      outside: 10mm,
    ),
  )

  #set par(
    justify: true,
    justification-limits: (tracking: (min: -0.01em, max: 0.02em)),
  )

  #set page(footer: context {
    if calc.even(counter(page).get().first()) {
      align(left, counter(page).display("1"))
    } else {
      align(right, counter(page).display("1"))
    }
  })

  #set text(
    // font: "Noto Sans",
    // font: "Besley",
    font: "Libertinus Sans",
    size: 1em,
    // This is the cap-height of Schola, and prevents sitelen pona embeds from messing with the line height
    top-edge: 0.72em,
  )
  #set par(
    // first-line-indent: 1em,
    spacing: 1.6em,
    justify: true,
    leading: 0.9em,
  )
  #show heading: set text(
    // font: "TeX Gyre Heros",
//     font: "Libertinus Serif",
    top-edge: "cap-height",
  )
  #show heading.where(level: 1): it => {
    set align(center)
    set text(size: 1.2em)
    v(15mm)
    underline(
      extent: 10pt,
      offset: 10pt,
      stroke: 1pt,
      it.body,
    )
    v(5mm)
    // it.body
    // line(length: 100%)
  }

  // Website-style links:
  // #show link: set text(
  //   fill: rgb("#d46000"),
  //   weight: "bold",
  // )
  // #show link: it => underline(it)

  #doc
]

#let list(items) = {
  block(
    // breakable: false,
    stroke: (
      left: (
        paint: luma(70),
        thickness: 1pt,
        dash: "dotted",
        // dash: "loosely-dotted",
        // cap: "round",
      ),
    ),
    grid(
      columns: 1,
      rows: auto,
      fill: (x, y) => if calc.even(x + y) { luma(245) } else { white },
      ..items.map(item => {
        box(
          width: 100%,
          inset: (x: 10pt, y: 7pt),
          outset: (x: -0.5pt, y: 0pt),
        )[
          #set text(
            // font: "TeX Gyre Heros",
            // font: "TeX Gyre Schola",
            top-edge: "cap-height",
          )

          #item
        ]
      })
    ),
  )
}

#let word(sp, sl, m) = {
  // let sp_ = if sp == none { encode(sl) } else { sp }
  grid(
    columns: (auto, 1fr),
    rows: auto,
    column-gutter: 10pt,
    align: (left, left),

    text(
      size: 1.8em,
      font: "nasin-nanpa",
    )[#sp],

    block[
      #text[#emph[#sl]]
      #linebreak()
      #text(m)
    ],
  )
}

#let sentence(sp, sl, m) = [
  #text(size: 1.4em, font: "nasin-nanpa")[#sp]
  #linebreak()
  #text[#emph[#sl]]
  #linebreak()
  #text[#m]
]
