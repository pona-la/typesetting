#set page(
  width: 5in,
  height: 8in,
  margin: 10mm,
  columns: 2,
)

#set text(size: 9.5pt)

#set par(
  justify: true,
  justification-limits: (tracking: (min: -0.01em, max: 0.02em))
)

#set page(
  header: {
    context {
      // Getting current Chapter title (supplement)
      let entries = query(<entry>).filter(e => here().page() == e.location().page())

      set text(
        size: 13pt,
        weight: "bold"
      )

      grid(
        inset: 0.2em,
        stroke: (bottom: stroke(black)),
        columns: (3fr, 1fr, 3fr),
        [
          #set align(left)
          #entries.first(default: (value : (keyword: ""))).value.keyword
        ],
        [
          #set align(center)
          #counter(page).display("1")
        ],
        [
          #set align(right)
          #entries.last(default: (value : (keyword: ""))).value.keyword
        ]
      )
  }},
)

#set par(
  spacing: .75em,
  leading: .3em
)

#set columns(gutter: 1em)

#let definition(keyword, enumeration, pos, eng, tok, examples) = [
  #let example_list = {examples.split("\n")}

  #let num = []
  #if enumeration != "" [
    #{num = [*#enumeration.*]}
  ]

  
  #show "*": ""
  #show regex("\*.*\*"): set text(style: "italic")
  #show "**": ""
  #show regex("\*\*.*\*\*"): set text(weight: "bold")
  #block(
    breakable: false,
    [#num #eng #sym.circle.filled *#tok*]
  )
  #{
    for example in example_list {
      let example = example.split(" | ")
      block(
        breakable: false,
        stroke: (left: stroke(black)),
        inset: (
          left: 0.3em,
          top: 0.1em,
          bottom: 0.1em,
          right: 0.6em
        ),
        above: 0.25em,
        below: 0.25em,
        [
          _#example.at(0)_\
          #example.at(1)
        ]
      )
    }
  }  
]

// #let definitions = csv("parsed.csv", row-type: dictionary).slice(0, 100)
#let definitions = csv("parsed.csv", row-type: dictionary)
// #let definitions = csv("parsed.csv", row-type: dictionary).filter(def => def.keyword.first() == "g")

#let notes = csv("notes.csv", row-type: dictionary)

#let keywords = definitions.map(def => def.keyword).dedup()

#for word in keywords [
  #let word_defs = definitions.filter(def => def.keyword == word)
  #block(
    sticky: true,
    above: 0.3em,
    below: 0.3em,
    [
      #set text(size: 11.5pt, weight: "bold")
      #word
      #metadata((keyword: word))<entry>
    ] 
  )
  #for def in word_defs [
    #block(
      sticky: false,
      above: 0.35em,
      below: 0.35em,
      [
        #definition(def.keyword, def.enumeration, def.pos, def.eng, def.tok, def.examples)
      ]
    )
  ]
  #for note in notes.filter(n => n.keyword == word) [
    #block(
      stroke: (
        top: stroke(black),
      ),
      inset: (
        left: 0.5em,
        right: 0.5em,
        top: 0.4em,
        bottom: 0.4em
      ),
      outset: (
        left: -0.3em,
        right: -0.3em
      ),
      [
        #set text(size: 8pt)
        #show "*": ""
        #show regex("\*.*\*"): set text(style: "italic")
        #show "**": ""
        #show regex("\*\*.*\*\*"): set text(weight: "bold")
        #note.notes
      ]
    )
  ]
]