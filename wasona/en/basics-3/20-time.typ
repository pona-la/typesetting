#import "../../template.typ": *

#show: template


= lesson 20: time

Let's talk about time! You may have noticed I translate the sentences
inconsistently: sometimes they talk about the present, sometimes the past,
sometimes the future. This is because by default, a Toki Pona sentence carries
no time information, so it could be anything! But of course, we can choose to be
more specific, by using words related to time.

Let's learn some of them:

#list((
  word("REPLACE", "tenpo", "time, moment, situation"),
  word("REPLACE", "sike", "round, repeating, yearly; circle, ball"),
  word("REPLACE", "mun", "moon, celestial body"),
  word("REPLACE", "suno", "sun, daylight; bright"),
  word("REPLACE", "sin", "new, fresh; again"),
  word("REPLACE", "poka", "side, vicinity; nearby"),
))

You already know how to talk about location in #emph[space]. Location in
#emph[time] is very similar:

#list((
  word("REPLACE", "lon tenpo kama", "in the coming time, in the future"),
  word("REPLACE", "lon tenpo pini", "in the finished time, in the past"),
  word("REPLACE", "lon tenpo ni", "during this time"),
  sentence(
    "REPLACE",
    "soweli lili mi o kama suli lon tenpo kama!",
    "May my little cat grow big in the future!",
  ),
  sentence(
    "REPLACE",
    "ma Loma li ma suli lon tenpo weka.",
    "Rome was a large empire long ago.",
  ),
))

Time often serves as a sort of "scene", a "context" for the rest of the speech.
Often, we like to put such context at the beginning of the sentence, like I just
did in this one! Toki Pona has a word that helps with that:

#list((
  word("REPLACE", "la", "as for ..., speaking of ..., when ..., if ... "),
  word("REPLACE", "ken la", "perhaps, ..."),
  word("REPLACE", "open la", "to begin with, ..."),
  word("REPLACE", "lipu la", "as for the book, ..."),
  word("REPLACE", "tenpo la", "sometimes, ..."),
  word("REPLACE", "tenpo pini la", "in the past, ..."),
  word("REPLACE", "tenpo suno kama la", "the next day, ...; tomorrow, ..."),
  sentence(
    "REPLACE",
    "sin la mi wile toki e ni:",
    "Once again, I just want to say that...",
  ),
  sentence(
    "REPLACE",
    "mi pali e ni lon tenpo kama poka.",
    "I will work on this soon.",
  ),
))

#strong[󱤡 la] can also be used between two sentences, joining them into one. The
first sentence becomes a condition #emph['if or when ...'], and the second
becomes the result: #emph['then ...'].

#list((
  word("REPLACE", "suno li pini.", "The sun sets."),
  word("REPLACE", "mi lape.", "I sleep."),
  sentence(
    "REPLACE",
    "suno li pini la, mi lape.",
    "When the sun sets, I sleep.",
  ),
))

