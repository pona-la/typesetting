#import "../template.typ": *

#show: template

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
