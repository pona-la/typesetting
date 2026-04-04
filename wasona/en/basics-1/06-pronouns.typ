#import "../../template.typ": *

#show: template

= lesson 6: pronouns

You're probably tired of long sentences and parts-of-speech shenanigans. Let's
take it down a notch, by pointing at things:

#list((
  word("REPLACE", "ni", "this, that"),
  sentence("REPLACE", "ni li soweli.", "This is an animal."),
  sentence("REPLACE", "ni li kasi.", "This is a plant."),
  sentence("REPLACE", "ni li moku suwi.", "This is sweet food."),
  sentence("REPLACE", "ni li suli.", "This is important."),
  sentence("REPLACE", "ni li pona wawa.", "This is amazingly good."),
))

These are our first _sentences without an object_, and so there is no #strong[󱤉
  e] in these sentences!

You might wonder: #strong[󱤧 li] starts the verb. But where is the verb? In
English, the verb is 'to be'. In Toki Pona, there is no verb 'to be'. Instead,
when filling the role of the verb in the sentence, words automatically include
'to be' in their meaning: #strong[󱥢 soweli] 'to be an animal', #strong[󱥣 suli]
'to be important'.

Now that we've looked at one pronoun, let's get some more:

#list((
  word("REPLACE", "mi", "I, we; my, our"),
  word("REPLACE", "sina", "you; your"),
  word("REPLACE", "ona", "she, he, it, they; her, his, its, their"),
))

Let's practice using #strong[󱤴 mi], #strong[󱥞 sina], #strong[󱥆 ona], and
#strong[󱥁 ni] in sentences:

#list((
  sentence("REPLACE", "kasi ni li suli.", "This plant is big."),
  sentence("REPLACE", "sona sina li wawa.", "Your knowledge is amazing."),
  sentence("REPLACE", "pipi ni li pipi mi.", "This bug is my bug."),
  sentence("REPLACE", "waso sina li lukin e mi.", "Your bird sees me."),
  sentence("REPLACE", "waso li moku e pipi ni.", "The bird eats this bug."),
  sentence(
    "REPLACE",
    "soweli mi li moku e kasi ona.",
    "My animal eats its plant.",
  ),
))

You should already be familiar with sentences like these! In most positions in
the sentence, pronouns behave just like normal nouns and adjectives. But
something strange happens when #strong[󱤴 mi] or #strong[󱥞 sina] is the subject
of the sentence:

#list((
  sentence("REPLACE", "mi wawa.", "I am strong."),
  sentence("REPLACE", "sina lukin e moku.", "You see food."),
  sentence("REPLACE", "mi sona e kasi suli.", "I know the big plant."),
  sentence("REPLACE", "sina sona e suli kasi.", "You know the plant's size."),
))

Toki Pona has a special rule: when #strong[󱤴 mi] or #strong[󱥞 sina] is the
subject of the sentence, we remove the #strong[󱤧 li] that would normally follow
the subject. This is because sentences starting with #strong[󱤴 mi] or #strong[󱥞
  sina] are extremely common!

== See also
+ [Q: does 'li' mean 'is'?](/en/li-and-is/)
