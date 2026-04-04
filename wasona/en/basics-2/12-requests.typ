#import "../../template.typ": *

#show: template

= lesson 12: requests

== Requests

In Toki Pona, a sentence with #strong[󱤧 li] is a statement of fact. But
sometimes instead of making statements of fact, we want to make requests.
Requests are how we tell other people what we want to happen. In a request,
instead of #strong[󱤧 li], we use #strong[󱥄 o]:

#list((
  word("REPLACE", "o", "starts a request, command, instruction, wish"),
  sentence("REPLACE", "ilo li sitelen e pipi.", "The phone is showing a bug."),
  sentence("REPLACE", "ilo o sitelen e waso!", "Oh phone, please show a bird!"),
))

Let's look at a few more commands:

#list((
  sentence(
    "REPLACE",
    "jan o lukin e lipu pona!",
    "People, please read the good paper!",
  ),
  sentence("REPLACE", "soweli mi o moku pona!", "My cat, please eat well!"),
  sentence(
    "REPLACE",
    "jan lili sina o kama wawa!",
    "May your child become strong!",
  ),
  sentence(
    "REPLACE",
    "pona o tawa sina!",
    "May goodness go to you! (Blessings be upon you!)",
  ),
))

You might notice that some of these sentences separate quite nicely in two
parts:
+ The call for someone's attention (before #strong[󱥄 o])
+ The request itself (after #strong[󱥄 o])

We can use those separately:

#list((
  sentence(
    "REPLACE",
    "jan Ema o pini e lupa tomo!",
    "Emma, please close the door!",
  ),
  sentence("REPLACE", "jan Ema o!", "Hey, Emma!"),
  sentence("REPLACE", "o pini e lupa tomo!", "Please close the door!"),
))
