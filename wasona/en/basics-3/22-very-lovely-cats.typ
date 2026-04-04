#import "../../template.typ": *

#show: template

= lesson 22: very lovely cats

We've recently learned #strong[󱤼 mute], which is a very useful word!

Let's think a bit more about it. We already know how to form these phrases:

#list((
  word("󱥢󱥦", "soweli suwi", "a lovely cat"),
  word("󱥢󱤼", "soweli mute", "many cats"),
  word("󱥦󱤼", "suwi mute", "very lovely"),
))

But what if we put them all together? Will we get #emph[many lovely cats] or
#emph[a very lovely cat]?

#list((
  word("󱥢󱥦󱤼", "soweli suwi mute", "many lovely cats"),
))

This phrase means #emph[many lovely cats], because #strong[󱥦 suwi] describes
#strong[󱥢 soweli], and #strong[󱤼 mute] also describes #strong[󱥢 soweli]. \
But I think #emph[my] cat is very lovely! How do I talk about it? What if I want
#strong[󱤼 mute] to describe #strong[󱥦 suwi], instead of describing #strong[󱥢
  soweli]? \
This is where a new particle helps us:

#list((
  word("󱥍", "pi", "a particle that groups adjectives"),
  word("󱥢󱥍󱥦󱤼", "soweli pi suwi mute", "a very lovely cat"),
))

Hooray! Now we can talk about a #strong[󱥢 soweli] that's #strong[󱥦󱤼 suwi mute]!
\
If you like maths, you can think of it like opening a bracket, and changing the
order of operations: #emph['cat sweet many'] vs #emph['cat (sweet many)'].

Let's look at another example:

#list((
  word("󱥠󱥭", "sitelen tomo", "a photo of a house"),
  word("󱥠󱤼", "sitelen mute", "photos"),
  word("󱥭󱤼", "tomo mute", "houses"),
  word("󱥠󱥭󱤼", "sitelen tomo mute", "photos of a house"),
  word("󱥠󱥍󱥭󱤼", "sitelen pi tomo mute", "a photo of houses"),
))

Again, you can think of it as #emph['photo house many'] vs #emph['photo (house
  many)']. \
Of course, #strong[󱤼 mute] isn't the only word #strong[󱥍 pi] helps out with!
Let's take a look at some other words:

#list((
  word("󱤑󱥔", "jan pona", "a nice person"),
  word("󱤑󱤨", "jan lili", "a small person"),
  word("󱥔󱤨", "pona lili", "somewhat nice"),
  word("󱤑󱥔󱤨", "jan pona lili", "a small nice person"),
  word("󱤑󱥍󱥔󱤨", "jan pi pona lili", "a somewhat nice person"),
))

#emph['person nice small'] vs #emph['person (nice small)'].

#list((
  word("󱥡󱥱", "sona utala", "war knowledge"),
  word("󱥡󱥝", "sona sin", "new knowledge"),
  word("󱥱󱥝", "utala sin", "new war"),
  word(
    "󱥡󱥱󱥝",
    "sona utala sin",
    "new war-knowledge. the knowledge is recent.",
  ),
  word("󱥡󱥍󱥱󱥝", "sona pi utala sin", "new-war knowledge. the war is recent."),
))

#emph['knowledge war new'] vs #emph['knowledge (war new)'].

#emph[Why are all the translations to English so different?!], you might ask!
English mainly uses #emph[parts of speech] to tell which word belongs to which
other word. #emph[Many] is an adjective, but #emph[very] is an adverb. When
parts of speech are all the same, hyphens come to the rescue.

But in Toki Pona, nouns, verbs, and adjectives can all become one another. So
they can't help! Instead, Toki Pona uses just one particle to rebracket.
