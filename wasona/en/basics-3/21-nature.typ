#import "../../template.typ": *

#show: template

= lesson 21: nature

We already know most of the words for animal and plant stuff --- let's learn the
remaining ones!

#list((
  word("󱤁", "akesi", "reptile or amphibian, like a frog, lizard, snake"),
  word(
    "󱤔",
    "kala",
    "fish or sea creature, like a salmon, whale, shark, octopus",
  ),
  word("󱥋", "pan", "starchy food, like wheat, rice, bread, pasta"),
  word("󱤚", "kili", "fruit, vegetable"),
  word("󱦁", "soko", "mushroom"),
  word("󱦇", "misikeke", "medicine"),
  word("󱥸", "namako", "spice, garnish, adornment"),
  sentence("󱦁󱤧󱤚󱤾", "soko li kili nasa.", "Mushrooms are strange fruit."),
  sentence(
    "󱤔󱥣󱤧󱤃󱤉󱤔󱤨",
    "kala suli li alasa e kala lili.",
    "A large fish hunts smaller fish.",
  ),
  sentence(
    "󱤴󱥄󱤶󱤉󱦇󱤬󱥫󱤼",
    "mi o moku e misikeke lon tenpo mute.",
    "I have to frequently take medication.",
  ),
))

== Ingredients

Bread products are often used to hold together several different ingredients:

#list((
  sentence("󱥋󱤧󱤓󱤉󱥢", "pan li jo e soweli.", "The pizza contains meat."),
  sentence(
    "󱥋󱤧󱤓󱤉󱤚",
    "pan li jo e kili.",
    "The pizza contains vegetables.",
  ),
  sentence(
    "󱥋󱤧󱤓󱤉󱥸",
    "pan li jo e namako.",
    "The pizza contains condiments.",
  ),
))

But how do we put them together into a single sentence? Well, each of them is
the #emph[object] of a sentence. A sentence can have #emph[several objects]:
several #strong[󱤉 e]-phrases, which simply go one after the other:

#list((
  sentence(
    "󱥋󱤧󱤓󱤉󱥢󱤉󱤚󱤉󱥸",
    "pan li jo e soweli e kili e namako.",
    "The pizza contains meat, vegetables, (and) condiments.",
  ),
))

This is not special to just #strong[󱤉 e]! You can combine several related ideas
into one sentence with #strong[󱤧 li], #strong[󱤡 la], and prepositions too. For
now let's just look at #strong[󱤧 li]:

#list((
  sentence(
    "󱤑󱤧󱤃󱤉󱤔",
    "jan li alasa e kala.",
    "The person hunts fish. (= the person fishes).",
  ),
  sentence("󱤑󱤧󱥗󱤉󱥆", "jan li seli e ona.", "The person cooks them."),
  sentence("󱤑󱤧󱤶󱤉󱥆", "jan li moku e ona.", "The person eats them."),
  sentence(
    "󱤑󱤧󱤃󱤉󱤔󱤧󱥗󱤉󱥆󱤧󱤶󱤉󱥆",
    "jan li alasa e kala, li seli e ona, li moku e ona.",
    "The person hunts fish, cooks them, eats them.",
  ),
))

#exercises("21")
