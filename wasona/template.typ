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
    // This is the cap-height of teX Gyre Schola, and prevents sitelen pona embeds from messing with the line height
    // It should be checked and changed when the font changes
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

// Replace latin text with sitelen pona (using the correct font)
#let sp(lasina) = {
  // Keep track of the data type so we can return a string or content appropriately
  let type = type(lasina)
  if type == content {
    lasina = lasina.text
  }

  // Lookups are just stored in a csv
  let table = csv("uscur.csv")
  for row in table {
    lasina = lasina.replace(row.at(0), row.at(1))
  }

  // Return content or string appropriately
  if type == content {
    return text(font: "nasin-nanpa", lasina)
  } else {
    return lasina
  }
}

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
  if sp == "" { sp = encode(sl) }
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

// For different types of exercises
// Todo add sentence
#let exercise_titles = ("vocab": "Vocab")
#let exercise_prompts = ("vocab": "Which of these means...")

// Render end-of-chapter exercises
#let exercises(id) = {
  let exercise_data = toml("en/exercises.toml").at(id).at("exercises")

  for (n, exercise) in exercise_data.enumerate(start: 1) {
    // perhaps replace this with a numbering function?
    let exercise_title = str(n) + ". " + exercise_titles.at(exercise.type)
    let exercise_prompt = exercise_prompts.at(exercise.type)

    [
      #set par(spacing: 0.65em)
      == #exercise_title
      *#exercise_prompt*

      // Right now this just renders as multiple choise - will need to add a case or smth when we support sentences
      // (maybe break out everything below here into a "Multiple choice" function?)

      #for (q, task) in exercise.tasks.enumerate(start: 1) {
        // Show the multiple choices in alphabetical order
        let answers = task.junk
        answers.push(task.l2)
        answers = answers.sorted()

        [
          #numbering("1.", q) *#task.l1*\
          #grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 10pt, ..answers
              .enumerate(start: 1)
              .map(((i, answer)) => [
                #numbering("A.", i) #sp(answer) #answer
                #v(0.75em)
              ]))
        ]
      }]
  }
}

#let solutions() = {
  let exercises = toml("en/exercises.toml")

  for chapter_key in exercises.keys() {
    let chapter = exercises.at(chapter_key)

    [
      == #chapter.at("chapter_name")

      #for (exercise_num, exercise) in chapter.at("exercises").enumerate(start: 1) {
        // Maybe simplify this with the numbering function
        let exercise_title = str(exercise_num) + ". " + exercise_titles.at(exercise.type)
        [
          === #exercise_title

          #for task in exercise.at("tasks") {
            let answer = task.at("l2")
            [
              // Might want to render this differently for sentence answers
              + #sp(answer) #answer
            ]
          }
        ]
      }
    ]
  }
}
