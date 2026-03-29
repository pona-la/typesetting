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


= Wasona

== What is Toki Pona?

Toki Pona is a constructed language created in 2001 by the polyglot Sonja Lang. At first a small community of fans emerged, and around 2020 the language rapidly grew in popularity. It is now the second #link("https://tokipona.org/conlang_communities")[most widely spoken conlang] after Esperanto!

Toki Pona is designed with simplicity and fun in mind. Its sounds are easy to pick up. Its 130-ish words are broad in meaning, and every single one has something interesting about it. Its grammar is simple by default, and powerful when needed.

You'll find Toki Pona in #link("https://discord.gg/ChC6qtVsSE")[online] #link("https://discord.gg/6zkugJFU4x")[spaces], #link("https://www.youtube.com/playlist?list=PLeCE5N29ioyUbj_lvYm9IdGJnE2HPacVv")[songs], #link("https://www.youtube.com/playlist?list=PLjOmpMyMxd8Qs2mAXcLk817tQy_AQj09u")[podcasts],
#link("https://liputenpo.org/")[zines], and #link("https://tokipona.org/")[books]\. The language is very versatile -- with skill, you can learn to talk about anything, from #link("https://www.youtube.com/watch?v=J4fCq1aEAxA")[weather] to #link("https://www.youtube.com/watch?v=ljZfGt7PDxk")[world news], from #link("https://www.youtube.com/watch?v=rr3ufODuIts")[love] to #link("https://www.youtube.com/watch?v=fedFQIHREMo")[microtonality], from #link("https://www.youtube.com/watch?v=xxClPfZDn-E")[counting cows]
to #link("https://www.youtube.com/watch?v=JIOT3bRzAGI")[investment strategy].

== What is Wasona?

There are #link("/en/other-courses/")[many ways] to learn the language. In this course, we've put together \~30 short lessons. You slowly learn new words and grammar. After each lesson, you get to practice vocabulary
with a little interactive game. After every \~10 lessons, we get to "zoom out" and see how people use Toki Pona for different needs: a short story, a dialogue, a song. Sometimes you'll find a commonly asked question or interesting topic at the bottom of the lesson.

The course will #strong[not make you fluent], but it will set you up for success! After reading and practicing, you will be familiar with how the language works. You will be able to hold a conversation, read, and listen. Reading the course takes several days or weeks, but developing the intuition and speed of a proficient speaker takes months or years.

Tips to get the most out of the course:
- Pronounce every example aloud!
- When the practice game says you got something wrong, try to explain to yourself what's different and why. There's always an explanation above!
- Sometimes you can't make sense of things. That's okay! Please talk to a proficient speaker, and they'll explain it nicely. There are always people willing to #link("https://discord.gg/ChC6qtVsSE")[help you learn]!

-- kala Asi


#pagebreak()

== Simple sentences
Now that you know how to read Toki Pona, it's time to learn words and
sentences! \
Here are some words for things and actions:

#block(
  breakable: false,
  stroke: (
    left: (
      paint: rgb("#666"),
      thickness: 1pt,
      dash: "dotted",
//       dash: "loosely-dotted",
//       cap: "round",
    ),
  ),
)[
  #grid(
    columns: 1,
    rows: auto,

    word("󱥢", "soweli", "land animal, like a cat, dog, cow, mouse, elephant", alt: true),
    word("󱥴", "waso", "bird, like a pigeon, goose, owl"),
    word("󱥑", "pipi", "insect, like a beetle, ant, butterfly, spider", alt: true),
    word("󱤗", "kasi", "plant, like a clover, birch tree, cactus, moss"),
    word("󱤶", "moku", "to consume", alt: true),
    word("󱤮", "lukin", "to see"),
    word("󱥡", "sona", "to know", alt: true),
  )
]

A very common kind of sentence is called a "subject-verb-object" sentence. This means that one thing (the subject) does something to another thing (the object). Let's make a few sentences:

Here's what we can learn:

- The word order is the same as in English: subject, verb, object.
- #strong[󱤧 li] is a particle that starts the verb.
- #strong[󱤉 e] is a particle that starts the object.
- The English translation includes words and word-pieces like "the",
  "an", "-s", but those are guesses! The Toki Pona sentence doesn't
  specify if we're talking about "#emph[a] bird" or "#emph[the] bird".
  In longer conversations, it becomes pretty clear!

\(#strong[󱤧 li] and #strong[󱤉 e] may seem unnecessary at first. We will
learn about why they are required, but to do that, we first need to
learn more about parts of speech!)


