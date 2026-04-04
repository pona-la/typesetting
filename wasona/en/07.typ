#import "../template.typ": *

#show: template

== Names
Pointing at things is nice, but sometimes it\'s nice to be more specific.
Introducing: names! A revolutionary technology that allows you to talk about
someone or something in particular.

Let\'s learn the words for things that often have names:

#list((
  word("󱥂", "nimi", "name, word"),
  word("󱤑", "jan", "person"),
  word("󱥠", "sitelen", "image, writing; to draw, to write"),
  word("󱥬", "toki", "speech, language; to talk, to speak"),
  word("󱤰", "ma", "land, country"),
  word("󱥭", "tomo", "building, room, home"),
))

You already know one name: #emph[sitelen Lasina]! Let\'s look at some names of
people:

#list((
  sentence("󱤑󱦐󱥁󱥆󱥴󱤂󱦑", "jan Nowa", "person named Noah (from English 'Noah')"),
  sentence("󱤑󱦐󱤉󱤶󱤂󱦑", "jan Ema", "person named Emma (from English 'Emma')"),
))

From these names you can see:

+ Names are adjectives: they come after another word.
+ Names start with a capital letter. If you spot a capitalised word in Toki
  Pona, you immediately know it\'s a name!
+ In #emph[sitelen pona], we write names inside a big #strong[󱥂 nimi]. We call
  this name-block a #emph[cartouche], like the ones used in Egyptian
  hieroglyphs. For each sound in the name, we pick a word that starts with that
  sound. For example, \'Ema\' can be spelled 󱤉 #strong[e], 󱤶 #strong[m]oku, 󱤂
  #strong[a]la.

People aren\'t the only ones to have names! Let\'s look at a language, a
country, and a city:

#list((
  sentence(
    "󱥬󱦐󱤗󱤂󱥁󱥣󱤉󱦑",
    "toki Kanse",
    "language named French (from French 'français')",
  ),
  sentence("󱤰󱦐󱥬󱥆󱥣󱤍󱦑", "ma Tosi", "land named Germany (from German 'Deutsch')"),
  sentence(
    "󱤰󱥭󱦐󱤧󱥆󱤶󱤂󱦑",
    "ma tomo Loma",
    "land of buildings named Rome (from Latin 'Rōma')",
  ),
))

These names tell us more about how a Toki Pona name is made:

#block[
  #set enum(numbering: "1.", start: 4)
  + When names enter Toki Pona, they #emph[change] to the sound system of Toki
    Pona. There is no #strong[d] in Toki Pona, so the word Deutsch starts with a
    #strong[t]. Some changes are small, like #emph[Noah] → #emph[Nowa], some are
    large, like #emph[français] → #emph[Kanse].
  + Names are often not from English. We like to use #emph[endonyms]: self-names
    of countries, languages, people, and so on. The name for French comes from
    French!
]

Let\'s practice using the new words and names in sentences:

#list((
  sentence("󱥴󱤧󱤮󱤉󱤰", "waso li lukin e ma.", "The bird looks at the land."),
  sentence("󱤑󱤧󱥬󱤉󱥭", "jan li toki e tomo.", "People speak about a house."),
  sentence("󱤑󱥔󱤧󱥬󱥔", "jan pona li toki pona.", "Pleasant people speak well."),
  sentence("󱥂󱥆󱤧󱤑󱦐󱤗󱤉󱥁󱥬󱤂󱦑", "nimi ona li jan Kenta.", "His name is Kenta."),
  sentence(
    "󱤑󱦐󱥣󱥱󱥁󱤍󱥬󱤂󱦑󱤧󱥠󱤉󱥑",
    "jan Sunita li sitelen e pipi.",
    "Sunita draws a bug.",
  ),
  sentence(
    "󱤑󱦐󱥁󱤍󱥁󱤂󱦑󱤧󱥬󱦐󱤗󱤂󱥁󱥣󱤉󱦑",
    "jan Nina li toki Kanse.",
    "Nina speaks French.",
  ),
  sentence(
    "󱤑󱦐󱤉󱤶󱤂󱦑󱤧󱥡󱥔󱤉󱤰󱦐󱥬󱥆󱥣󱤍󱦑",
    "jan Ema li sona pona e ma Tosi.",
    "Emma knows Germany well.",
  ),
))

== See also
- #link("/en/make-a-name/")[Q: what\'s my name in Toki Pona?]
- #link("/en/simpler-cartouches/")[Q: in sitelen pona, names look long. How can
    I make them shorter?]
