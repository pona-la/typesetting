#import "../../template.typ": *

#show: template

= lesson 5: parts of speech

Some of you may have spotted that I introduced the word #strong[󱥡 sona] twice,
first as a verb \'to know\', then as an adjective \'wise\'. So which is it? And
how do you know?

In reality, it can be either! If it follows a noun, it\'s an adjective. If
#strong[󱤧 li] introduces it as a verb, then it\'s a verb. It\'s all about word
order in a sentence!

In fact, the same is true of #emph[all] words: if something is a noun, verb, or
adjective, it can become #emph[any of the three]! Among the words we\'ve already
learned, let\'s look at some examples:

#list((
  word("󱤮", "lukin", "N: eye; V: to see"),
  word("󱤶", "moku", "N: food; V: to consume, to eat"),
  word(
    "󱥡",
    "sona",
    "N: knowledge, wisdom; V: to know; Adj: knowledgeable, wise",
  ),
  word(
    "󱥣",
    "suli",
    "N: size; V: to make bigger, to emphasize; Adj: big, important",
  ),
  word(
    "󱥔",
    "pona",
    "N: goodness; V: to make better, to improve; Adj: good, pleasant",
  ),
  word(
    "󱥴",
    "waso",
    "N: bird; V: to make into a bird; Adj: of a bird, bird-like",
  ),
))

I\'ve only listed #emph[some] words we\'ve learned so far -- just enough to see
the patterns:

- When #strong[verbs become nouns], they usually mean an act of doing something
  (#emph[knowledge]), or something that forms a crucial part of the act
  (#emph[food, eye]).
- When #strong[verbs become adjectives], they mean those which do something
  (#emph[wise people \~ people who know]).
- When #strong[nouns become verbs], they usually mean to turn into or apply
  something to something (#emph[to turn into a bird]).
- When #strong[nouns become adjectives], they mean possession or similarity
  (#emph[of a bird, bird-like])
- When #strong[adjectives become nouns], they mean a quality (#emph[goodness,
    size]).
- When #strong[adjectives become verbs], they impart a quality (#emph[to make
    better, to make bigger]).

But when talking, we Toki Pona speakers don\'t even have to think about these
patterns most of the time! They start to blend into each other. At some point
you stop even thinking about whether something was originally a noun or a verb
or an adjective. It becomes a coherent whole!

Let\'s practice using these words as nouns, verbs, and adjectives:

#list((
  sentence(
    "󱤮󱤧󱥔󱤉󱥡",
    "lukin li pona e sona.",
    "Eyes improve knowledge.",
  ),
  sentence(
    "󱤶󱤧󱥣󱤉󱥑",
    "moku li suli e pipi.",
    "Food makes the bugs grow bigger.",
  ),
  sentence(
    "󱤶󱤧󱥵󱤉󱥢󱤨",
    "moku li wawa e soweli lili.",
    "Food strengthens the small animal.",
  ),
))

== Word order matters!
Since any noun can be an adjective, and any adjective can be a noun, word order
really matters! Notice how these two phrases mean different things:

#list((
  word("󱥢󱥣", "soweli suli", "big animal"),
  word("󱥣󱥢", "suli soweli", "the size of an animal"),
  sentence(
    "󱥢󱥣󱤧󱥡󱤉󱥣󱥢",
    "soweli suli li sona e suli soweli.",
    "The big animal knows the size of an animal.",
  ),
))

== li and e matter, too!
Remember how li and e seemed a little unnecessary? Now that we know any
meaningful word can be used anywhere, as a noun, verb, or adjective, we can
finally see how important they are. Thanks to them, we can distinguish these
three very different sentences:

#list((
  word("󱥢󱥡", "soweli sona", "wise animal"),
  word("󱥡󱥔", "sona pona", "good knowledge; to know well"),
  word("󱥔󱥴", "pona waso", "goodness of the bird"),
  sentence(
    "󱥢󱥡󱤧󱥔󱤉󱥴",
    "soweli sona li pona e waso.",
    "The wise animal helps the bird.",
  ),
  sentence(
    "󱥢󱤧󱥡󱥔󱤉󱥴",
    "soweli li sona pona e waso.",
    "The animal knows the bird well.",
  ),
  sentence(
    "󱥢󱤧󱥡󱤉󱥔󱥴",
    "soweli li sona e pona waso.",
    "The animal knows how good the bird is.",
  ),
))

If you are ever confused about how to read or write a sentence, start by asking:
\"Where is the subject? Where is the verb? Where is the object?\", and
everything neatly separates into small phrases!
