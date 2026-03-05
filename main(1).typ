// sitelen pona drop caps my beloved
#import "@preview/droplet:0.3.1": dropcap

// We use the A5 page size from Lulu, as it's small and its proportions most match the cover art I was using.
#set page(width: 148mm, height: 210mm, margin: (inside: 18mm, outside: 15mm, bottom: 15mm, top: 15mm))

// Basic Heading Setup
#show heading: set text(size: 22pt)
#show heading: set par(first-line-indent: 0em)

// The 1900 first edition (which we're using art from) used Monotype Old Style, of which TeX Gyre Bonum is a free replica.
#set text(font: "TeX Gyre Bonum", size: 12pt)

// Per-character justification!
#set par(justify: true, justification-limits: (tracking: (min: -0.01em, max: 0.02em)), linebreaks: "optimized")

// An array of codes of ligatures for numbers 1-20 in typeface sitelen seli kiwen
#let nanpa = ("󱥳", "󱥮", "󿩀", "󿨿", "󱤭", "󿩂", "󿩄", "󿩆", "󿩈", "󿩉", "󿩊", "󿩋", "󿩌", "󿩎", "󿩏", "󿯋", "󿯈", "󿯊", "󿯉", "󿵩")

// Custom nasin nanpa pona numbering function, for page and chapter numbers
// We do it recursively
#let get_nanpa(..nums, last) = {
  if last < 1 {
    // Base case, return empty string for 0 or less
    return ""
  }
  if last >= 100 {
    // 100 or above: split it in two and recurse each, separated by "ale"
    return get_nanpa(calc.floor(last / 100)) + [󱤄] + get_nanpa(calc.rem(last, 100))
  } else {
    // Base case, return an appropriate number for 1-99
    return [#nanpa.at(19)] * calc.floor((last - 1) / 20) + [#nanpa.at(calc.rem(last, 20) - 1)]
  }
}

// First mini header page, sometimes this has review quotes but often it's just a mini logo
#v(1fr)
#align(center, [
#image("header.png", width:60%)
])
#v(3fr)

#pagebreak()

// Some quick front matter just to keep things from looking too empty

#v(1fr)

#align(center, [
toki pi lipu ni li tan jan Ke Tami.\
ona li pana e ona tawa ale\
kepeken nasin CC0.\
ken la lipu ni li jo e pakala lili.\
tenpo kama la ona li kama pona.

#h(0pt)

sitelen sinpin pi lipu ni\
li tan jan W. W. Denslow.\
jan Ke Tami en loje Kasenwa\
li ante e ona.

#h(0pt)

lipu ni li kama lon\
tan loje Kasenwa\
kepeken ilo Typst\
kepeken kulupu esun Lulu.

#h(0pt)

nasin sitelen ni:\
li nasin palisa\
li sitelen seli kiwen\
li nasin Oz'sWizard\
li nasin TeX Gyre Bonum.

#h(0pt)

o lukin pona!
])

#v(2fr)

// Now the larger logo page

#pagebreak()
#v(1fr)
#image("header.png")
#v(3fr)


// Blank page so we start chapter 1 on the right (recto)
#pagebreak()
#pagebreak()

// Set-up for non-front-matter pages: we set page number to one and set up the footer
#counter(page).update(1)
#set page(footer: context [
  #set text(font: "sitelen seli kiwen mono asuki")
  #h(1fr)
  #counter(page).display(get_nanpa)
  #h(1fr)
])

// And of course our lovely compact fiction spacing
#set par(first-line-indent: 1.5em, spacing: 0.5em)

// Start each chapter on a new page
#pagebreak(weak: true)

// Probably should have made a function for this but as is I copy-pasted it
// We have the chapter number, then a negative vertical space to tighten things, then the page number
// Future chapters use the get_nanpa function but here it's manual for chapter open
= #text(font: "sitelen seli kiwen mono asuki", [nanpa open]) #v(-10pt) #text(font: "Oz'sWizard", [kon tawa wawa])

// Each chapter is closed inside a dropcap block
#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
// Anything inside a box at the start of the chapter will get turned into a dropcap
// No comments beyond this point as the rest is copy-pasted nightmare! :p
#box[ma] supa suli Kansa lon ma Mewika la, jan Towesi en jan Enwi en jan Me li lon tomo sama. mama pi jan Towesi la, jan Enwi li jan sama. ona li jan pi pali ma pan. jan Me li jan olin ona. kiwen kasi li kama tan ma pi weka suli la, tomo ona li lili. sinpin tu tu en supa sewi wan en supa anpa wan li tomo wan taso tawa jan ale. ona li jo e ilo seli moku wan, e supa wan pi poki moku, e supa moku wan, e supa monsi mute, e supa lape tu. supa lape nanpa wan li suli, li lon poka tomo wan, li tawa jan Enwi, li tawa jan Me. supa lape nanpa tu li lili, li lon poka tomo ante, li tawa jan Towesi. sewi la, tomo li lon ala. anpa kin la, tomo li lon ala. taso lupa li lon anpa ma, li ken awen e jan tan tawa pi kon wawa. kon li tawa wawa sike la, tawa kon li ken pakala e tomo a! jan li open e supa lili la, ona li ken tawa anpa kepeken palisa nasin, li ken lon insa pi lupa anpa pimeja lili ni.

jan Towesi li lon lupa pi sinpin tomo. ona li lukin e ma ale la, ona li ken lukin e ma suli supa taso pi kule ma. kasi suli en tomo li pini e nasin lukin lon ma ala. supa taso li suli la, ma en sewi li kama wan lon weka suli tawa lukin lon poka ale. suno li seli e ma, li weka e kule tan ma, li kama e linja lupa lili mute lon ma. kasi anpa kin li laso ala. suno li seli e sewi kasi la, kule ona kin li kama sama ma ale. jan li pana e kule tawa tomo lon tenpo pini. taso suno en telo sewi li pakala e kule ni kin. tenpo ni la, tomo li suwi ala tawa lukin, li kule weka sama ale ante.

jan Me li kama awen lon tomo ni lon tenpo pini la, ona li suwi tawa lukin pi jan olin ona, li suli tenpo ala. tenpo la, suno en kon tawa li ante e ona kin. tenpo ni la, wawa li kama weka tan oko ona. kule ma taso li awen. loje kin li kama weka tan poka uta, li kama weka tan selo uta. kule ma taso li awen. sijelo ona li sama palisa. pilin pona li kama ala lon sinpin ona. jan Towesi li kama lon tomo tan moli pi mama ona la, ona li mu pona e pilin musi ona. jan Me li pilin nasa wawa tan kalama ni. ni la, jan Me li kalama wawa, li pana e luka tawa pilin lon sinpin sijelo tan pilin nasa. ona li awen lukin e jan lili, li kama lukin e pilin musi pi jan lili la, ni li suli pona tawa pilin ona.

tenpo ala la, jan Enwi li mu tan pilin musi. ona li pali mute a tan open pi tenpo suno tawa tenpo pimeja! ona li sona ala e pona musi. kule ma taso li lon ona kin, li lon linja suli lon sinpin ona, li lon len noka ona, li lon ale ona. pilin awen en pilin pali en pilin pi musi ala li lon lukin ona. tenpo lili taso la, ona li toki.

pilin musi pona pi jan Towesi li tan soweli Toto a! ona li awen e kule lon jan, li awen e jan tan kule ma lon poka ale. soweli Toto li kule ma ala. ona li pimeja pona, li lili pona. linja ona li suli, li pona lon suno. oko ona li lili pimeja, li suwi lon suno, li pona lon poka tu pi nena musi lili ona. ale pi tenpo suno la, soweli Toto li musi. jan Towesi li musi lon poka ona, li olin mute e ona.

taso tenpo suno ni la, ona tu li musi ala. jan Enwi li lon poka pi lupa tomo, li lukin e sewi lon pilin pi ike ken. kule sewi li kule pona ala. sewi li kama kule jaki sama kule ma. jan Towesi li lon lupa tomo, li jo awen e soweli Toto, li lukin e sewi kin. jan Me li telo e poki moku.

ona ale li kama kute e kon tawa tan ma weka lete. jan Enwi en jan Towesi li ken lukin e tawa pi kasi anpa linja tan kon tawa. tawa li anpa e kasi lon sin sike mute la, ni li lon open pi kon tawa wawa suli. jan li kama kute e mu kon tan ma seli kin, li lukin tawa ma weka seli la, tawa kasi li lon poka pi ma seli kin.

wawa la, jan Enwi li tawa sewi.

ona li toki kalama tawa jan olin ona: “jan Me o. kon wawa pi tawa sike li kama. mi wile awen e soweli la, mi tawa.” toki ni la, ona li tawa tomo pi soweli suli.

jan Me li weka e pali ona, li kama lon lupa. lukin lili taso la, ona li sona e ike kama.

ona li toki wawa: “jan Towesi o tawa wawa a! o tawa lupa awen a!”

soweli Toto li tawa weka tan luka pi jan Towesi, li tawa anpa pi supa lape. jan lili li lukin tawa ona. jan Me pi pilin ike li open e supa lon lupa awen, li tawa insa pi lupa pimeja ni kepeken nasin palisa. pini la, jan Towesi li kama jo e soweli Toto, li lukin kama tawa jan suli ona. ona li awen tawa lon insa tomo la, kalama wawa li kama tan kon. kon li kama e tawa a lon tomo! ni li wawa mute la, noka pi jan Towesi li ken ala awen. sin la, jan Towesi li anpa lon monsi ona.

ni la, nasa li kama.

tomo li tawa sike, li tawa sike, li tawa sike, li kama tawa sewi kin kepeken tenpo suli. tawa li kama awen pona la, tawa sewi li kama sama tawa pi ilo sewi tawa jan Towesi.

kon pi ma seli en kon pi ma lete li kama wan lon tomo la, tomo li kama insa awen a pi kon tawa sike! nasin pi kon tawa sike la, kon li tawa ala lon insa awen. taso wawa kon li lon poka tomo ale la, wawa li awen sewi e tomo lon sewi pi kon tawa. tomo li awen lon sewi ona la, kon li tawa e tomo, li tawa weka e tomo. jan li ken tawa e linja lawa kepeken wawa ala la, kon li tawa sama e tomo.

pimeja mute en mu ike wawa pi kon tawa li lon. taso tawa li ike ala e pilin pi jan Towesi. kon li tawa sike e tomo lon tenpo open la, kon li anpa nasa e sewi tomo, li sewi nasa e anpa tomo lon tenpo ante. tawa wawa ni li pini la, tawa li kama suwi tawa pilin pi jan Towesi.

soweli Toto li pilin pona ala tan ni. ona li tawa ale tomo, li tawa poka wan, li tawa poka ante, li mu wawa. taso jan Towesi li tawa ala, li awen, li wile lukin e ijo kama.

tenpo wan la, soweli Toto li kama lon supa lupa open lon anpa, li anpa lon lupa. open ni la, jan lili li pilin e ni: soweli li weka a! taso tenpo lili la, ona li kama lukin e nena kute wan lon lupa anpa. wawa kon li awen sewi e soweli, li ken ala e tawa anpa ona. jan lili li tawa lon supa anpa, li tawa lupa. ona li kama luka e nena kute pi soweli Toto. ona li sewi e soweli lon insa tomo. ni la, ona li pini e supa lupa, li pini e ken pakala pi tenpo kama.

tenpo li tawa, li tawa. awen la, ike li kama weka tan pilin pi jan Towesi. taso ona li pilin pi wan taso a! kin la, kon li mu wawa lon poka ale, li ike tawa kute ona. tenpo open la, ona li kama pilin e ni: tomo li kama anpa wawa la, jan lili li kama ala kama pakala? taso tenpo li awen tawa la, ike ala li kama. ni la, jan li pini e pilin ike ona. ona li wile awen kepeken pilin ike wawa ala, li wile awen tawa ijo pi tenpo kama. pini la, ona li tawa lon supa anpa pi tawa nasa, li kama lon supa lape. soweli Toto li tawa poka ona.

tomo li awen tawa nasa. kon tawa li awen mu. taso tenpo lili la, jan Towesi li pini e oko ona, li kama lape a!
])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(2)]) #v(-10pt) #text(font: "Oz'sWizard", [tenpo kulupu lon kulupu Mankin])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[lape] jan li kama pini tan tawa a! tawa li suli, li wawa pi tenpo lili la, ni li ken pakala e jan pi supa lape ala. pona la, jan Towesi li lon supa lape, li kama ala pakala. tawa la, ona li kama wile moku e kon, li wile sona e kama. kin la, soweli Toto li pana e nena lete ona tawa sinpin pi jan ona, li mu lili e pilin ike. jan Towesi li tawa sewi tan supa. ona li kama lukin e ante lon tomo. tawa li lon ala. sama la, pimeja li lon ala. suno walo li kama tan lupa poka, li suno ale e tomo. jan li tawa tan supa, li wile tawa tan tomo. soweli Toto li tawa lon poka pi noka ona. jan lili li open e lupa.

ona li mu tan lukin sin tan wawa pilin. ona li lukin lon poka ale. pona nasa li tawa lukin la, oko ona li kama suli, li kama suli.

kon tawa wawa li anpa e tomo tawa ma lon nasin pona. lon la, nasin pi kon wawa li ken ala nasin suwi. ma sin li pona mute a tawa lukin! laso pona pi kasi anpa li lon mute. kasi suli kiwen li lon, li jo e kili pi moku lukin a! kasi kule suwi mute li kulupu lon poka ale. waso pi len suno nasa pona li mu lon kasi awen, li mu lon kasi suli. poka wan pi weka lili la, telo lili li tawa wawa, li pona lon suno lon insa pi laso kasi. jan lili li tan ma supa pi kule weka, li tan ma supa pi weka telo la, telo li mu pona tawa kute ona.

ona li awen lon ma pona nasa, li pilin pona tan lukin. ona li awen lukin la, ona li kama lukin e jan pi nasa mute. ona li kama ala lukin e jan pi nasa sama lon tenpo pini. jan sin li suli ala sama jan suli pi sona ona. taso ona li lili mute ala kin. lon la, ona li ken sama suli pi jan Towesi. jan Towesi li suli pona lon ale pi tenpo ona. taso lukin la, jan nasa li sama ala tenpo ona, li suli lon tenpo a!

jan tu wan li mije. jan wan li meli. ona ale li jo e len nasa. len lawa ona li sike, li nena, li kama lili lon sewi, li jo e poki kalama lili lon selo. poki kalama li mu suwi lili lon tawa. len lawa pi jan mije li laso sama kule pi sewi pona. len lawa pi jan meli li walo. jan meli li jo e len sijelo suli walo. sijelo sewi en noka la, selo len li namako lili suwi, li jo e mun lili. mun len li suno sama kiwen mani lon suno. len pi jan mije li laso sama len lawa ona. len noka ona li pona pi weka jaki, li jo e selo laso lon sewi. pilin pi jan Towesi la, jan mije li suli tenpo sama jan Enwi tan ni: ona tu wan la, linja li lon sinpin pi ona tu. taso jan mije li suli tenpo la, jan meli li suli tenpo mute. sinpin ona la, lupa linja lili mute li lon selo. linja lawa ona li kama walo a! ona li tawa la, tawa li wile e wawa.

jan ale ni li kama tawa tomo lon jan Towesi lon poka pi lupa tomo la, ona li pini e tawa, li awen, li toki kulupu pi kalama lili. ken la, ona li pilin wawa ala, li jo ala e wile wawa lon kama tawa. taso jan meli li kama tawa jan Towesi, li anpa suwi suli, li toki pi kalama suwi:

“jan sewi pi wawa nasa o. kama pona lon ma pi kulupu Mankin. sina moli e jan ike Laso pi wawa nasa. sina pini e lawa ike ona lon kulupu mi. ni la, mi pilin pona suli a tawa sina!”

toki ni li nasa tawa kute pi jan Towesi. jan meli lili ni li toki e jan Towesi la, ona li nimi e jan pi wawa nasa tan seme? toki sama la, jan Towesi li moli e jan Laso pi wawa nasa anu seme a!? jan Towesi li jan lili taso. ona li jan pona. ona li jan sin lon ma ni tan tawa pi kon wawa. ona li moli e ijo lon tenpo ala a!

taso lukin la, jan meli li wile e toki tan ona. ni la, jan Towesi li toki kepeken wawa sona: “sina toki pona a! taso pakala lili li lon. mi moli ala e ijo.”

jan meli li toki sin pi pilin musi: “a- tomo sina li moli ni. ni li sama. o lukin a!” ona li nasin e lukin tawa selo tomo, li awen toki: “noka jan tu li lon ni, li awen lon anpa pi kiwen ni.”

jan Towesi li lukin la, ona li mu wawa lili pi pilin ike. lon la, tomo li awen lon palisa kiwen awen la, noka tu li lon selo anpa ona, li jo e len noka suno. len noka li kama nena lili musi lon sinpin.

jan Towesi li wan e luka ona, li kalama e pilin ike ona: “ike a! ike a! lukin la, tomo li kama anpa pakala lon ona. mi o pali seme?”

jan meli li toki pi pilin awen: “pali ala li ken.”

jan Towesi li wile sona: “taso ona li jan seme?”

jan meli li pana e sona: “mi toki e ni lon tenpo pini lili. ona li jan Laso pi wawa nasa. tenpo sike mute la, ona li anpa e kulupu, li kama e pali tan kulupu mi lon tenpo suno lon tenpo pimeja kin. tenpo ni la, ike ni li weka. ale pi kulupu Mankin li pilin pona tan pona sina.”

jan Towesi li toki: “kulupu Mankin li seme?”

“ona li jan pi ma ni. jan Laso pi wawa nasa li lawa e ona lon tenpo pini.”

jan Towesi li toki kin: “sina lon ala lon kulupu Mankin?”

“ala. taso mi jan pona ona. a- taso tomo mi li lon ma Unu. jan pi kulupu Mankin li kama lukin e moli pi jan ike la, jan toki li kama tawa mi. ni la, mi kama kepeken tenpo lili. mi jan Unu pi wawa nasa.”

jan Towesi li kalama: “seme a!? sina jan lon pi wawa nasa anu seme?”

jan meli li pana e toki: “jan. taso mi jan pona a pi wawa nasa! kulupu li olin e mi. wawa mi li suli ala sama jan ike lawa pini pi ma ni. wawa mi pi suli ante la, mi kin li kama weka e ike tan kulupu.”

jan Towesi li toki lon pilin ike tan jan poka pi wawa nasa: “taso pilin mi la, jan ale pi wawa nasa li ike. ni li lon ala anu seme?” “a – lon ala. ni li ken pakala suli lon sona. ale pi ma Osawi la, jan tu tu taso pi wawa nasa li lon. jan ni tu li lon ma Unu, li lon ma Loje, li jan pona a pi wawa nasa! mi sona e pona ona tan ni. mi jan wan lon ona tu la, sona mi li ken ala pakala. ma Laso en ma Jelo la, jan pi wawa nasa li jan ike a! taso sina moli e jan wan lon ona tu la, jan ike wan taso pi wawa nasa li lon ma Osawi. ona wan li lon ma Jelo.”

jan Towesi li pilin insa lon tenpo lili. ni la, ona li toki: “taso jan Me li toki e ni tawa mi. jan ale pi wawa nasa li moli lon tenpo pini suli a!”

jan meli li wile sona: “jan Me li jan seme?”

“ona li jan suli mi lon ma Kansa. mi kama tan ma Kansa.”

lukin la, jan meli Unu pi wawa nasa li pilin insa lon tenpo. lawa ona li anpa. oko ona li tawa ma anpa. ni la, ona li kama sewi e lukin, li toki: “mi kama ala kute e nimi pi ma Kansa la, mi sona ala e ni: ma Kansa li lon seme? taso o toki. ma sina li jo e ilo mute, e jan mute anu seme?”

jan Towesi li pana e toki: “jo.”

“a- ni li kama e nasin ni. pilin mi la, ni li lon. ma li ma pi ilo mute, li ma pi jan mute la, ni li kama e jan ala a pi wawa nasa! taso o sona. ma Osawi li weka tan ma suli la, ma Osawi li kama ala ma pi ilo mute, li kama ala ma pi jan mute. ni la, jan pi wawa nasa li awen lon ma mi.”

jan Towesi li toki: “jan ante pi wawa nasa li jan seme?”

jan pi wawa nasa li toki: “jan Osawi a li jan suli pi wawa nasa!” ona li lili mute e wawa kalama ona: “wawa ona li wawa suli. jan ante ale pi wawa nasa li wan e wawa la, wawa pi jan Osawi li suli kin. ona li lon ma tomo pi kiwen suno laso.”

jan Towesi li wile sona e ijo ante. taso jan pi kulupu Mankin li kalama ala lon tenpo toki la, ona li kama kalama wawa lon tenpo. ona li wile nasin e lukin tawa selo tomo tawa jan moli pi wawa nasa.

jan pi wawa nasa li wile sona: “seme li lon?” ona li lukin la, ona li kama mu tan pilin pona. noka pi jan ike moli li kama lon ala. len noka suno taso li awen.

jan Unu pi wawa nasa li pana e sona: “tenpo ona li suli mute la, suno li weka seli e telo ona, e ale ona. ni li pini ona. taso len noka li len sina. sina o pana e len ona tawa noka sina.” ona li jo e len noka tan anpa. ona li tawa mute e len. tawa li weka e ko ma tan len. ona li pana e len tawa jan Towesi.

jan wan pi kulupu Mankin li toki: “jan Laso pi wawa nasa la, len noka suno ni li suli mute tawa pilin. sona la, wawa nasa li lon len. taso mi ale li sona ala e ni. wawa nasa ni li seme?”

jan Towesi li tawa tomo, li pana e len noka tawa supa. ona li kama sin tan tomo tawa kulupu Mankin lili la, ona li toki:

“mi wile tawa jan suli tu mi a! pilin mi la, ona li pilin ike tan ni: ona li sona ala e awen mi. sina ken ala ken pana e nasin tawa mi?”

open la, jan pi kulupu Mankin en jan pi wawa nasa li lukin e jan poka ona. ni la, ona li lukin e jan Towesi. pini la, ona li tawa e lawa ona tan poka tawa poka.

jan wan li toki: “sina lon ma Laso. sina tawa pini pi nasin suno tawa la, ma seli pi weka telo a li lon! jan ala li ken tawa poka ante ona tan moli.”

jan ante li toki: “sama li lon ni: mun lili wan li wawa, li awen sewi la, mun ni li mun nasin. sina tawa weka tan mun nasin la, sina kama tawa ma Loje. ma Loje li loje, li ma pi kulupu Kalin. mi sona e ma seli ike lon selo ona tan lukin mi.”

jan nanpa tu wan li toki: “sina tawa open pi nasin suno tawa la, sama li lon. mi sona tan kute toki. ma Jelo la, kulupu Winki li lon, li anpa tan jan ike Jelo pi wawa nasa. sina tawa ona la, ona li kama anpa e sina kin, li wile kama e pali tan sina.”

jan meli li toki: “sona sina la, mun lili wawa li awen sewi lon sewi pimeja. sina tawa mun nasin ni la, sina kama tawa ma pi tomo mi. ma mi Unu li loje laso, li ma pi kulupu Kilikin. ma seli ike li lon selo ona kin, li lon selo ale pi ma Osawi. ike la, sina ken awen lon poka pi mi ale taso.”

ni la, jan Towesi li open e mu pi pilin ike tan pilin pi wan taso lon poka pi jan nasa ni. oko ona li pana e telo la, jan pona pi kulupu Mankin li kama pilin sama a! lukin la, ona li kama e len pi weka jaki, li pana e telo tan oko kin. taso jan meli li weka e len lawa tan lawa ona. ona li pana e sewi len pi lili nena lon nena pi sinpin ona. ona li toki e nanpa kepeken kalama pi pilin awen: “wan en tu en tu wan.” tan ni la, len lawa li kama supa a! sitelen walo suli pi kiwen sitelen walo li toki lon supa ni:

“O KEN E JAN TOWESI TAWA MA TOMO PI KIWEN SUNO LASO”

jan meli li kama e supa tan nena ona, li lukin e nimi ni. ona li wile sona: “jan pona o. sina jan Towesi anu seme?”

“jan.” jan ni pi pilin ike li sewi e lukin, li weka e telo tan oko.

“ni la, sina wile tawa ma tomo pi suno laso. ken la, jan Osawi li ken pona e nasin tawa sina.”

jan Towesi li wile sona: “ma tomo ni li lon seme?”

“ona li lon insa taso pi ma suli ni. jan Osawi pi toki pini mi li jan suli pi wawa nasa, li lawa e ona.”

jan Towesi li awen pilin pona ala: “ona li jan pona anu seme?”

“ona li jan pi wawa nasa la, ona li jan suli. wawa nasa ona li wawa pi pona mute. taso mi lon ala poka ona lon tenpo ale la, mi sona ala e ni: ona li jan pi pona mute anu seme?”

jan Towesi li wile sona: “mi ken tawa ni kepeken nasin seme?”

“sina wile kepeken noka. tawa li suli, li lon ma pi ken pona, li lon ma pi ken ike. taso mi kepeken wawa sona ale mi tawa awen sina pi ike ala.”

jan Towesi li kama pilin pona lon poka pi jan meli taso, li toki tan wile: “sina tawa ala lon poka mi anu seme?”

jan meli li toki kin: “a- mi ken ala. taso mi uta e sina. jan Unu pi wawa nasa li uta e jan la, jan ante ala li ken pakala e jan ni.”

ona li kama lon poka pi jan Towesi, li uta suwi e sewi sinpin pi jan Towesi. tenpo kama lili la, jan Towesi li kama sona e ni: sitelen sike lili suno li awen lon selo pi tenpo uta pini.

jan pi wawa nasa li toki: “nasin li nasin pi kiwen jelo tawa ma tomo pi suno laso. ni la, sina ken awen sona lon ona. sina tawa jan Osawi la, o pilin ike ala. taso o toki e kama ale sina. o toki e wile sina tawa ona. tawa pona; jan pona mi o.”

jan tu wan pi kulupu Mankin li tawa anpa suwi e sijelo ona tawa jan Towesi, li toki e wile pona lon tawa ona. ni la, jan ni pi len laso li tawa weka lon kasi suli. jan pi wawa nasa li pana e sinpin pona tawa jan Towesi. ona li tawa sike lon noka wan, li tawa sike, li tawa sike la, ona li weka a! ni li nasa mute e soweli lili Toto la, ona li mu wawa mute tawa ona weka. tenpo pi weka ona ala la, soweli Toto li lili pilin. ona li wile ala pana e mu, e mu lili kin lon poka pi jan wawa.

jan Towesi li sona e jan pi wawa nasa, e lon pi wawa nasa la, nasin weka pi jan wawa li nasa ala a tawa ona!

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(3)]) #v(-10pt) #text(font: "Oz'sWizard", [jan Towesi li awen e jan pi kasi insa])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] ala li lon poka pi jan Towesi. ona li kama pilin e wile moku. ni la, ona li tawa supa poki, li kama e pan lili tan pan, li ko jelo e pan lili. ona li pana e pan tawa soweli Toto kin. ona li tawa e poki suli tan supa, li tawa e poki tawa telo lili lon poka tomo. ona li insa e telo pona lon poki. soweli Toto li tawa kasi suli, li mu tawa waso pi kasi ni. jan Towesi li tawa ona, li wile jo e ona, li kama lukin e kili pona a lon kasi! ona li alasa e kili la, ona li jo e kili pona tawa moku ona lon open ni pi tenpo suno.

ni la, ona li kama sin tawa tomo. moku pini ona en telo pona pini pi soweli Toto la, ona li wile open e pali tawa ma tomo pi suno laso.

len ante wan taso pi jan Towesi li lon. taso pona la, len ni li jaki ala, li awen lon poka pi supa lape ona. linja laso mute li tawa nasin wan lon len. linja walo mute li tawa nasin ante lon len. jan li telo e len lon tenpo mute la, laso len li kama weka lili. taso len li awen pona tawa lukin. jan lili li telo pona e sijelo ona, li kama kepeken len laso walo. ona li pana e len lawa selo pi loje walo tawa lawa ona. ona li kama jo e poki suwi, li insa e pan tan supa poki, li selo e poki kepeken len lili walo. ni la, ona li lukin e noka, li lukin e tenpo pi len noka, e jaki pi len noka.

ona li toki: “ni li pona ala lon tawa suli; soweli Toto o.” soweli Toto li lukin e sinpin ona lon sewi kepeken oko pimeja lili. soweli li wile toki e sona tan toki pi jan ona la, ona li tawa pilin e palisa monsi ona.

tenpo ni la, jan Towesi li kama lukin e len noka suno pi jan ike pini lon supa.

ona li toki tawa soweli Toto: “a; mi wile sona. ona li pona ala pona lon noka mi? lukin la, ona li pona a lon tawa suli, li ken ala kama pakala!”

ona li weka e len jaki ona, li lukin kepeken len suno. len sin li pona mute lon noka ona, li suli sama selo pi noka ona.

pini la, ona li kama jo sin e poki.

ona li toki: “soweli Toto o kama. mi tawa ma tomo pi kiwen suno laso. mi kama toki tawa jan Osawi suli tan nasin pi ma Kansa.”

ona li pini e lupa, li awen e pini kepeken ilo awen. ona li pana e ilo open lon poki lon insa pi len ona. ni la, ona li open e tawa suli. poki monsi ona la, soweli Toto li tawa kepeken nasin musi ala.

nasin mute li lon poka. taso jan Towesi li sona lukin e nasin pi kiwen jelo kepeken tenpo lili. lon tenpo lili la, ona li kama tawa kepeken wawa pona, li tawa ma pi kiwen laso. len noka ona li suno walo lili e nasin pi kiwen jelo. suno sewi li suno wawa. waso li mu suwi. sona la, jan lili li ken pilin ike mute tan weka pi ma ona lon ma pi sona ala ona kepeken tenpo nasa. taso jan Towesi li pilin ike ni ala.

ma ale li pona a tawa lukin ona la, ni li musi suwi tawa ona! ona li sona ala e suwi ma lon tenpo pini, li kama sona. palisa mute pona li sinpin e selo nasin, li laso suwi. poka pi sinpin palisa la, ma pi pan mute en ma pi kili mute li lon. lukin la, jan pi kulupu Mankin li jan wawa pi pali ma, li ken kama e pan suli. tenpo la, jan Towesi li kama lon poka tomo. jan li kama tan tomo, li lukin e ona, li anpa suwi e sijelo ona. ona ale li sona e moli pi jan ike, e pona ni pi jan Towesi. ona ale li pilin pona tan ni. tomo ale pi kulupu Mankin li tomo nasa tawa lukin. tomo ale li selo sike, li sike lon sewi. kule tomo li laso sama kule pi sewi pona. ma Laso la, laso li kule pona tawa jan.

suno li kama anpa la, jan Towesi li kama pilin lape tan tawa suli, li wile sona e ma pona lon lape. ona li kama lon tomo. tomo ni li suli lon tomo ante ale. poka tomo sinpin la, jan mute li tawa musi lon laso pi kasi anpa. jan luka li kalama wawa a kepeken ilo pi kalama musi! kulupu li mu tan pilin musi, li kalama e musi. supa moku suli li lon poka, li jo e kili pi pona moku, e pan suwi, e moku pona ante.

jan pi kulupu ni li toki pona tawa jan Towesi. kulupu li ken e kama lon tenpo moku, li wile awen e ona lon tenpo pimeja. tomo ni li tomo pi jan mani. kulupu Mankin la, ona li jan pi mani mute. jan pona pi jan mani li kama kulupu lon ona, li wile musi tan weka pi jan ike lawa.

jan Towesi li moku e moku pi suli pona. jan mani a li pana e moku tawa ona sama jan pali! jan mani li jan Po. pini moku la, jan Towesi li lape e monsi ona lon supa monsi ko pona, li lukin e tawa musi jan.

jan Po li kama lukin e len noka suno ona la, ona li toki: “sina jan suli pi wawa nasa.”

jan lili li wile sona: “sina toki e ni tan seme?”

“sina jo e len noka suno. sina moli e jan ike pi wawa nasa. kin la, walo li lon len sijelo sina. jan taso pi wawa nasa li jo e len walo.”

jan Towesi li nasin e len ona, li toki: “len mi li walo, li laso.”

jan Po li toki: “ni la, sina kepeken nasin pona. laso li kule tawa kulupu Mankin. walo li kule tawa jan pi wawa nasa. tan kule la, mi ale li sona e ni: sina jan pona a pi wawa nasa!”

jan Towesi li sona ala toki e ijo pona tawa ni. pilin pi jan ale la, ona li jan pi wawa nasa. taso sona pona ona la, ona li jan lili taso. ona li wawa nasa ala. ona li kama lon ma ni tan pakala taso pi kon tawa wawa.

ona li awen lukin e tawa musi la, ona li kama lape. ni la, jan Po li nasin e ona lon insa tomo. ona li tawa tomo lape pi supa lape suwi. len pi supa lape li laso. jan Towesi li lape wawa lon ni lon ale pi tenpo pimeja. soweli Toto li lili sike awen e sijelo ona lon len laso pi supa ma lon poka pi jan ona.

open pi tenpo suno la, ona li moku e moku pi suli pona, li lukin e jan sin lili pi kulupu Mankin. jan sin li musi kepeken soweli Toto, li luka e palisa monsi soweli. jan sin li mu a la, nasin mu ni li musi mute tawa jan Towesi! soweli Toto li nasa pona sin tawa jan ale. soweli sama li kama ala lon lukin jan lon tenpo pini.

jan Towesi li wile sona: “ma tomo pi kiwen suno laso li weka pi suli seme?”

jan Po li toki pi musi ala: “mi lon ma tomo lon tenpo ala la, mi sona ala. jan li wile ala e ijo tan jan Osawi la, ona o awen weka tan jan Osawi. taso nasin li suli tawa ma tomo pi kiwen suno laso. sina wile e tenpo suno mute. ma ni li jo e ijo pona mute, li pona tawa pilin. taso sina wile awen tawa lon nasin la, sina wile tawa ma ike.”

ni li ike lili e pilin pi jan Towesi. taso sona ona la, jan Osawi suli taso li ken nasin e ona tawa ma Kansa. ni la, ona li wawa e wile ona, li kama wile ala tawa nasin ante.

ona li toki e weka tawa jan pona sin ona, li open sin e tawa lon nasin pi kiwen jelo. ona li tawa lon tenpo mute la, ona li kama pilin e wile pi pini tawa. ni la, ona li tawa sewi lon sinpin palisa lon poka nasin, li awen lon palisa pi sinpin ni. ma pan suli li lon poka sinpin ante. weka lili la, ona li kama lukin e ijo len wan lon insa pi ma pan. ijo li kepeken len sama jan, li lon sewi pi palisa wan. ijo li wile pana e pilin ike tawa waso, li wile weka e waso tan pan.

jan Towesi li lape e lawa ona lon luka ona. ona li lukin e ijo ni, li pilin insa. sewi ijo la, poki len li sama lawa. lawa li jo e linja kasi lon insa. poki lawa len li jo e sitelen oko, e sitelen nena, e sitelen uta la, ni li sama sinpin. len lawa laso pi tenpo mute li lon lawa, li kama nena lili lon sewi, li tan jan pi kulupu Mankin. sijelo ijo li jo e len laso kin pi tenpo mute. kule len en pona li kama weka tan tenpo. len sijelo kin li jo e linja kasi lon insa. anpa ijo la, len noka li lon. selo laso li lon sewi pi len noka. len ni li nasin jan pi ma ni. palisa awen li lon monsi la, ijo pi kasi insa li lon sewi pan: selo ijo li len; kasi linja li lon insa ijo.

jan Towesi li lukin e sinpin sitelen nasa lon ijo pi kasi insa la, nasa wawa li kama lon pilin ona: oko sinpin li kama pini musi lili tawa jan Towesi. ma Kansa la, ijo pi kasi insa li pini musi lili e oko lon tenpo ala a! ni la, pakala li lon ala lon lukin pi jan Towesi? taso lon la, ijo ni li tawa e lawa ona. tawa ni li sama wile toki tawa jan Towesi. ni la, jan Towesi li tawa anpa tan palisa sinpin, li tawa ijo. soweli Toto li tawa sike lon poka ale pi palisa ijo, li mu wawa.

ijo pi kasi insa li jan a pi kasi insa! sama kalama pi telo ala la, ona li toki: “toki.”

jan Towesi li wile sona: “toki li kama ala kama tan sina?”

jan pi selo len li toki: “kama a! sina pilin seme?”

jan lili li wile kepeken nasin pona, li toki: “mi pilin pona. sina wile sona e ni la, sina pona. sina pilin seme?”

jan kasi la, sinpin li sama pilin pona: “mi pilin pona ala tan ni: mi awen lon palisa ni lon tenpo suno ale lon tenpo pimeja ale. mi awen weka e waso. ni li musi ala.”

jan Towesi li toki: “sina ken ala tawa anpa anu seme?”

“mi ken ala tan ni. palisa ni li awen lon monsi mi. sina weka e palisa la, mi pilin pona mute a tan pona sina!”

jan Towesi li tawa sewi e luka ona, li kama weka e jan tan palisa. jan li jo e linja kasi taso lon insa la, ni li wile ala e pali mute.

jan pi palisa ala li kama lon ma la, ona li toki: “pona sina li pona e mi a! mi pilin sama mi pi tenpo sin.”

jan pi kasi insa li ken toki. ona li ken anpa suwi e sijelo tawa jan Towesi. ona li ken tawa lon poka pi jan Towesi. jan Towesi li lukin e ni ale la, ni li nasa tawa jan Towesi.

jan kasi li suli pona e luka ona tan pini lape, li pana e mu pona tan pini lape. ona li wile sona: “sina jan seme? a- kin la, mi tu li tawa seme?”

jan lili li toki: “mi jan Towesi. mi tawa ma tomo pi kiwen suno laso. mi wile toki tawa jan Osawi suli. mi wile e ni: wawa ona la, mi ken kama sin lon ma Kansa.”

jan kasi pi selo len li wile sona: “ma tomo pi kiwen suno laso li lon seme? a- jan Osawi li jan seme?”

sin ni li nasa lili tawa jan lili: “a- sina sona ala e ni anu seme?”

jan pi selo len li toki kepeken pilin anpa ike: “sona ala a! mi sona e ijo ala. sina sona la, kasi taso li lon insa mi. ni la, pona ala li lon insa pi lawa mi.”

jan Towesi li toki: “a! ike li lon sina la, mi sona e pilin ike sina.”

jan suli pi kasi insa li kama wile sona kin: “pilin sina la, ni li ken ala ken: mi tawa ma tomo pi kiwen laso lon poka sina la, jan Osawi li pana e pona tawa insa pi lawa mi.”

jan lili li toki: “mi sona ala. taso sina wile la, sina ken tawa lon poka. jan Osawi li pana ala e pona tawa lawa sina la, ni li kama ala e ike sin.”

jan suli li toki: “ni li lon.” ona li awen toki: “a! o pilin e sona ni: luka mi en noka mi en sijelo mi li jo e kasi lon insa la, ni li ike ala tawa mi. mi ken ala kama pakala tan ni. jan li tawa e noka ona lon noka mi la, ni li suli ala. jan li insa e palisa lili lon sijelo mi la, ni li suli ala. mi ken ala pilin e ni. taso mi ken pilin e ike ante. mi jo e pona ala, e kasi taso lon insa lawa la, jan li ken toki ike e insa pi lawa mi. ni li ike tawa mi. lawa mi li awen jo e kasi taso, li jo ala e pona sama lawa sina la, mi ken kama sona a kepeken seme!?”

jan lili li toki: “mi sona e pilin sina.” ona li pilin e pilin ike pi jan ante a! “sina kama lon poka mi la, mi toki e wile pona sina tawa jan Osawi.”

jan suli kasi li toki e pilin pona: “ni li pona e pilin mi.”

ona tu li tawa nasin. jan Towesi li kama ken e jan kasi lon sewi sinpin. ona li open e tawa lon nasin pi kiwen jelo, li tawa ma tomo pi suno laso.

open la, jan poka sin li pona ala tawa soweli Toto. ona li pilin e kon pi jan sin kepeken nena. ken la, ona li wile ken alasa e soweli lili lon insa pi kasi jan. tenpo mute la, ona li mu lili e pilin ike tawa jan pi kasi insa.

jan Towesi li toki tawa jan pona sin: “o pilin ike ala tan soweli Toto. ona li utala uta ala.”

jan kasi li toki: “a- mi pilin ike ala. ona li ken ala pana e pilin pakala tawa kasi insa. o pana e poki sina tawa mi. mi ken awen jo e ona. ni li ike ala tawa mi. mi ken ala kama pilin lape.” ona li awen tawa la, ona li toki sin: “mi ken pana e sona sin tawa sina. jan ala li sona e ni. ijo wan taso li pana e pilin ike tawa mi.”

jan Towesi li toki: “a- ni li seme? jan pali sina tan kulupu Mankin anu seme?”

jan kasi li pana e toki: “ala. ilo pi pana seli.”

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(4)]) #v(-10pt) #text(font: "Oz'sWizard", [nasin li tawa ma pi kasi suli])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[tenpo] kama suli la, nasin li kama pona ala. nasin li wile e pali tan jan tawa. jan pi selo len la, noka li kama tawa pakala tan kiwen jelo. kiwen jelo li supa ala a! lon la, kiwen li pakala lon poka wan, li weka lon poka ante. lupa pi kiwen weka la, soweli Toto li tawa sewi lupa. jan Towesi li tawa sike lon selo lupa. jan pi kasi insa li jo ala e pona lon lawa la, ona li tawa sinpin taso. ona li kama noka lon lupa la, ona li kama anpa pakala lon kiwen nasin. taso ni li pana ala e pilin pakala tawa ona. ni li kama la, jan Towesi li sewi e ona lon noka ona. jan kasi li kama awen tawa lon poka pi jan Towesi. ona li mu e pilin musi ona tan pakala ona.

ona tu wan li awen tawa la, ma pan en tomo pan li kama ante. pona ma li kama lili. tomo li kama mute lili. kasi kili kin li kama mute lili. awen la, ma li kama ike, li kama jo e ijo mute ala.

insa pi tenpo suno la, ona tu li lape lili lon poka nasin. ona li awen lon poka pi telo tawa lili. jan Towesi li open e poki moku ona, li jo e pan. ona li wile pana e pan lili tawa jan pi kasi insa. taso jan kasi li wile ala.

ona li toki: “mi wile ala moku lon tenpo ale. ni li pona. uta mi li sitelen taso. mi wile insa e moku la, mi ken lupa e uta mi. taso ni la, linja kasi li ken kama weka tan insa mi. weka ni li ike e selo pi lawa mi.”

ni li sona pona tawa jan Towesi. ona li toki ala, li anpa e lawa, li sewi e lawa. ona li awen moku e pan ona.

jan Towesi li pini e moku la, jan pi kasi insa li wile sona: “o toki e sina, e ma sina.” jan Towesi li toki e sona ale ona pi ma Kansa. ona li toki e ale pi kule ma, e tawa nasa pi kon wawa, e kama ona pi ma nasa Osawi.

jan pi kasi insa li kute pona. ona li toki: “mi sona ala e ni: sina wile weka tan ma pona ni tan seme? sina wile tawa ma Kansa pi kule ma taso tan seme?”

jan lili li toki: “sona sina li ala tan ijo wan taso: lawa sina li jo ala e pona lon insa. ken la, ma li ike, li kule ma taso, li jo ala e telo. taso jan pi sijelo insa li wile awen lon ma ona, li wile ala awen lon ma ante. ma ante li pona mute kin la, jan li wile tawa ma ona taso. ma ona taso li pona tawa ona.”

jan pi kasi insa li pana e mu pilin.

ona li toki: “lon la, mi ken ala sona e nasin ni. lawa pi jan ale li jo e kasi lon insa sama mi la, ona li ken wile awen lon ma pi pona lukin. ni la, ma Kansa li kama jo e jan ala a! taso pona li lon insa pi lawa jan. ni li pona tawa ma Kansa.”

jan lili li toki: “mi tu li awen lape la, sina ken ala ken pana e toki musi tawa mi?”

jan pi kasi insa li lukin e jan lili lon pilin ike lili, li toki:

“tenpo mi li lili mute la, sona mi li lili mute. tenpo suno pini tu taso la, mi kama lon. ijo li lon tenpo pi pini mute la, mi ken ala sona. pona la, jan pali mi li sitelen e kute mi lon open pali pi lawa mi. ni la, mi kama ken kute. jan ante pi kulupu Mankin li lon. kute mi pi tenpo open li kalama tan jan pali mi. ‘kute sitelen ni li pona ala pona tawa sina’?

jan ante li toki. ‘sewi pi kute wan li sama ala sewi pi kute ante’.

jan pali li toki. ‘ni li suli ala. ona li kute la, ona li kute’. a! toki ni li lon.

jan pi pali pan li toki. ‘mi kama sitelen e oko’. ni la, ona li sitelen e oko wan mi. ni li pini la, mi kama lukin e jan pali, e ijo ante. ni li open pi lukin mi la, mi lukin e ijo ale kepeken wile sona a!

jan ante li lukin e pali, li toki. ‘oko ni li pona tawa lukin. laso li kule pona tawa oko’.

jan pali li toki. ‘pilin mi la, oko ante o suli’. oko nanpa tu li pini la, mi kama ken lukin pi pona mute. ni la, ona li pali e nena mi, e uta mi. taso mi sona ala e pona uta la, mi toki ala lon tenpo ni. musi la, mi kama lukin e pali pi sijelo mi, e pali pi luka mi, e pali pi noka mi. jan ni tu li pana e lawa mi tawa sijelo mi la, mi pilin wawa tan ni: mi jan sama jan ante ale.

jan pali li toki. ‘a! ona li kama pana e pilin ike wawa tawa waso. ona li sama jan tawa lukin’.

jan ante li toki. ‘ni li lon. pilin la, ona li jan’. mi pilin sama. jan pali li jo e mi lon anpa luka ona, li kama e mi lon ma pan. ona li pana e mi lon palisa suli. palisa ni la, sina kama tawa mi. jan pali en jan pona ona li tawa lon tenpo lili la, mi wan taso.

mi lon poka pi jan ala la, ni li ike tawa mi. ni la, mi wile tawa jan ni tu. taso noka mi li kama ala lon ma. palisa li awen e mi. awen ni li awen ike pi jan wan taso. mi lon tenpo lili taso la, ijo ala li lon pilin mi. waso mute li tawa ma pan. taso ona li kama lukin e mi la, ona li kama pilin e ni: mi jan pi kulupu Mankin. ni la, ona li tawa weka. ni li pona tawa mi. pilin mi la, mi jan suli a! tenpo li tawa la, waso pimeja pi suli tenpo li tawa poka mi, li lukin e mi kepeken lukin pona. ni la, ona li tawa sijelo mi lon poka pi lawa mi. ona li toki:

‘jan pali pan li wile ike e pilin mi kepeken sina anu seme? musi pakala. waso sona ale li ken sona e insa sina pi kasi taso tan lukin’. ni la, ona li tawa anpa lon poka pi noka mi. ona li moku e pan lon wile ona. waso ante li kama lukin e lon mi pi ike ala la, ona ale li kama, li moku kin. tenpo lili la, kulupu waso suli li lon poka mi.

‘ni li anpa e pilin mi. lukin la, mi pali pona ala. taso waso pimeja suli li toki e pilin pona tawa mi. ‘a pona li lon insa pi lawa sina la, sina ken jan pona sama jan ante! lon la, sina ken jan pi pona mute a! pona li lon insa lawa la, ni taso li suli lon ma ale. jan la, ni li lon. waso kin la, ni li lon’.

waso ale li tawa la, mi awen e toki ni lon pilin mi. mi kama wile e pona lon insa pi lawa mi. pona suli la, sina kama. sina weka e mi tan palisa awen. tan toki sina la, mi pilin e ni: mi kama lon ma tomo pi suno laso la, jan Osawi suli li ken pana e pona tawa insa pi lawa mi.”

jan Towesi li toki pi wile pona: “a- ni li lon wile mi. kute la, wile wawa li lon pilin sina.”

jan pi selo len li toki sin: “lon a! wile wawa li lon. mi sona lili la, mi pilin pona ala. mi wile ala awen ni. mi wile ante mute.”

jan lili li toki: “ni la, mi o tawa.” ona li pana e poki moku tawa jan kasi.

tawa sin la, sinpin ala li lon poka nasin. nena mute li kama lon ma. jan ala li pali lon ma poka ni la, ma li ma pi pali ala. pini pi tenpo suno la, jan Towesi en jan kasi li kama lon ma pi kasi suli. kasi li suli mute, li poka e kasi ante la, palisa pi kasi mute li wan lon sewi pi nasin jelo. palisa li len e suno la, anpa kasi li pimeja. taso jan tawa li awen tawa, li tawa insa pi ma kasi.

jan pi kasi insa li toki: “nasin li ken tawa insa la, nasin li ken tawa weka kin. ma tomo pi kiwen suno laso li lon pini nasin la, mi o awen lon nasin.”

jan Towesi li toki: “jan ale li ken sona e ni.”

jan kasi li toki kin: “lon. tan ni la, mi kin li sona. sona ni li wile e pona tan insa lawa la, mi kama ala toki e ona.”

tenpo li awen tawa la, suno li kama weka. jan tu li lukin tawa lon pimeja. jan Towesi li ken ala lukin a! taso soweli Toto li ken. soweli mute la, lukin pona li awen lon pimeja. toki pi jan kasi la, ona kin li ken lukin pona sama lukin pi tenpo suno. jan Towesi li luka e luka pi jan kasi la, ona li ken tawa pona.

jan lili li toki: “sina kama lukin e tomo pona anu ma lape pona la, o toki tawa mi. mi tawa lon pimeja la, ni li ike tawa mi.”

tenpo lili la, jan kasi li pini e tawa.

ona li toki: “mi lukin e tomo lili pona. selo ona li kiwen kasi, li palisa kasi. mi o tawa ala tawa ona?”

jan lili li toki e wile: “tawa a! wawa mi li kama lili. mi wile lape.”

ni la, jan suli li nasin e ona lon poka pi kasi suli, li kama lon tomo. jan Towesi li tawa insa. poka wan la, ona li kama tawa lipu kasi mute. lipu kasi li telo ala, li supa lape tawa ona. tenpo ni la, ona en soweli Toto li kama supa lon ni. ona li kama lape lon tenpo lili. jan pi kasi insa li wile lape lon tenpo ala. ona li tawa poka ante, li awen tawa tenpo suno sin.

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(5)]) #v(-10pt) #text(font: "Oz'sWizard", [jan Towesi li awen e jan kiwen pali])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] Towesi li pini e lape la, suno li lupa e palisa kasi. soweli Toto li alasa e waso, e soweli lili lon tenpo suli. jan lili li kama sewi, li lukin. jan pi kasi insa li lon, li awen lon poka ona, li awen tawa tenpo pi jan Towesi.

jan Towesi li toki tawa ona: “mi o alasa e telo.”

jan kasi li toki: “sina wile e telo tan seme?”

“mi wile weka e jaki tan sinpin mi kepeken telo. jaki li tan ma, li tan tawa mute mi. mi wile moku e telo. mi moku e pan kepeken ala telo la, pan mi pi telo ala li ken awen lon insa monsi pi uta mi.”

jan pi kasi insa li awen e ni lon pilin, li toki: “jan li jo e sijelo lon insa la, sijelo li wile e pali mute. jan li wile lape, li wile e moku, li wile e telo. taso pona li lon insa lawa, li wile e pali la, pali ni li ike ala.”

ona tu li tawa tan tomo, li tawa lon ma kasi. tenpo la, ona li kama lon telo tawa lili pona. jan Towesi li moku e telo, li telo e sijelo, li moku e moku. ona li kama lukin e pan lili taso lon poki moku. jan pi kasi insa li wile ala moku la, jan lili li pilin pona tan ni: moku li lili la, ona li ken tawa jan Towesi taso, li ken tawa soweli Toto taso, li ken tawa tenpo suno ni taso.

jan Towesi li pini e moku la, ona li wile tawa sin lon nasin jelo. taso mu pi pilin ike li kama. ni li nasa e pilin pi jan lili.

ona li toki kepeken kalama lili: “ni li seme?”

jan kasi li toki: “mi sona ala. taso mi tu li ken alasa, li ken lukin.”

mu sin pi pilin ike li tawa kute ona. kalama ni li tan poka monsi ona. ona li tawa kalama. ona li tawa suli ala. ni la, jan Towesi li kama lukin e ijo. suno li tan sewi kasi, li kama lon ijo la, ijo li suno lili. jan lili li tawa ijo, li pini wawa e tawa. ona li mu e pilin nasa ona.

kasi kiwen suli wan la, lupa li lon insa tan ilo. lupa li wile tu e kasi. lon poka kasi la, jan li jo e ilo pi pali kasi. sijelo jan li kiwen sama ilo. selo jan li suno sama selo ilo. lawa ona en luka ona en noka ona li lon sijelo ona. taso tawa ala a li tan ona! lukin la, tawa li ken ala tan ona.

pilin suli la, jan Towesi li lukin e ona. jan kasi kin li ni. soweli Toto li mu wawa, li lukin utala e noka kiwen kepeken uta. ni li pana e pilin ike tawa uta ona.

jan Towesi li toki: “sina mu anu seme?”

jan kiwen li pana e toki: “mu. mi mu. mi mu lon tenpo sike wan a! jan ala li kute e mi, li pona e mi.”

kute la, toki pi jan kiwen li kama tan pilin suli ike. ni la, pilin pi jan lili li kama suli. ona li wile sona: “mi ken pona e sina kepeken seme?”

jan kiwen li toki: “o kama e telo ko ilo. o telo e ijo pi ken tawa lon sijelo mi. tenpo ni la, ona li ijo pi ken tawa ala. kiwen li kama loje, li kama jaki ko lon insa pi ijo tawa tu la, mi ken ala tawa e ni. telo li ko pona e ijo tawa ni la, mi kama pona. sina ken alasa e poki pi telo ko ilo lon supa awen lon tomo lili mi.”

ni la, jan Towesi li tawa wawa, li kama sin lon tomo, li kama lukin e poki. ona li kama sin tawa jan kiwen. ona li sona ala pali pona la, ona li pilin nasa lili. ona li toki: “insa sina pi ijo tawa tu li lon seme?”

jan kiwen pali li toki: “o open lon noka pi lawa mi a!” ni la, jan lili li pana e telo ko tawa anpa lawa. jaki loje mute li lon la, jan pi selo len li awen e lawa pi jan kiwen kepeken luka. jan kasi li tawa sike lili e lawa tan poka wan tawa poka ante. tenpo la, tawa li wile ala e pali. jan kiwen li kama ken tawa e lawa ona a!

ona li toki: “tenpo ni la, o pana e telo ko tawa ijo insa pi luka mi.” jan Towesi li telo e insa luka pi ken tawa. jan kasi li tawa lili e luka. tenpo la, jaki loje li kama weka tan kiwen. luka li pona a!

jan kiwen pali li pana e kon tan uta tan pilin pona. ona li anpa e ilo ona pi pali kasi, li pana e ilo tawa poka kasi.

ona li toki: “ni li pona e pilin mi a! mi awen sewi e ilo mi lon tenpo ale pi awen mi. mi ken anpa e ona la, mi pilin pona. a! sina ken pona e noka mi kin la, mi kama pona wawa.”

jan pi kasi insa en jan Towesi li telo ko e noka. tenpo la, jan kiwen li ken tawa e noka. ona li toki sin e pilin pona tawa jan pona tu. kute la, ona li jan pi nasin pona, li jan pi toki pona.

ona li toki kin: “sina kama ala la, mi awen lon ni. pona la, sina kama. sina pona e ale mi. sina kama lon ni tan seme?”

jan lili li toki: “mi tawa ma tomo pi kasi kiwen. mi wile tawa jan Osawi suli. tenpo pimeja li kama la, mi awen lon tomo sina lon lape.”

jan kiwen li wile sona: “sina wile tawa jan Osawi tan seme?”

jan lili li toki: “mi wile e ni: ona li kama e mi tawa ma Kansa. jan pi kasi insa li wile e ni: jan Osawi li pana e pona tawa insa pi lawa ona.”

lukin la, jan kiwen pali li awen e ni lon pilin. ni la, ona li kama toki:

“sina la, jan Osawi li ken ala ken pana e pilin tawa insa pi sijelo mi?”

jan Towesi li pana e toki: “mi la, ni li ken. ona li ken pana e pona tawa lawa pi jan kasi kepeken pali lili la, ona li ken pana e pilin tawa sijelo sina kepeken pali lili kin.”

jan kiwen pali li toki kin: “ni li lon. a- mi ken ala ken kama lon poka sina? ni li pona tawa sina la, mi kin li wile tawa ma tomo pi suno laso. mi kin li toki e wile mi tawa jan Osawi.”

jan pi kasi insa li toki pi pilin musi: “o kama a!” jan Towesi kin li toki e pilin pona tan sin kulupu. ni la, jan kiwen pali li luka awen e ilo pali ona. ona ale li tawa lon ma kasi. ona li kama tawa nasin pi kiwen jelo.

jan kiwen li toki e wile tawa jan Towesi: “o awen e poki mi pi telo ko ilo lon poki moku sina. telo li kama tan sewi la, kiwen mi li ken kama loje sin, li ken kama jaki kin. ni la, mi kama wile mute e telo ko.”

jan sin li lon kulupu la, ni li pona tawa ijo kama: tenpo lili la, ona li kama lon kasi mute a! kasi en palisa li lon ale nasin, li len e nasin la, ona li ala e ken tawa. taso jan kiwen pi pali kasi li kepeken ilo kasi ona. ona li pakala e kasi kepeken ilo la, nasin li kama lon insa pi kasi ale, li ken e tawa kulupu.

jan Towesi li pilin insa mute la, ona li kama ala lukin e ni: jan pi kasi insa li kama anpa tan lupa nasin, li kama lon poka nasin. lon la, ona li ken kama e pona tan jan Towesi kepeken kalama taso.

jan kiwen li wile sona: “tan seme la, sina tawa ala lon poka lupa?”

jan pi kasi insa li toki kepeken pilin pona: “sona mi li lili. o sona: lawa mi li jo e kasi taso. tan ni la, mi wile tawa jan Osawi. mi wile e pona lon insa pi tawa mi tan ona.”

jan kiwen li toki: “a! taso pona lawa li pona suli ala.”

jan pi kasi insa li toki: “sina jo ala jo e pona lon insa lawa?”

jan kiwen li toki: “ala. lawa mi li jo e ala. taso tenpo pini la, mi jo e ijo lon insa pi lawa mi. sama la, mi jo e pilin lon insa pi sijelo mi lon tenpo pini. mi kepeken ona tu lon tenpo pini. ona tu la, mi wile e pilin taso.”

jan kasi li wile sona: “tan seme?”

“mi toki e ale mi tawa sina la, sina kama sona.”

kulupu li awen tawa lon ma kasi. jan kiwen pali li toki:

“jan mama mi wan li jan pi pali kasi. ona li anpa e kasi suli, li kama e kiwen tan kasi. ona li esun e kiwen kasi. mi lili li kama suli la, mi kin li kama jan pi pali kasi. jan mama pi pali kasi li moli la, mi awen lon poka pi jan mama ante mi. ona kin li moli la, mi kama wile ala wan taso. tan ni la, mi wile e jan olin.

jan wan pi kulupu Mankin li suwi mute a! ni la, mi olin mute e ona. ona li wile e ni: mi kama jo e mani mute tawa tomo suli. mi wile e tomo suli tawa ona la, mi kama pali mani mute. taso jan suwi li lon tomo pi jan mama suli ona. jan suli li wile ala e jan olin tawa jan suwi. jan suli li wile e pali tomo ale, e pali moku tan jan suwi. ni li ken ala tan jan olin la, jan suli li tawa jan Laso pi wawa nasa. jan suli li wile e pakala pi nasin olin tan jan Laso la, jan suli li esun e soweli mani tu wan tawa jan Laso. ni la, jan ike Laso li nasa ike e ilo pali mi. mi wile kama e tomo suli, e jan olin lon tenpo lili la, mi pali pona kepeken ilo mi lon tenpo suno pona. ni la, ilo li tawa ala pona, li tu e noka wan tan sijelo mi.

tenpo open la, ni li ike tawa mi. sona mi la, jan pi noka wan taso li ken ala pali e kasi sama jan pi noka tu. ni la, mi tawa jan pi pali ilo. tan wile mi la, ona li pali e noka sin kepeken kiwen ilo. mi awen kepeken noka sin la, noka li tawa pona. taso ni ale li ike tawa jan ike Laso pi wawa nasa. tan esun ona la, ona li awen wile pakala e nasin olin. mi pali sin la, ilo mi li tawa ala pona. noka ante mi li kama weka tan sijelo mi. mi kama sin tawa jan ilo. sin la, ona li pali e noka kiwen. ni la, ilo li weka e luka mi wan, e luka ante. mi awen wawa. mi kama e luka kiwen. jan ike pi wawa nasa li kama e weka pi lawa mi kepeken ilo mi. tenpo ni la, moli mi li lon pilin mi. taso pona la, jan ilo li lon poka, li kama tawa mi. ona li pali e lawa kiwen tawa mi.

pilin mi la, ike ante ala li ken kama tan jan ike. ni la, mi pali mute mute a! taso mi pi tenpo pini li sona ala e ike ona. jan ike li sona e nasin sin tawa pakala olin pi jan suwi mi. ilo mi li tawa pakala kin, li tawa insa pi sijelo mi, li tu e ale mi. sin pona la, jan ilo li kama, li pona e mi. ona li pana e sijelo kiwen tawa mi. ona li wan e luka kiwen, e sijelo kiwen, li sama e luka kiwen, li sama e lawa kiwen. ijo pi ken tawa li ken e tawa mi sama tawa mi pi tenpo pini. taso ike a li lon! pilin mi li lon ala sijelo mi. ni la, olin mi li weka. mi ken ala olin e jan suwi pi kulupu Mankin. mi ken ala wile kama jan olin ona. sona mi la, ona li awen lon tomo pi jan suli ona, li awen tawa tenpo pi olin mi.

suno li kama e suno tan selo pi sijelo mi. mi pilin wawa tan ni. ilo mi li tawa pakala la, ni li suli ala. ona li ken ala pakala e mi kiwen. ike wan taso li ken kama: ijo insa pi ken tawa li ken kama jaki loje, li ken ala tawa. taso mi jo e poki pi telo ko pona lon tomo mi. mi telo e ijo tawa lon tenpo wile. taso tenpo suno wan la, mi awen ala e ni lon sona mi. kin la, telo mute li kama anpa wawa tan sewi. tenpo lili la, insa mi pi ijo tawa tu li kama jaki, li ken ala e tawa mi. mi awen tawa ala lon ma kasi. tenpo la, sina kama. sina pona e mi. tenpo pi mi olin la, mi pilin pona mute. taso tenpo ni pi mi kiwen la, mi jo ala e pilin. mi ken ala olin tan ni. ni la, mi wile e pilin lon insa sijelo tan jan Osawi. ona li pana e pilin la, mi tawa sin tawa jan suwi pi kulupu Mankin. mi kama jan olin ona.”

tenpo pi toki ona la, jan Towesi en jan pi kasi insa li wile kute e ale. tenpo ni la, ona tu li sona e wile wawa ona pi pilin sin.

jan kasi li toki: “a; taso awen la, mi wile e pona lon insa lawa. awen la, mi wile e pilin ala lon insa sijelo. jan li jo e pilin lon sijelo, li jo ala e pona lon lawa la, ona li ken ala sona kepeken pilin ona.”

jan kiwen li toki kin: “pilin o tawa mi. pona li lon insa lawa la, ni taso li pana ala e pona tawa pilin. pona li lon pilin la, ni li suli mute.”

jan Towesi li toki ala. ona li kute pona e toki pi jan pona tu. taso nasin tu la, ona li sona ala e nasin pona wan. ona li kama pilin e ni: ona li ken kama sin lon ma Kansa lon poka pi jan Me la, kama ni taso li suli. jan kasi li jo e pilin lon sijelo la, ni li suli ala. jan kiwen li jo e pona lon lawa la, ni li suli ala. ona tu li jo e ijo pi wile ona la, ni kin li suli ala.

ike ken li kama lon pilin pi jan lili. pan li kama lili a! jan Towesi en soweli Toto li moku lon tenpo kama wan taso la, poki li kama jo e ala. lon la, jan kasi en jan kiwen li moku ala. taso sijelo pi jan lili li kiwen ala, li kasi ala lon insa. moku taso li ken awen e ona.

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(6)]) #v(-10pt) #text(font: "Oz'sWizard", [soweli wawa pi pilin wawa ala])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[tenpo] ni ale la, jan Towesi en kulupu pona ona li tawa lon ma pi kasi mute mute. nasin la, kiwen jelo li awen lon. taso palisa kasi moli en lipu kasi pi telo ala li len mute e jelo. ken tawa li pona ala.

waso li pilin pona tan suno lon ma suli la, waso pi mute ala li lon poka pi kulupu tawa. taso tenpo la, mu ike li kama tan soweli lon len kasi, li sama wile utala tawa kute. mu li tan seme? jan Towesi li sona ala. tan ni la, mu li wawa e tawa pilin lon insa pi jan lili. taso soweli Toto li sona. ona li awen lon poka pi jan Towesi. ona li wile awen e jan ona, li mu ala kin tawa soweli ante.

jan lili li wile e sona tan jan kiwen: “tenpo seme la, mi weka tan ma kasi?”

jan kiwen li toki: “mi sona ala. mi lon ala ma tomo pi suno laso lon tenpo pini. taso jan mama mi li tawa ona lon tenpo wan. mi jan lili la, ona li toki e ni tawa mi. tawa ona ni li wile e tenpo suli. nasin li tawa ma ike. ma tomo taso la, ma li kama pona lon poka. taso nasin li ike ala e pilin mi. mi jo e poki pi telo ko la, poki mi li awen e mi. kin la, ijo ala li ken pakala e jan pi kasi insa. kin la, jan pona pi wawa nasa li uta e lawa sina. awen pi uta ona li awen e sina.”

jan lili li toki e pilin ike kama: “taso soweli Toto la, seme li ken awen e ona?”

jan kiwen li toki: “ike li kama la, mi ale o awen e ona.”

toki ona li pini la, mu wawa utala li kama lon ma kasi. tenpo ni la, soweli suli wawa li kama lon nasin. ona li luka wawa e jan pi kasi insa la, jan kasi li tawa sewi, li sike lon kon, li kama lon selo nasin. ni la, soweli wawa li luka wawa e jan kiwen pali kepeken palisa luka utala. jan kiwen li kama anpa, li awen lon ma, li tawa ala. taso pakala ala li lon selo kiwen ona. ni li nasa tawa soweli wawa.

soweli utala ni li lon la, ni li kama e nasin utala lon soweli Toto lili. ona li mu utala, li tawa soweli wawa. soweli suli wawa li open e uta, li ken moku e soweli lili la, jan Towesi li pilin ike tan moli kama pi soweli lili ona. ike ante pi soweli utala li suli ala tawa ona la, ona li tawa soweli wawa, li luka utala wawa e nena pi sinpin soweli a! ona li toki kalama:

“o moku ala e soweli Toto a! sina ike a! o pilin ike tan pali ike a! sina soweli suli. taso sina lukin ike e soweli suwi lili a!”

soweli wawa li luka suwi e nena ona tan pilin pakala tan utala pi jan Towesi. ona li toki: “mi moku ala e ona.”

jan Towesi li toki: “taso sina lukin moku. sina soweli wawa. taso wawa ala li lon pilin sina.”

soweli wawa li anpa e lawa ona tan pilin ike: “mi sona. mi sona e ni lon tenpo ale. taso mi ken ante kepeken nasin seme?”

“mi sona ala a! o lukin e jan pi kasi insa. sina utala e ona tan seme? ona suwi li jo e kasi taso lon insa.”

ni li sin nasa tawa soweli wawa. ona li toki: “a- ona li jo e kasi taso lon insa anu seme?” jan Towesi li sewi pona e jan kasi, li pana e noka pi jan kasi lon ma. ona li nasin pona e sijelo pi jan kasi kepeken luka.

jan Towesi li awen pilin utala tawa soweli wawa: “ni li lon sona a! insa ona li kasi taso.”

soweli wawa li kama toki: “a- mi kama tawa e ona kepeken wawa lili tan ni. ona li tawa sike lon kon la, ni li nasa tawa mi lukin. jan ante kin li jo e kasi lon insa anu seme?”

jan Towesi li toki: “ala. ona li kiwen.” jan kiwen li kama sewi la, jan lili li pona e ken tawa sewi.

soweli wawa li toki: “a- kiwen luka mi li kama lili tan ni. palisa kiwen mi li utala e selo kiwen ona la, ni li kama e pilin jaki lete lon sewi monsi mi. sina wile awen e soweli lili. ona li seme?”

jan Towesi li pana e toki: “ona li soweli Toto mi.”

soweli wawa li wile sona: “ona li kiwen ala kiwen, li kasi ala kasi lon insa?”

jan lili li toki: “ala. ona li. a! ona li soweli. a! soweli sijelo.”

soweli wawa li toki sin: “a! ona li soweli musi. mi kama lukin e ona la, ona li lili mute.” ona li awen toki kepeken pilin anpa: “soweli ala li kama wile moku e ona. mi taso li ni tan pilin pi wawa ala.”

jan Towesi li toki: “sina pilin pi wawa ala tan seme?” lukin ona la, soweli wawa li suli mute, li wawa pona a!

soweli wawa li toki: “ni li lon ala sona. pilin la, mi kama ni lon tenpo pi open mi. soweli ante ale pi ma kasi la, mi o pilin wawa. sona la, soweli wawa li lawa e soweli ante ale. mi kama sona e ni: mi mu wawa suli la, ni li wawa ike tawa soweli ale. ona li tawa weka tan mu mi. jan li kama la, ni li ike e pilin mi a! taso mi mu tawa jan la, ona li tawa wawa lon tenpo ale. soweli suli ante li wile ala utala e mi. ante la, mi kin li wile tawa weka kepeken wawa. pilin mi li wawa ala a! taso mu wawa mi la, soweli suli ale li tawa weka. a- suli la, mi alasa ala e soweli ni.”

jan pi kasi insa li toki: “taso ni li nasin pona ala. sina soweli lawa tawa soweli ale la, sina o pilin wawa a!”

soweli wawa li toki sin: “mi sona a!” telo li kama tan oko. ona li weka e telo kepeken linja monsi ona. “ni li kama e pilin ike suli mi, li ike e ale mi. taso ike li kama la, pilin mi li tawa mute lon sijelo mi.”

jan kiwen li toki: “ken la, pilin sina li pakala.”

soweli wawa li toki e ni: “ken.”

jan kiwen li awen toki: “ni li lon la, ni li pona. tan sona ni la, sina jo e pilin lon insa sijelo. pilin li lon ala sijelo mi. ni la, pakala pilin li ken ala.”

soweli wawa li moku e sona ni: “a- pilin li lon ala insa la, pilin wawa li ken ala weka. ni li ken ala ken tawa mi?”

jan pi kasi insa li wile sona: “sina jo ala jo e pona lon insa pi lawa sina?”

soweli wawa li toki: “a- pilin mi la, mi jo. mi lukin ala e insa lawa mi.”

jan kasi li toki: “mi tawa jan Osawi suli. mi wile e pona lon insa pi lawa mi tan ona. lawa mi li jo e kasi taso lon tenpo ni.”

jan kiwen li toki: “mi wile e pilin lon insa pi sijelo mi tan ona.”

jan Towesi kin li toki: “mi wile e ni tan ona: mi en soweli Toto li kama sin lon ma Kansa.”

soweli wawa pi pilin wawa ala li wile sona: “sina la, jan Osawi li ken ala ken pana e pilin wawa tawa mi?”

jan pi kasi insa li toki: “ona li ken pana e pona tawa lawa mi la, ni li sama.”

jan kiwen pali li toki: “ona li ken pana e pilin tawa insa mi la, ni li sama.”

jan Towesi kin li toki: “ona li ken kama e mi lon ma Kansa la, ni li sama.”

soweli wawa li toki: “a- sina ken e mi lon poka sina la, mi wile tawa lon poka sina. pilin wawa li lon ala la, ale mi li ike.”

jan Towesi li kama toki: “ni li pona tawa mi. sina weka e soweli ante la, ona li ken ala utala e mi. ni la, pilin wawa sina li anpa e pilin wawa pi soweli ante tawa mi.”

soweli wawa li toki: “lon la, ona li pilin wawa ala. taso ni li suli ala e pilin wawa mi. mi awen sona e pilin wawa ala mi la, mi awen pilin ike.”

ni la, kulupu li tawa sin. soweli wawa li tawa pi noka suli lon poka pi jan Towesi. open la, ni li pona ala tawa soweli Toto. ona li awen sona e ken pakala tan uta suli pi soweli suli. taso tenpo li tawa la, soweli Toto li kama pilin ante. tenpo la, soweli Toto en soweli wawa pi pilin wawa ala li pilin pona lon poka.

kulupu li awen tawa la, ijo ante ala li ike e tawa lon tenpo suno ni. a- tenpo wan la, jan kiwen li noka e pipi lon nasin, li moli e pipi suwi ni. moli ona li ike tawa jan kiwen. tenpo ale la, ona li wile ala e pakala. ona li awen tawa la, oko ona li pana e telo tan pilin ike tan wile ante. telo li tawa lon sinpin ona, li tawa anpa sinpin la, telo li jaki loje e poka uta, e tawa uta. jan Towesi li toki tawa jan kiwen la, jan kiwen li ken ala open e uta. uta li awen a, li awen pini a tan jaki loje! ni li pana e pilin ike suli tawa ona. ona li wile e pona tan jan Towesi la, ona li tawa mute e luka ona. taso jan lili li sona ala e wile ona. soweli wawa kin li sona ala e ike pi jan kiwen. taso jan kasi li kama e poki pi telo ko tan poki pi jan Towesi. ona li pana e telo ko ilo tawa anpa sinpin pi jan kiwen. tenpo lili la, jan kiwen li kama ken sama tenpo pini.

jan kiwen li toki: “ni li pana e sona suli tawa mi. noka mi li kama lon ma la, mi o lukin e noka. mi moli sin e pipi la, telo li kama sin tan oko. telo li jaki e anpa sinpin mi la, mi ken ala toki tan pini uta.”

tan ni la, ona li tawa kepeken lukin mute. ona li awen lukin e nasin anpa. ona li kama lukin e pipi lili lon tenpo la, ona li pana e noka lon weka pipi. ona li wile ala pakala e pipi. sona pona pi jan kiwen la, pilin li lon ala insa pi sijelo ona. ni la, ona li wile awen lukin pona. ona li wile pakala ala e ijo, li wile ike ala e ijo.

ona li toki: “sina pi pilin insa o. pilin insa sina li ken nasin e sina. ni la, sina ike ala. taso mi jo ala e pilin lon insa. ni la, mi o lukin e nasin mi. jan Osawi li pana e pilin tawa sijelo mi la, ale li ante. pana ona la, mi ken sona e nasin.” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(7)]) #v(-10pt) #text(font: "Oz'sWizard", [kulupu li wile tawa jan Osawi suli])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[tomo] ala li lon la, kulupu li ken lape lon anpa taso pi kasi suli lon tenpo pimeja. lipu pi sewi kasi li len pona e ma pi anpa kasi, li ken awen e kulupu tan telo kon. jan kiwen pali li pali e kiwen tan kasi kepeken ilo ona. jan Towesi li pali e seli pona. seli li seli pona e jan lili, li weka lili e pilin pi wan taso. jan lili en soweli Toto li moku pini e pan ale. moku li kama pini la, jan Towesi li sona ala e pona lon wile moku pi tenpo kama.

soweli wawa li toki: “sina wile la, mi tawa ma kasi. mi ken alasa e soweli tawa. ni la, sina ken seli e ona lon sewi seli. pilin uta sina li wile e moku ale ala. ni la, moku sina o lon seli. ni la, moku pi pona mute li tawa sina.”

jan pali li kalama tan pilin: “ala. a! ala. sina moli e soweli tawa suwi la, mi pana sin e telo tan oko. ni la, uta mi li kama pini awen sin tan jaki.”

taso soweli wawa li tawa ma kasi lon poka pi jan ala. ona li kama alasa e moku pi ona taso. ona li toki ala e moku ona la, kulupu li sona ala e moku ona. jan pi kasi insa li kama lukin e kasi suli pi kili kiwen mute. ona li alasa e kili kiwen, li pana e kili lon poki moku pi jan Towesi. ni la, jan Towesi li kama ala pilin ike tan wile moku lon tenpo suli. pali ni pi jan kasi li suwi tawa jan Towesi. taso jan pi kasi insa li ken alasa nasa taso e kili la, jan lili li mu e pilin musi tan pali ni. luka pi kasi insa li tawa nasa. kin la, kili li lili. ni la, kili mute li kama lon poki, li kama lon ma kin. ni li wile e tenpo mute. taso jan pi kasi insa li pilin ike ala tan ni. pali la, ona li ken awen weka tan seli. pilin ike ona la, seli li ken tawa ona, li ken seli e kasi ona, li ken pakala e ale ona. ni la, ona li awen weka pona tan seli. tenpo lape taso la, ona li kama lon poka, li len e jan Towesi kepeken lipu kasi. lipu kasi li awen pona e jan lili, li awen seli e ona. tenpo pimeja ale la, ona li lape pona.

suno li kama sin la, jan lili li telo e sinpin ona lon telo linja lili. tenpo lili la, kulupu li open e tawa, li tawa ma tomo pi suno laso.

ijo mute li kama lon tenpo suno ni. ona li awen tawa lon tenpo lili la, ona li kama lukin e lupa ma suli. lukin la, lupa ma li tu e nasin, li tu e ma kasi, li tu e ma ale lon poka tu. jan kulupu en soweli kulupu li ken ala lukin e pini lupa lon poka nasin tu. kulupu li tawa selo lupa, li lukin e insa lupa. lukin ni la, ona li sona e suli anpa kin, e kiwen ike suli anpa. poka selo lupa li sama sinpin la, jan kulupu en soweli kulupu li ken ala tawa lon ni. pilin la, nasin kulupu li pini lon tenpo ni.

jan Towesi li toki pi pilin ike: “mi o seme a?”

jan kiwen li toki: “mi sona ala a !” sona ala la, soweli wawa li tawa e lawa ona tan poka tawa poka. ona li pilin insa.

taso jan pi kasi insa li toki: “mi ken ala tawa lon kon. ni li lon. kin la, mi ken ala tawa anpa lon lupa ike ni. mi ken ala tawa sewi lon sewi lupa kepeken wawa la, mi ken awen taso.”

soweli wawa pi pilin wawa ala li lukin e suli lupa, li lukin sona e ken: “pilin mi la, mi ken tawa sewi lon sewi lupa.”

jan kasi li toki: “ni la, ale li pona. mi ale li ken lon sewi sina la, sina ken kama e mi lon poka lupa ante. tenpo tawa wan la, jan wan li ken tawa.”

soweli wawa li toki: “a- mi lukin pali ni. seme li wile lon open?”

jan pi kasi insa taso li toki: “mi. sina kama ala tawa poka lupa ante la, jan Towesi li ken moli. ante la, selo kiwen pi jan kiwen li ken nasa tan pakala lon kiwen anpa. taso mi lon sewi sina la, ni li suli ala. anpa li ken ala pakala e mi.”

soweli wawa li pilin wawa ala: “mi ken kama anpa ike la, ni li ike e pilin mi kin. taso lukin la, nasin ni taso li lon. ni la, o lon sewi mi. mi lukin tawa.”

jan kasi li kama lon sewi soweli. soweli suli li tawa selo lupa, li anpa e sijelo ona.

jan kasi li wile sona: “sina open e tawa lon weka lupa la, sina kama tawa suli a! ni la, sina ken tawa sewi suli. tan seme la, sina ni ala?”

soweli li toki: “a- ni li nasin ala pi soweli wawa.” ona li tawa wawa e noka ona. ona li tawa sewi, li tawa lon sewi lupa, li kama pona lon poka lupa ante. ni li wile ala e wawa ike tan soweli la, soweli en jan li pilin pona suli. jan kasi li anpa tan soweli tawa ma la, soweli wawa li tawa wawa sewi sin.

tenpo ni la, jan Towesi li wile tawa. ona li jo e soweli Toto lon luka, li kama lon sewi pi soweli wawa. ona li luka awen e linja lawa soweli. tenpo lili wan la, ona li pilin e tawa sama tawa waso. tenpo lili kin la, lawa ona li awen ala e sona ni. ona li lon poka lupa ante. soweli lawa li tawa sin, li kama e jan kiwen. ni li weka e wawa tan soweli suli la, kulupu li lape lili lon ma. soweli suli li moku mute e kon tan tawa mute.

ma kasi la, kasi mute li lon poka lupa ni, li pimeja e ma. soweli wawa li pini e lape la, kulupu li open e tawa lon nasin jelo. ale kulupu li toki e ni lon insa lawa: ma kasi li kama ala kama pini? kulupu li kama ala kama lukin e tenpo suno lon tenpo? ike ante la, kalama nasa li kama tan insa pimeja pi ma kasi. soweli wawa li toki pi kalama lili: “ma ni li ma pi kulupu soweli Kalita.”

jan lili li wile sona: “soweli ni li seme?”

soweli wawa li toki: “ona li soweli ike. sijelo ona li sama soweli suli utala. lawa ona li sama soweli alasa suli. palisa utala suli li lon pini luka ona. mi ken pakala e soweli Toto kepeken wawa lili; taso soweli pi kulupu Kalita li ken tu e mi kepeken wawa ala kin. lon pi soweli Kalita li ike e pilin mi ale, li weka e pilin wawa mi.”

jan Towesi li toki: “pilin ike sina li nasa ala tawa mi. kute la, soweli li ike mute.”

soweli wawa li wile open sin e toki. taso tenpo ni la, lupa sin li tu e nasin. ike la, lupa ni li suli mute a! sona pi soweli wawa la, ona li ken ala tawa sewi lupa tan suli ni.

kulupu li lape lili lon ma, li wile alasa e sona pi nasin pona. jan kasi li pini e toki insa suli la, ona li kama toki:

“kasi suli li lon selo lupa. jan kiwen pali li ken anpa e kasi la, kasi li ken kama supa lon sewi lupa. kasi li supa la, ona li kama nasin tawa mi.”

soweli wawa li toki: “sona pona a li lon toki sina! sona mi la, kasi taso li lon insa pi lawa sina. sona ni li lon ala mi la, mi ken pilin ante. pilin ni pi sona ala la, sina ken jo e pona lon lawa.”

jan kiwen pali li open e pali. ilo ona li ken tu wawa e kiwen kasi la, jan kiwen li kepeken tenpo lili a! ni li pini la, soweli wawa li noka sinpin ona e kasi, li tawa e kasi kepeken wawa ale ona. tenpo la, kasi suli li tawa anpa lon sewi lupa. kalama tawa la, pini kasi li kama lon selo lupa lon poka lupa ante.

kulupu li open e tawa lon nasin kasi nasa ni la, kalama utala li nasin e lukin ona. ike wawa la, soweli suli tu li kama tawa ona kepeken tawa suli. sijelo soweli li sama soweli suli utala. lawa soweli li sama soweli alasa suli.

soweli wawa pi pilin wawa ala li toki: “ni li soweli Kalita a!” tawa lili mute li kama lon ale pi sijelo ona tan pilin pi wawa ala.

jan kasi li toki: “o tawa a! mi o tawa poka ante.”

ni la, jan Towesi li nanpa wan. ona li awen jo e soweli Toto. jan kiwen li nanpa tu. jan kasi li lon kama lon monsi ona. soweli wawa pona li pilin wawa ala. taso ona li lukin e soweli ike Kalita, li mu pi wawa suli tawa soweli ike. mu li kalama ike suli la, jan Towesi li mu e pilin ike. mu pi soweli pona la, jan kasi li kama tawa monsi anpa. mu soweli la, soweli ike kin li pini e tawa, li lukin e soweli mu pona, li pilin nasa lili.

taso soweli pona li suli la, soweli ike li suli mute. kin la, ona li tu. soweli pona li wan taso. soweli ike li sona e ni la, ona li tawa wawa. soweli pona li tawa lon kasi nasin, li lukin e kama pi soweli ike. soweli ike li awen tawa. ona kin li kama tawa lon kasi. soweli pona li toki tawa jan Towesi:

“ni li pini ike. kama la, ona li kama pakala e mi ale kepeken palisa luka utala ona. taso o awen lon poka monsi mi. mi ken awen la, mi awen utala e ona.”

jan kasi li kalama: “o kute.” ona li awen alasa e sona pi nasin pona. ona li toki tawa jan kiwen: “o ilo e pini kasi lon poka ni pi selo lupa. o weka e kasi.” jan kiwen pali li kama kepeken ilo ona. soweli ike tu li kama tawa poka ona la, kasi li tawa kalama anpa lon insa lupa, li tawa e soweli ike kin. ona tu pi ike lukin li kama pakala lon kiwen anpa ike.

pilin ike li kama weka tan soweli wawa pona la, ona li toki: “lukin la, mi kama ala moli lon tenpo ni. ni li pona. pilin mi la, moli li ken ala pana e pilin pona. soweli ike ni li pana e pilin ike wawa suli la, pilin mi li awen pana e kalama mute lon insa pi sijelo mi.”

jan kiwen li toki e pilin anpa: “a! mi wile e pilin kalama lon insa pi sijelo mi kin.”

ni ale la, kulupu tawa li wile tawa weka pi ma kasi a! wile tawa li suli la, ona li tawa suli. ni li weka e wawa tan jan Towesi la, ona li kama lon sewi pi soweli wawa. pona la, mute kasi li kama lili lon tawa awen. suno li tawa la, ona li kama lon poka pi telo suli tawa. lon poka telo ante la, nasin pi kiwen jelo li tawa ma pi pona suli. ma laso li jo e kasi suwi kule. poka nasin la, kasi suli pona li jo e kili moku pona. kulupu li pilin pona tan lukin pi ma ni.

jan Towesi li wile sona: “nasin seme la, mi ken tawa poka telo ante?”

jan kasi li toki: “ni li wile ala e pali mute. jan kiwen pali o pali e supa tawa telo. supa tawa la, mi ken tawa poka ante.”

toki ni la, jan kiwen pali li kepeken ilo pali ona, li anpa e kasi kiwen. ona li pali e supa kepeken kiwen kasi la, jan pi kasi insa li kama lukin e kasi pi kili pona mute. jan lili li moku e kili kiwen taso lon ale pi tenpo suno ni la, kili suwi ni li pona tawa ona. ona li kama moku pona e kili.

taso pali pi supa tawa li wile e tenpo. jan kiwen li pali pona, li wile ala lape. taso ni kin la, pali li awen wile e tenpo. tenpo pimeja li kama la, pali li pini ala. ni la, kulupu li alasa e ma lape pona lon anpa pi kasi suli. ona li lape pona lon ale pi tenpo pimeja. jan Towesi li lape la, ma tomo pi suno laso en jan Osawi suli li lon insa pi lawa ona. jan Osawi li jan suli pi wawa nasa, li ken e jan Towesi tawa ma mama ona. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(8)]) #v(-10pt) #text(font: "Oz'sWizard", [ma moli pi kasi loje lape])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[suno] sin li kama la, kulupu li pini e lape. ona li pilin sin. pilin ona li wawa pona tawa wile pi ijo kama. jan Towesi li kama jo e kili suwi tan kasi lon poka telo. ona li moku pona e ni. monsi la, ma pimeja pi kasi suli li lon, li kama weka. kulupu li tawa lon insa pi ma kasi la, pakala ala li kama. lon la, ike li wile pini e tawa ona. taso sinpin la, ma suno pona li lon, li ken e ona tawa ma tomo pi suno laso.

lon la, telo tawa suli li weka e kulupu tan ma pona lon tenpo ni. taso jan pali li kama pali e supa tawa telo. jan kiwen pali li kama kepeken palisa kasi sin. ona li awen e palisa ni lon supa kepeken palisa lili awen. ni la, tawa li ken. jan Towesi li tawa insa supa, li jo awen e soweli Toto. soweli wawa li tawa supa la, poka supa ni li tawa anpa ike tan suli wawa ona. taso jan kasi en jan kiwen li tawa poka supa ante la, supa li supa pona. ona li kepeken palisa suli la, ona li tawa e supa lon telo.

open la, tawa li pona. taso ona li lon insa telo la, tawa telo li wawa, li tawa e supa. supa li kama weka tan nasin jelo. supa li kama lon insa pi poka telo tu. anpa telo li kama weka mute. ni la, palisa suli li ken ala tawa anpa telo, li ken ala tawa e supa tan ni.

jan kiwen li toki: “ni li ike. mi ken ala tawa ma la, mi kama tawa ma pi jan ike Jelo. ona li kama nasa e mi, li kama lawa e mi.”

jan pi kasi insa li toki: “ni la, pona li ken ala tawa insa pi lawa mi.”

soweli wawa pi pilin wawa ala li toki: “ni la, wawa li ken ala tawa pilin mi.”

jan kiwen li toki: “ni la, pilin li ken ala tawa insa pi sijelo mi.”

jan Towesi li toki: “ni la, mi ken ala tawa ma Kansa.”

jan kasi li awen toki: “mi ken la, mi o tawa ma tomo pi kiwen laso a!” ona li tawa wawa e palisa. ni li awen e palisa ona lon anpa telo lon ko ma. tan awen ni la, jan kasi li awen lon palisa, li ken ala weka e palisa, li ken ala weka tan palisa lon tenpo pona. ike la, supa tawa li tawa weka ona. jan kasi li awen lon palisa lon insa telo.

ona li toki kalama tawa kulupu: “tawa pona.” ni li ike mute tawa pilin kulupu. kin la, jan kiwen li kama pana e telo tan oko. taso pona la, ona li awen sona e jaki sijelo tan telo. ni la, ona li weka e telo ona kepeken len pi jan Towesi.

lon la, kama ni li ike tawa jan kasi.

ona li toki insa: “tenpo ni li tenpo pi ike suli tawa mi. mi sona ala e jan Towesi lon tenpo pini la, ni li tenpo pi ike lili taso. mi awen lon palisa lon ma. lon pilin mi la, mi ken e weka waso. taso tenpo ni la, mi jan pi kasi insa lon telo a! telo la, jan pi kasi insa li pona ala. ike la, pona li ken ala tawa lawa mi a!”

telo li awen tawa weka e supa tawa. jan kasi li awen. ni la, soweli wawa li toki:

“mi wile awen la, mi o pali. pilin la, mi wan li ken tawa lon telo. sina jo e linja monsi mi la, mi ken tawa e supa tawa lon poka monsi mi.”

ni la, ona li tawa telo. jan pali li luka awen e linja monsi ona lon tenpo ni sama. soweli wawa li open e tawa lon telo, li kepeken wawa ale ona. ona li tawa ma. soweli li suli. taso tawa li wile e pali mute. tenpo la, supa tawa li kama weka tan telo insa pi tawa mute. ni la, jan Towesi li kama jo e palisa suli pi jan kiwen. ona li tawa e palisa la, ni kin li ken e tawa supa. supa li kama tawa ma.

pini pona la, kulupu li kama lon ma. wawa li weka tan ona. ona li kama lon laso kasi pona. sona ona la, tawa telo li pana e ona lon weka pi nasin jelo. nasin li ken e kulupu tawa ma tomo pi suno laso. taso nasin li lon ala ni.

jan kiwen li toki: “tenpo ni la, mi o seme?” tenpo pi toki ona la, soweli wawa li kama supa lon ma. suno li seli e sijelo ona, li weka e telo.

jan Towesi li toki: “mi o kama sin lon nasin jelo. taso seme li pona tawa ni?”

soweli wawa li toki: “mi wile alasa e nasin jelo la, mi wile tawa lon poka telo. ni la, mi kama lon nasin.”

kulupu li kama pini e lape lili ona. jan Towesi li kama jo e poki ona. kulupu li open sin e tawa lon poka telo lon kasi anpa lili. telo li weka e kulupu tan nasin pona la, kulupu li wile tawa. ma li suwi, li jo e kasi kule suwi, e kasi pi kili suwi. suno li ken pona e pilin kulupu. taso ike li lon jan pi kasi insa la, kulupu li pilin pona ala.

ona li tawa kepeken tenpo pona. jan Towesi li wile kama jo e kasi suwi lili la, ona li pini lili e tawa lon tenpo wan taso. kulupu li awen tawa la, jan kiwen li kama toki: “o lukin a!”

ni la, kulupu li lukin e telo. jan pi kasi insa li lon sewi pi telo insa. palisa li awen sewi e ona. lukin la, jan kasi li pilin anpa ike, li pilin pi wan taso.

jan Towesi li wile sona: “mi o pona e ona. mi o seme?”

soweli wawa en jan kiwen li sona ala la, ona li tawa e lawa tan poka wan tawa poka ante. ni la, ona li lape e monsi ona lon poka telo, li lukin e jan kasi. ona li pilin pi wile pali. taso ona li ken ala pali. waso suli pi noka suli li kama. ona li lukin e kulupu la, ona li kama lon selo telo.

waso suli li wile sona: “sina seme? sina wile tawa seme?”

jan lili li toki: “mi jan Towesi. jan kiwen pi pali kasi en soweli wawa pi pilin wawa ala li lon kulupu pona mi. mi tawa ma tomo pi suno laso.”

waso li jo e palisa suli lon noka lawa. waso li tawa e ni la, ona li lukin e kulupu nasa: “nasin li lon ala ni.”

jan Towesi li toki: “mi sona. taso jan pi kasi insa li kama weka tan kulupu. mi wile sin e ona lon poka mi. taso ni li ken tan seme?”

waso suli li toki: “ona li lon seme?”

jan lili li nasin e lukin waso: “ona li lon ni lon telo.”

waso li kama toki e pilin ona: “ona li suli. ni la, mi ken ala tawa e ona. mi ken ala kepeken wawa pona tawa ni. ante la, mi alasa e ona.”

jan Towesi li toki pona: “lon la, ona li suli. taso kasi taso li lon insa ona. sina wile tawa e ona la, ni li wile ala e wawa mute. sina kama e ona tawa mi la, mi awen pilin pona tan sina a!”

waso li toki: “a ken! mi lukin tawa e ona. taso ni li wile e wawa ike tan mi la, mi anpa sin e ona lon telo.”

waso suli li tawa sewi, li tawa lon kon, li tawa lon sewi telo. ona li tawa jan kasi. jan kasi li awen lon palisa ona. noka waso li kama jo e luka jan, li sewi e jan. waso li tawa e ona, li kama e ona lon poka telo lon poka kulupu.

jan kasi li kama lukin e jan pona ona, e soweli pona ona la, jan kasi li pilin pona suli a! ona li luka suli e jan Towesi, e soweli wawa, e jan kiwen, e soweli Toto. kulupu li kama tawa sin la, jan kasi li pana e kalama musi mute. ona li tawa e noka wan la, ona li mu e musi wan tan pilin pona suli.

jan kasi li toki: “tenpo telo la, mi kama pilin ike. lukin la, sina weka. lukin la, mi awen lon telo. taso waso suli li kama, li weka e mi tan ike. pona li ken kama lon insa pi lawa mi lon tenpo kama la, mi o tawa waso. mi wile e pona tawa ona kin.”

poka kulupu la, waso suli li tawa lon kon. ona li toki: “ni li suli ala. ike li lon la, mi wile pali e pona. taso mi o tawa. waso lili mi li wile e mi. mi wile e pona tawa nasin sina. mi wile e pona tan jan Osawi tawa sina.”

jan Towesi li toki pilin: “sina pona.” waso pona li tawa lon kon, li tawa weka lukin.

kulupu li tawa la, ona li kute e mu pi waso kule mute. ona li lukin e kasi kule pona. kasi kule suwi li kama len e supa ma ale. jelo en walo en laso en loje laso li lon kasi. kasi pi loje wawa li lon kin. kule pi kasi loje li wawa mute la, wawa ona li kama nasa pona e lukin pi jan Towesi.

ona li insa e kon namako tan kasi kule. “kasi ni li pona mute. sina pilin sama anu seme?”

jan pi kasi insa li toki: “a ken! mi kama jo e pona lon insa pi lawa mi la, mi ken kama pilin pona e pona ona.”

jan kiwen li toki: “pona ona li tawa pilin. taso mi jo ala e pilin lon insa pi sijelo mi.”

soweli wawa li toki: “kasi kule suwi li pona tawa mi lon tenpo ale. ona li wawa ala, li ken kama pakala. taso ma mi pi kasi suli la, kule kasi li wawa ni ala.”

tenpo ni la, kasi loje li kama mute lon poka kulupu. kasi kule ante li kama mute ala. tenpo poka la, kasi loje taso li len e ma. sona la, kasi loje ni li kasi namako. kasi ni li mute la, kon namako ona li wawa a, li ken lape e jan, e soweli! jan en soweli li awen insa e kon kasi, li kama ala weka tan ni la, ona li awen lape lon ale tenpo a! taso jan lili li sona ala e ni. ona li ken ala weka tan kasi loje ni. kasi loje li lon poka ale. ni la, oko ona li kama anpa. ona li kama wile pini e tawa. ona li kama wile lape. ona li kama wile mute e lape.

taso jan kiwen li wile ala e lape ona.

ona li toki: “mi o tawa wawa. mi o kama lon nasin jelo lon tenpo lili. mi ken ala tawa lon tenpo pimeja.” jan kasi li pilin sama. ni la, ona li awen tawa. taso tenpo la, jan Towesi li ken ala awen. oko ona li kama pini tan ala wile jan. ma ni li kama weka tan sona ona. ona li tawa anpa lon kasi loje namako, li lape wawa.

ni la, jan kiwen li toki: “mi o seme e ona?”

soweli wawa li toki: “ona li awen lon ni la, ona li moli. kon namako kasi li moli e mi ale. mi wile awen open e oko mi. taso ni li wile e wawa mute tan mi. soweli lili kin li lape lon tenpo ni.”

lon la, soweli Toto li kama anpa, li lape lon pona pi jan ona. taso jan kasi en jan kiwen li jo ala e sijelo lon insa la, kon nasa kasi li ken ala ike e ona.

jan kasi li toki tawa soweli suli: “o tawa wawa a! o kama weka tan ma moli ni pi kasi loje mute. o kepeken tenpo lili. mi en jan kiwen li ken tawa e jan lili ni. taso sina kama lape la, mi ken ala tawa e sina tan suli mute sina.”

ni la, soweli li wawa e wile ona, li tawa suli, li kepeken noka wawa ona lon tenpo lili. ona li kama weka tan lukin lon tenpo lili.

jan kasi li toki: “luka pi mi tu o kama supa tawa ona. mi ken tawa e ona lon luka supa mi.” ni la, ona tu li pana e soweli Toto lon jan Towesi. ona li supa e luka ona tawa sijelo lili, li tawa e jan lape lili lon ma pi kasi lape.

ona li awen tawa. lukin la, kasi pi kon moli li kama ala pini. telo nasin tawa li kama sike lili. ni la, ona tu li kama lukin e soweli wawa. soweli li lape wawa lon kasi loje. kon kasi li wawa, li anpa e soweli suli. soweli li kama lape la, ona li weka lili tan selo pi kasi loje ale. selo la, ma pi laso pona li open a!

jan kiwen li pilin ike. taso ona li toki: “mi ken ala pona e ona. ona li suli mute. ni la, mi ken ala tawa e ona. ona li ken awen taso, li ken awen lape taso. ken la, ona li ken kama pilin wawa sama wile ona lon insa pi lape ona.”

jan kasi li toki: “mi pilin ike. soweli wawa li pilin wawa ala. taso pona ona li wawa tawa mi. a wawa! mi o awen tawa.”

ona li tawa e jan lape tawa ma pona lon poka telo. ma ike pi kasi loje li weka pona la, jan lape li kama ala insa e kon kasi ike. jan lili li lon kasi laso anpa pona la, jan kasi en jan kiwen li awen tawa tenpo pi lape ala. kon pi ma pona li ken weka e wawa lape tan jan.


])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(9)]) #v(-10pt) #text(font: "Oz'sWizard", [soweli lili lawa])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan]  kasi li lon poka pi jan lili la, ona li toki: “lukin la, nasin jelo li ken ala weka mute. telo li tawa suli e mi la, mi kama tawa suli sama. ni la, nasin jelo li ken kama lon tenpo lili.”

jan kiwen li wile open e toki. taso tenpo ni la, ona li kute e mu ike suli. jan kiwen li tawa e lawa ona tan ni. (lawa pi jan kiwen li lon ijo insa pi ken tawa. ni li sama ijo ilo pi ken tawa la, tawa ni li tawa pona). ona li kama lukin e soweli nasa. soweli nasa li tawa kulupu. lukin la, ni li soweli alasa jelo. pilin pi jan kiwen la, soweli li alasa e ijo. nena kute soweli li sewi ala, li awen lipu lon lawa. uta ona li open suli. palisa walo ike mute li lon uta. oko ona li loje sama seli. soweli alasa li kama lon poka pi jan kiwen pali la, jan kiwen li kama lukin e soweli pi lili mute lon alasa soweli. soweli lili li wile tawa weka tan soweli alasa. jan kiwen li jo ala e pilin lon insa pi sijelo ona. taso ona li sona e ni: soweli alasa li moli e soweli lili pona ni la, ni li ike.

ni la, jan kiwen li sewi e ilo wawa ona. soweli alasa li kama la, jan li utala e ona. ilo li tu e lawa soweli tan sijelo. sijelo en lawa li tawa sike lon noka jan.

alasa ike li pini la, soweli lili li kama pini e tawa. tenpo la, ona li kama tawa poka pi jan kiwen. nena kute ona li sike lon lawa ona. ona li toki kepeken kalama lili ona:

“sina pona a! sina awen e mi. pona mi li tan sina.”

ni la, jan kiwen li toki: “a! ni li suli ala. o sona: mi jo ala e pilin lon insa pi sijelo mi. ni la, mi wile pona lon tenpo ale. soweli lili taso kin la, mi wile pona.”

soweli lili li kalama: “soweli lili taso anu seme a!? o kute a! mi soweli lawa a! soweli li lili sama mi, li jo e nena kute sike sama mi la, mi lawa e ona ale.”

jan kiwen li anpa pona e sijelo ona tan ona: “a pona! sina ni.”

soweli lawa li toki sin: “sina awen e mi la, pali sina li suli, li kama tan wawa sina.”

tenpo ni la, soweli lili mute li tawa wawa, li kama. ona li kama lukin e soweli lawa ona la, ona li toki kalama:

“a- soweli lawa mi o. pilin mi pi tenpo pini la, sina kama moli. taso pona la, sina kama ala moli a! seme la, sina kama weka tan soweli alasa?” ona ale li anpa mute e sijelo ona tan soweli lawa ona. ni la, lawa pi soweli lili ale li selo e ma.

soweli lawa li kama toki: “jan kiwen nasa ni li moli e soweli ike, li awen e mi. ni la, sina ale o pali e ale pi wile ona.”

soweli lili ale li toki wawa kepeken kalama lili ona: “mi o pali e ni a!” tenpo ni la, soweli Toto li pini e lape. ona li lukin e soweli lili mute la, ona li mu wawa e pilin pona. ona li tawa kulupu pi soweli lili, li musi alasa. soweli lili li tawa poka ale tan alasa ni. ma Kansa la, alasa pi soweli lili li musi mute tawa soweli Toto. ona la, alasa li ike ala.

taso jan kiwen li kama jo e soweli, li awen e ona lon luka ona. ona li toki tawa soweli lili: “o kama sin. o kama sin. pakala o kama ala tan soweli Toto.”

ni la, lawa pi soweli lawa li kama tan poka pi kasi anpa. soweli wawa li toki kepeken kalama pi wawa ala: “ona li moku ala e mi anu seme? sina sona ala sona e ni?”

jan kiwen li toki: “mi ken ala e ni. o pilin ike ala.”

tenpo la, soweli wan en soweli tu en soweli mute li kama. soweli Toto li mu ala. taso ona li lukin weka tan luka pi jan kiwen pali. soweli Toto li sona e kiwen pi selo jan. ante la, ona li wile utala uta e ona. pini la, soweli lili wan li kama toki. soweli lili ante pi nena kute sike la, ona li suli.

ona li wile sona: “sina awen e soweli lawa mi. ni la, mi wile pali e pona tawa sina. mi ken pali e pona seme?”

jan kiwen li toki: “mi sona ala.” taso tenpo ni la, jan pi kasi insa li toki. jan kasi li lukin kepeken insa lawa ona. taso linja kasi taso li lon ni la, ona li ken ala. toki ona li ni: “a! sina ken pali e pona. sina ken awen e soweli pona mi. ona li soweli wawa suli jelo. ona li lape lon ma pi kasi loje lape.”

soweli lili lawa li kalama: “aaa! ona li suli, li wawa a! ona li kama moku e mi ale a! ike a!”

jan kasi li toki: “ala a! pilin pi soweli ni li wawa ala. ni la, ona li wile ala alasa e sina.”

soweli lawa li wile sona: “ni li lon anu seme?”

jan kasi li toki: “soweli wawa kin li toki e ni. kin la, sina soweli pona mi. tan ni la, ona li wile ala pakala e sina. sina awen e ona la, o sona e ni: soweli wawa li pona taso tawa sina ale. mi toki wawa e ni.”

soweli lawa li kama toki: “a- sina toki e ni la, ni li pona tawa mi. taso mi o pali seme?”

“sina lawa e soweli mute anu seme?”

soweli lawa li toki sin: “lawa a! mute pi soweli mi li suli mute mute a!”

“ni la, o kama e ale ona lon ni lon tenpo lili. ona ale o kama e linja suli wan.”

soweli lawa li tawa kulupu ona. ona li wile e kama pi soweli lili ale. soweli lili li kama kute e ni la, ona li tawa ale, li wile kepeken tenpo lili.

jan kasi li toki tawa jan kiwen: “tenpo ni la, o tawa kasi suli lon poka telo. o kepeken ilo sina. o pali e supa tawa. supa tawa o ken tawa e soweli wawa.”

ni la, jan kiwen pali li tawa kasi suli. ona li pali. tenpo lili la, ona li weka e lipu, e palisa tan kasi. ona li pali e supa tan kiwen kasi suli. supa li awen wan kepeken palisa lili. jan pali li pana e sike tu tu tawa supa la, supa li kama supa tawa. pali ona li kepeken tenpo lili taso a! soweli lili li kama lon ona la, pali supa li pini.

soweli lili li kama tan poka ale. ona li mute mute mute a! ona li lili mute, li lili suli, li lili taso, li lili pi mute ala. ona ale li jo uta e linja wan. tenpo ni la, jan Towesi li kama pini e lape suli ona. ona li open e oko la, ona li kama lukin e nasa. ona li lon ala kasi loje, li lon ma pi kasi anpa. poka ona la, soweli lili mute li lon a! soweli lili li lukin e jan lili, li pilin wawa ala lon poka ona. taso jan kasi li toki e ale tawa jan lili. ona li lukin e soweli lili lawa, li toki:

“a- o sona e soweli ni. ona li soweli lawa pi kulupu soweli ni.”

jan Towesi li anpa suli e lawa ona tawa soweli. soweli lawa li anpa lili e sijelo ona tawa jan. ni la, soweli lawa en jan Towesi li kama pilin pona lon poka.

tenpo ni la, jan kasi en jan kiwen li linja e soweli lili, e supa tawa; ona li awen e linja lon soweli lili ale. ona li awen e linja lon supa tawa kin. lon la, supa tawa li suli mute. lon kin la, soweli li lili mute. taso linja li lon soweli ale la, ona kulupu li ken tawa e supa. tawa li wawa la, jan kasi kin en jan kiwen kin li ken lon supa. wawa ni la, soweli lili tawa en supa tawa en jan tawa li tawa ma lape pi soweli suli wawa.

kulupu li kama e soweli wawa lon supa. soweli wawa li suli mute la, ni li wile e pali suli. tenpo sama la, soweli lawa li lawa e tawa kulupu. soweli lili kin li ken kama lape tan kon nasa pi kasi loje la, ona li wile ala awen.

soweli lili li mute. taso open la, ona li ken tawa lili taso e supa tan suli pi soweli wawa. taso jan kiwen kin en jan kasi kin li pana e tawa lon monsi supa. ni la, tawa supa li kama pona. tenpo pi suli ala la, soweli wawa li kama weka tan ma pi kasi loje. ma pi laso pona la, ona li ken kama insa sin e kon pona, e kon kasi ike ala.

jan Towesi li tawa kulupu. soweli lili li awen e soweli wawa la, jan li toki e pona tawa soweli lili ale tan moli ala pi soweli pona ona. soweli suli li pona mute tawa jan Towesi la, ona li pilin pona tan awen ona.

ni la, jan pali en jan kasi li weka e linja awen tan soweli lili. soweli lili ale li tawa weka lon kasi anpa, li tawa tomo ona. tenpo pini la, soweli lili lawa taso li lon.

soweli lawa kin li tawa la, ona li toki: “sina wile e pona tan kulupu mi la, o tawa ma. o kalama. ni la, mi kama kute e sina. ni la, mi kama tawa sina. ni la, mi pana e pona tawa sina. taso tenpo ni la, mi tawa.”

jan ale li toki: “tawa pona a!” soweli lili lawa li tawa weka. jan Towesi li jo awen e soweli Toto. soweli Toto o tawa ala soweli lawa. soweli lawa li ken kama pilin ike tan alasa ni.

soweli lili li weka la, kulupu li kama lon poka pi soweli wawa. ona li awen tawa tenpo pi pini lape ona. jan pi kasi insa li alasa e kili lon kasi suli poka. ona li pana e kili tawa jan lili la, jan Towesi li moku e kili. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(10)]) #v(-10pt) #text(font: "Oz'sWizard", [jan li awen e selo pi ma tomo])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[soweli] wawa la, tenpo lape li awen tan ni: ona li lon poka pi kasi loje lape lon tenpo suli. ona li kama insa e kon kasi ike la, ona li pini e lape lon tenpo kama suli. taso ona li kama open e oko la, ona li kama sona e moli ala ona. ni la, ona li pilin pona mute tan awen ona.

soweli li anpa e monsi ona lon ma, li mu e lape pini ona: “mi tawa kepeken wawa mi ale. taso wawa pi kon kasi li anpa e mi a! sina kama weka e mi kepeken nasin seme?”

kulupu li toki e pali pi soweli lili. soweli lili li pali mute, li awen e soweli wawa. soweli wawa li pilin musi tan ni, li mu e pilin musi. ona li toki:

“pilin mi la, mi suli wawa ike tawa lukin. kasi li lili mute; taso ona li ken kama moli e mi. sama la, soweli lili li lili mute. taso ona li kama awen e mi. nasa mute a! taso kulupu o. mi ale o seme lon tenpo ni?”

jan Towesi li toki: “mi o awen tawa. mi o kama sin lon nasin jelo. ni la, mi ken tawa ma tomo pi suno laso.”

soweli suli li pilin pi lape ala la, ona li pilin pi pona sijelo. ni la, kulupu li open sin e tawa. ona li tawa lon ma pi kasi anpa pona. kasi laso pona li suwi tawa pilin selo. tenpo la, ona li kama lon nasin pi kiwen jelo. ona li open sin tawa ma tomo laso pi jan Osawi suli.

tenpo ni la, nasin jelo li supa pona, li jo e kiwen pona awen. ma poka ale li pona tawa lukin. ni la, kulupu tawa li pilin pona tan weka pi ma kasi. ike ken pi ma monsi en utala ken ona li lon pimeja ona. palisa li sinpin sin e poka nasin. taso palisa ni li kule sama ala palisa pi tenpo pini. tenpo pini la, kule tomo en kule palisa en kule len li laso sama sewi pona pi len ala, li laso sama telo suli pi tawa ala. taso tenpo ni la, kule pi palisa ni li laso sama ala. ona li laso sama kasi sin, li laso sama lipu pi kasi suli, li laso jelo. tenpo lili la, kulupu li kama lon poka tomo pi jan pali pan. tomo li laso kasi sama. kulupu li tawa poka pi tomo mute pi laso lipu lon tenpo suno ni. tenpo la, jan li kama lon lupa tomo, li lukin e kulupu. lukin la, ona li wile toki tawa kulupu. taso jan ala li ni. jan ala li kama lon poka kulupu tan soweli wawa suli. soweli suli li suli ike tawa ona, li pana e ike wawa tawa pilin ona. jan ale ni li jo e len pi laso jelo pona. kin la, ona li jo e len lawa. selo pi len ni li tawa sewi sama len lawa pi kulupu Mankin.

jan Towesi li toki: “lukin la, ni li ma pi jan Osawi. mi ken kama lon ma tomo laso lon tenpo lili.”

jan kasi li toki: “lon. ijo ale pi ma ni li laso sama kasi poka. ma pi kulupu Mankin la, ijo ale li laso sama sewi pi tenpo suno. taso jan pi ma ni li toki ala tawa mi. ni li sama ala jan pi kulupu Mankin. pilin mi la, mi ken ala lape lon tomo pi jan ni.

jan lili li toki: “mi moku e kili mute lon tenpo pini. mi wile kama moku e ijo ante. lukin la, soweli Toto li wile moku. mi o tawa tomo kama. mi o toki tawa jan tomo.”

kulupu li kama tawa tomo pi jan pali pan la, jan Towesi li luka kalama e lupa tomo.

jan li open lili taso e lupa. open lili ni li ken e lukin taso, e tawa ala. jan li toki: “jan lili o. sina wile e seme? soweli suli ni li lon poka sina tan seme?”

jan Towesi li pana e toki: “mi wile awen lon tomo sina lon tenpo pimeja ni. sina la, mi ken ala ken ni? kin la, soweli ni li lon kulupu mi, li pona a! ona li ike ala e sina.”

jan tomo li wile sona: “ona li utala ala anu seme?” ona li suli lili e open lupa.

jan lili li toki: “utala ala a! kin la, ona li pilin wawa ala a! sina en ona li lon poka la, pilin ike sina li ken ala suli sama pilin ike ona. ni li tan pilin wawa ala ona.”

jan tomo li toki: “a!” ona li awen lili, li pilin insa e toki pi jan kama. ona li lukin sin e soweli suli: “ni la, sina ken kama. mi pana e moku, e supa lape.”

ni la, ale kulupu li tawa insa tomo. jan tomo en jan olin ona en jan lili ona tu li lon. noka pi jan olin li kama pakala lon tenpo pini lili. ona li lon supa awen lon sinpin tomo tan ni. kulupu sin kama li nasa tawa jan insa. jan tomo li pana e ijo moku tawa supa moku. jan olin ona li wile sona:

“sina tawa seme?”

jan Towesi li toki: “mi tawa ma tomo pi suno laso. mi wile tawa jan Osawi suli.”

jan pi noka pakala li toki wawa: “suli a! pilin sina la, jan Osawi li wile toki tawa sina anu seme?”

jan Towesi li toki sin: “sina toki e ni tan seme?”

“a! kute la, jan Osawi li wile ala e jan ante lon poka ona. mi tawa ma tomo lon tenpo mute. ma ni li pona wawa, li wawa pona. taso mi kama ala ken lukin e jan Osawi suli. jan li kama lukin e ona la, mi sona ala e jan lukin ni.”

jan pi kasi insa li wile sona: “ona li tawa ala tan tomo ona anu seme?”

“ona li tan tomo lon tenpo ala a! ona li awen lon tomo lawa ona lon ale pi tenpo suno. jan pali ona kin li lukin ala e ona.”

jan Towesi li toki: “ona li sama seme tawa lukin?”

jan pi supa awen li toki: “ni li nasa tawa sona. a! jan Osawi li jan suli pi wawa nasa. ona li ken ante e sijelo ona kepeken wile ona. tan lukin la, jan wan li toki e ona waso. jan ante li toki e ona pi soweli suli. jan ante kin li toki e ona pi soweli suwi. ante la, ona li jan waso pona, li kon jan, li sijelo ante mute pi wile ona. taso jan Osawi lon en sijelo ona lon li seme? jan ala li sona.”

jan Towesi li toki sin: “ni li nasa mute. taso mi wile tawa ona a! mi lukin toki tawa ona. ante la, tawa mi li tan ala.”

jan toki li wile sona: “sina wile tawa jan Osawi tan seme?”

jan pi kasi insa li toki suli: “mi wile e pona lon insa pi lawa mi tan ona.”

jan toki li toki sin: “a! jan Osawi li ken pana e ni. ni li suli ala tawa ona. ona li jo e pona mute mute lon insa pi lawa ona.”

jan kiwen pali li toki: “mi wile e pilin lon insa pi sijelo mi tan ona.”

jan toki li pana sin e toki: “ni kin li suli ala tawa ona. pilin lili en pilin suli en pilin ante mute li lon tomo ona.”

soweli wawa pi pilin wawa ala li toki: “mi wile e pilin wawa tan ona.”

jan li toki: “tomo lawa pi jan Osawi la, poki lon. wawa pilin lon lon insa. supa pi kiwen mani jelo li selo e poki. tan ni la, wawa li ken ala weka tan poki. ona li ken pana e ni tawa sina.”

jan Towesi li toki: “mi wile kama sin lon ma Kansa tan ona.”

ni li sin tawa jan toki la, ona li wile sona: “ma Kansa li lon seme?”

jan Towesi li toki pi pilin ike: “mi sona ala. taso tomo mi li lon ona. mi sona ala e nasin tawa ona. taso pilin mi la, nasin o lon.”

jan li toki: “ken suli a! o sona: jan Osawi li ken pali e ale. ni la, ona li ken kama sona e nasin tawa sina. taso open la, o tawa ona. tawa ni li pali mute. jan Osawi li wile ala lukin e jan ante. kin la, ona li pali kepeken nasin pi ona taso. a! taso sina a! sina wile e seme?” toki ni li tawa soweli Toto. soweli li tawa e linja monsi ona taso tan ni: ona li ken ala toki.

pali moku li kama pini la, jan tomo li kalama e ni. jan en soweli li kama lon supa moku. jan Towesi li moku e ko kasi seli pona, e ko pi sike waso, e pan walo pona. ona li moku pona. soweli suli li moku lili e ko kasi. taso moku ni li pona ala tawa ona. toki ona la, moku pi kasi ni li pona tawa soweli pali tawa, li pona tawa ala soweli wawa suli. jan pi kasi insa en jan kiwen pali li moku ala a! soweli Toto li moku lili e moku ale. moku ni li pona la, ona li kama pilin pona.

jan tomo li ken e supa lape tawa jan Towesi. soweli Toto li kama supa lon poka ona. soweli wawa li awen e lupa pi tomo lape. ni la, ijo ala li ken ike e lape jan. jan kasi en jan kiwen li awen lon sinpin tomo, li kalama ala lon ale pi tenpo pimeja. lon la, ona tu li ken ala lape.

tenpo pi suno sin la, kulupu li open sin e tawa. tenpo lili la, ona li kama lukin e suno laso tan poka sinpin sewi.

jan Towesi li toki: “lukin la, ni li ma tomo pi suno laso a!”

ona li awen tawa la, suno laso li kama wawa, li kama wawa a! pilin la, tawa ona li kama pini. taso ni li wile e tenpo. ona li kama lon sinpin suli pi ma tomo la, suno li kama sewi lon sewi, li kama anpa lili. sinpin suli li suli sewi mute, li suli insa kin. sinpin li laso wawa walo.

nasin jelo li kama pini la, kulupu li kama lon lupa sinpin suli. kiwen laso mani li lon selo lupa la, suno li suno e kiwen ni. kiwen li suno wawa tan ni. ni li nasa e lukin. oko sitelen pi jan kasi kin la, wawa suno li nasa e lukin.

ilo poki kalama li lon poka lupa. jan Towesi li luka e nena pali ilo. ni la, kalama lili kiwen li kama tan insa ilo. lupa sinpin li kama open kepeken tenpo suli. kulupu li tawa insa. insa sinpin li sina tomo suli. supa sewi li tawa sewi kepeken selo sike. sinpin ale li jo e kiwen laso mani mute a, li suno tan kiwen ni!

kulupu li kama lon sinpin pi jan wan. ona li lili sama jan pi kulupu Mankin. len ona ale li laso sama kiwen pi ma tomo. selo ona kin li laso lili. poka ona la, poki suli laso li lon.

ona li kama lukin e jan Towesi, e jan poka, e soweli poka la, jan laso li wile sona: “sina wile e seme lon ma tomo pi kiwen laso suno?”

jan Towesi li toki: “mi wile toki tawa jan Osawi suli.”

sin pi toki ni li wawa tawa jan laso la, ona li anpa lon supa monsi ona. ona li toki insa e nasa ni.

nasa ni la, ona li tawa e lawa ona tan poka tawa poka. “jan li toki ala e ni tawa mi lon tenpo sike mute. jan Osawi li wawa suli, li wawa ike. ona li ken pana e toki sona, e ijo pona. taso sina kama tawa ona tan musi taso la, ona li ken pilin ike tawa sina. ona li ken pakala wawa e sina ale.”

jan kasi li toki: “taso mi kama ala tan musi. mi kama tan wile suli. kute mi la, jan Osawi li jan pona pi wawa nasa.”

jan laso li toki: “ona li ni. ona li lawa sona, li lawa pona e ma tomo. taso jan li toki e ijo pi lon ala la, ona li ike wawa. jan li wile e musi taso tan ona la, ona li ike kin. jan pi mute ala li kama wile lukin e ona. mi jan awen lon lupa pi ma tomo. sina wile tawa jan Osawi suli la, mi o nasin e sina tawa tomo suli ona. taso open la, o kepeken ilo lukin ni lon oko sina.”

jan Towesi li wile sona: “tan seme?”

“ilo lukin li len e oko, li awen e oko. sina len ala e oko sina la, wawa pi suno laso en wawa pi pona laso li pakala e oko sina. jan ale kin pi ma tomo li kepeken ilo lukin lon tenpo ale. ilo li awen lon lawa sina, li ken ala weka. jan Osawi li kama e ni lon tenpo open pi ma tomo. mi taso li jo e ilo open, li ken weka e ilo lukin.”

jan awen li open e poki suli. jan Towesi li kama lukin e ilo lukin mute. ilo suli en ilo lili en ilo pi selo mute li lon. ilo ale la, kiwen laso li ken e lukin. jan awen li alasa e ilo tawa jan Towesi. ona li kama e ilo pi suli pona, li pana e ni tawa oko pi jan Towesi. linja tu pi jelo suno li awen e ilo lon monsi lawa. jan awen li awen e linja kepeken ilo open ona. ilo lukin li lon lawa la, jan Towesi li ken ala weka e ilo. taso ona li wile ala e pakala lon oko tan wawa laso pi ma tomo la, ona li wile ala weka e ilo. ni la, jan Towesi li toki ala e wile pi weka ilo.

jan laso li ilo lukin e jan kasi, e jan kiwen, e soweli wawa, e soweli lili Toto kin a! ilo ale li kama awen tan ilo pi jan awen.

ni la, jan awen kin li kepeken ilo lukin. tenpo ni la, ona li ken pana e nasin tawa tomo suli, li toki e ni. ona li kama jo e ilo open suli tan sinpin, li open e lupa sin kepeken ilo ni. kulupu li tawa lon poka monsi ona, li tawa nasin pi ma tomo. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(11)]) #v(-10pt) #text(font: "Oz'sWizard", [ma tomo li suli, li pona])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[kulupu] li tawa insa pi ma tomo. ilo lukin laso li awen e oko ona. taso awen la, wawa pi ma tomo en pona pi ma tomo li nasa e lukin lon tenpo open. nasin ale la, tomo mute li lon, li kiwen laso. kiwen laso mani mute li suno lon sinpin tomo tan suno sewi. lupa tomo la, kiwen laso li ken e lukin. sewi kin li laso lili sama kiwen, li laso sama ala sewi pi ma ante. suno sewi li pana e suno laso, e linja suno laso.

jan mute li lon: jan lili en jan suli en jan tawa en jan awen. jan ale li jo e len laso, e selo laso. jan ni li lukin e jan Towesi, e kulupu nasa ona, li wile sona e nasa sin ni. jan lili li kama lukin e soweli suli la, ona li tawa wawa, li tawa lon poka monsi pi mama ona. taso jan ala li toki tawa kulupu sin. tomo esun mute li lon nasin. jan Towesi li lukin e insa la, ijo insa ale li laso. suwi laso en sike pan laso li lon esun. sama la, len noka laso en len lawa laso en len ante laso li lon. tomo wan la, jan li esun e telo suwi laso. jan lili li kama, li wile jo e telo suwi. ona li pana e mani la, jan Towesi li lukin e mani laso ona.

lukin la, soweli ala a li lon ma ni! jan li wile tawa e ijo la, jan li kepeken poki tawa laso. ona taso li pana e ijo lon poki, li tawa e poki. lukin la, jan ale li pilin pona, li pona, li jo e ale pi wile ona.

jan awen li tawa lon nasin lon poka tomo. kulupu li tawa lon nasin sama ona. ona li kama lon insa pi ma tomo la, ona li lon tomo suli. tomo ni li tomo lawa, li tomo pi jan Osawi wawa suli. jan utala li lon lupa pi tomo ni. len pali ona li laso. anpa sinpin ona la, linja suli li lon, li laso.

jan awen li toki tawa ona: “kulupu ni li tan ma ante. ona li wile tawa jan Osawi suli.”

jan utala li toki: “o kama lon insa. mi pana e toki sina tawa ona.”

ni la, kulupu li tawa lupa suli tomo, li kama lon tomo insa suli. len li lon ma, li laso. supa mute li jo e kiwen mani suno, li laso. jan utala li wile ala e jaki lon tomo la, ale kulupu li tawa e noka lon supa len anpa laso. ona li weka e jaki tan noka la, ona li ken lon insa. ona li kama lon supa monsi la, jan utala li toki e wile pona:

“o awen. o pilin pona. mi tawa lupa pi tomo lawa. mi toki e kama sina tawa jan Osawi.”

kulupu li awen lon tenpo suli. tenpo kama la, jan utala li kama sin. jan Towesi li wile sona:

“sina kama lukin e jan Osawi anu seme?”

jan utala li toki: “a! ala. tenpo ala la, mi kama lukin e ona. taso ona li lon monsi pi len sinpin la, mi toki e toki sina tawa ona. ona li toki tawa mi. sina wile la, sina ale li ken toki tawa ona. taso sina wan taso o tawa tomo ona lon tenpo wan. tenpo suno wan la, sina wan li ken tawa ona. tan ni la, sina wile awen lon tomo suli ni lon tenpo suno mute. mi pana e tomo lape tawa sina. sina ken awen pona lon ona. sijelo sina li ken lape pona tan pini pi tawa suli sina.”

jan Towesi li toki: “toki sina li pona. jan Osawi li pana e awen pona.”

jan utala li pana e ilo kalama lili tawa uta, li kalama ilo. tenpo ni la, jan pi lili tenpo li kama. len ona li laso, li suno lili, li pona tawa lukin. linja lawa ona li laso. oko ona li laso. ona li anpa pona e sijelo ona lon sinpin pi jan Towesi. ona li toki: “o kama. mi nasin e sina tawa tomo sina.”

ni la, jan Towesi li toki e weka ona tawa kulupu. ona li kama jo luka e soweli Toto, li tawa lon monsi pi jan laso lili. tenpo luka tu la, ona li tawa lon tomo nasin. tenpo tu wan la, ona li tawa sewi lon nasin pi tawa sewi. pini la, ona li kama lon tomo lape lili lon poka sinpin pi tomo suli lawa. tomo ni li lili suwi a! supa lape li pona a tawa lape, li suwi a tawa pilin! len supa insa li laso, li suno lili. len supa selo li laso. insa pi ale tomo la, ilo namako lili li pana e kon laso suwi. kon ni li pona tawa nena. kon laso li kama anpa la, poki ilo pona li poki e ona. kasi suwi pona li lon lupa lukin, li laso. poki sinpin la, lipu lili mute li lon, li laso. jan Towesi li open e lipu ni la, sitelen musi laso li lon, li kama e mu pi pilin pona tan ona. sitelen li musi mute.

poki awen la, len pona mute li lon, li laso. len li suno lili, li suwi tawa pilin, li namako. suli pi len ale li pona a tawa suli sijelo pi jan Towesi!

jan laso li toki: “o pilin pona lon tomo sina ni. sina wile e ijo la, o mu e ilo mu. open pi tenpo suno kama la, jan Osawi li ken e sina lon poka ona.”

jan laso lili li tawa weka, li kama tawa kulupu. ale kulupu la, jan lili li nasin e ona tawa tomo lape pona. tomo lape ona ale pi tomo suli lawa li pona wawa. jan kasi la, pona pi tomo ni li suli ala. ona li kama wan taso lon tomo lape ona la, ona li awen lon lupa, li pali ala, li tawa ala. ona li awen tawa tenpo suno kama. ona li kama supa la, lape li kama ala tawa ona. ni la, ona li kama ala supa. ona li ken ala pini e oko ona. ni la, ona li awen lukin e pipi lili lon tenpo pimeja ale. pipi li namako e sinpin tomo kepeken linja ona. pona pi tomo ni li suli ala tawa jan kasi. jan kiwen pali li supa lon supa lape ona tan nasin ona pi tenpo pini. tenpo pini la, ona li kiwen ala, li sijelo. ona li awen e ni lon sona. taso ona li ken ala kama lape la, ona li awen tawa e luka ona, e noka ona. ni la, pona tawa anu ike tawa li lon sona ona. soweli wawa li wile e ma lape pi lipu kasi mute, e ma kasi. ona li wile ala lon tomo. taso ona li sona e nasin pona la, ona li wile ala suli e pilin ike ona. ni la, ona li tawa supa lape, li sike e sijelo ona. ona li mu suwi la, ona li kama lape lon tenpo lili.

suno li sin la, pini moku la, jan laso lili li kama tawa jan Towesi. jan laso li len laso e jan Towesi kepeken len suno suli pi namako mute. jan Towesi li kepeken len awen laso kin. ona li pana e linja len laso wan lon monsi lawa pi soweli Toto. ni li pini la, ona li tawa tomo pi jan Osawi.

open la, ona li kama lon tomo kulupu suli. tomo ni la, jan suli mute pi tomo lawa li lon. ona ale li jo e len pi mani mute. tenpo ale la, ona li ken toki taso. tenpo ala la, ona li ken pali ante. open pi tenpo suno ale la, ona li kama tawa tomo pi jan Osawi. taso ona li ken ala tawa insa, li ken ala lukin e jan Osawi. jan Towesi li kama la, kulupu ni li lukin e ona, li wile sona e sin kama ni. jan wan li toki kepeken kalama lili:

“kute la, sina wile tawa jan Osawi. sina wile lukin e ona anu seme?”

jan lili li toki: “wile. ona li ken e ni la, mi tawa ona.”

jan utala li toki: “a! ona li ken e ni.” jan utala ni li pana e toki pi jan Towesi tawa jan Osawi lon tenpo pini: “taso jan li wile tawa jan Osawi la, ni li ike tawa ona. lon la, ona li pilin ike utala lon tenpo pi toki sina. wile ona la, mi o weka e sina tawa ma sina. taso wile sona ona la, mi toki e sina tan lukin mi. mi toki e len noka suno sina la, ni li suli tawa ona. pini la, mi toki e sitelen lili suno pi sinpin sewi sina. sitelen ni li tan uta pi jan wawa. jan Osawi li kute e ni la, ona li ante e pilin ona. ona li kama wile e kama sina.”

tenpo ni la, ilo mu li mu. jan laso lili li kama, li toki tawa jan Towesi: “mu ni li toki e kama sina. sina taso o tawa tomo pi jan Osawi.”

ona li open e lupa lili. jan Towesi li tawa lon lupa, li pilin wawa. ona li kama lon tomo pi pona wawa. tomo ni li suli, li sike. sewi tomo li sewi mute, li sike. kiwen mani laso mute a li lon sinpin ale, li lon supa sewi, li lon supa anpa! insa pi supa sewi la, suno suli li lon. ilo suno ni li suno wawa la, sike suno li suno wawa sama lon sewi ma. ni li suno e kiwen laso la, kiwen li pana e suno namako pona a!

taso ijo wan li nasin e lukin pi jan Towesi: supa monsi suli li lon insa pi ale tomo, li kiwen laso. sama ale ante pi tomo ni la, kiwen mani laso li lon ona, li suno. lon supa ni la, lawa pi suli mute li lon. sijelo ala en noka ala en luka ala li lon anpa ona. linja ala li lon lawa ni. taso oko en nena en uta li lon. lawa ni li suli mute mute a!

jan Towesi li lukin e ni, li pilin wawa ala tan suli ni la, oko li tawa. tenpo la, ona li kama lukin e jan Towesi. oko li wawa lukin. tenpo ni la, uta li tawa. jan Towesi li kama kute e kalama jan.

“mi jan Osawi suli wawa. sina seme? sina tawa mi tan seme?”

pilin pi jan Towesi la, kalama ike suli li ken kama tan ijo suli. taso pona la, kalama pi lawa suli li ike ala. ni la, ona li wawa e pilin ona, li toki:

“mi jan Towesi lili pi wawa ala. mi wile e pona tan sina.”

oko li awen lukin e jan lili lon tenpo tawa. tenpo la, kalama li toki.

“sina kama jo e len noka suno tan seme?”

jan lili li toki: “tan jan Laso ike pi wawa nasa. tomo mi li kama anpa wawa la, ona li moli.”

kalama li awen toki: “sitelen lili li lon sewi sinpin sina. sitelen li tan seme?”

jan lili li pana e sona ona: “tan jan Unu pona pi wawa nasa. ona li wile e mi tawa sina la, ona li uta e ni pi lawa mi.”

awen la, oko li lukin wawa e jan lili. lukin oko la, jan li toki e lon. ni la, jan Osawi li wile sona: “sina wile e seme tan mi?”

jan Towesi li toki e pilin ona: “o pana e mi tawa ma mi. ma mi li ma Kansa, li jo e jan Me, e jan Enwi. ona li jan suli mi. ma sina li pona tawa lukin. taso ma sina li pona ala tawa pilin mi. kin la, jan Me li pilin ike tan weka mi a! pilin mi la, mi weka tan ona lon tenpo pi suli ike.”

oko li pini, li open, li pini, li open, li pini, li open. oko li tawa, li lukin e sewi, li lukin e anpa. ona li tawa pi nasa mute, li lukin e ale tomo. pini la, ona li lukin sin e jan Towesi.

jan Osawi li toki: “mi o pali e wile sina tan seme?”

“tan wawa sina. mi wawa ala. sina jan suli a pi wawa nasa! mi jan lili taso.”

jan Osawi li toki sin: “taso sina moli e jan ike Laso pi wawa nasa. ni li wile e wawa.”

jan Towesi li toki: “ni li kama taso. ni li tan ala wile mi.”

lawa li toki: “a! o kute. mi toki e wile mi. wile sina la, mi o pana sin e sina tawa ma Kansa. taso ni li nasin ala. sina ken ala wile e pali mi tan ala pali sina. jan li wile e ijo lon ma ni la, ona o pana e ijo ante. sina wile tawa ma sina kepeken ken nasa mi la, sina o pali tawa mi. sina pana e pona tawa mi la, mi pana e pona tawa sina.”

jan lili li wile sona: “mi o pali seme?”

jan Osawi li kama toki: “o moli e jan Jelo pi wawa nasa. ona li lon ma Jelo.”

nasa ni la, jan Towesi li kalama: “taso mi ken ala a!”

“sina moli e jan Laso ike. sina jo e len noka suno. wawa suli li lon insa ona. jan ike wan taso pi wawa nasa li lon ma ni. sina ken toki e moli ona tawa mi la, mi pana e sina tawa ma Kansa. taso sina ken ala ni la, mi ni ala.”

tenpo ni la, jan lili li pana e telo tan oko. pilin ona pi tenpo pini la, jan Osawi li ken pona e ale. taso ona li ni ala la, jan lili li pilin ike. oko pi lawa suli li pini sin, li open sin. ona li lukin e jan lili tan wile suli. ken la, pilin pi jan Osawi la, jan lili li ken a, li wile ala taso a!

taso jan lili li toki pi pilin ike: “mi kama moli e ijo ala tan wile mi. ante la, mi ken moli e jan ike wawa kepeken nasin seme? sina suli. sina wawa. sina ken ala moli e ona la, sina wile e pali mi tan seme?”

lawa li toki: “mi sona ala. taso ni li toki mi. jan ike li moli ala la, sina ken ala tawa jan suli sina. o awen sona. jan ni pi wawa nasa li ike. li ike mute. ona o moli. tenpo ni la, o tawa. pali sina li pini ala la, o wile ala tawa mi.”

pilin pi anpa ike la, jan Towesi li kama weka tan tomo pi jan Osawi. soweli wawa en jan kasi en jan kiwen li awen tawa ona, li wile sona e toki pi jan Osawi la, ona li tawa kulupu. ona li awen pilin ike, li toki: “pona li ken ala tawa mi. mi moli ala e jan Jelo ike pi wawa nasa la, jan Osawi li ken ala e mi tawa ma mi. mi ken ala moli e ona a!”

ona ale li wile pona e pilin. taso ona li sona ala pona e pilin. ni la, jan Towesi li tawa tomo ona, li kama supa lon supa lape. ona li mu e pilin ike, li pana e telo tan oko. ona li kama lape lon ni.

tenpo suno kama la, jan utala laso li kama tawa jan pi kasi insa. ona li toki:

“o kama. jan Osawi li wile e kama sina.”

ni la, jan kasi li tawa lon monsi pi jan utala. ona li kama tawa tomo pi jan Osawi. lon supa monsi pi kiwen suno mute la, meli pi pona mute li lon. len ona li suli, li laso, li suno suwi. lon lawa la, ona li jo e linja laso pi sike mute. kiwen mani li len lili e linja ni. luka waso li tan monsi sewi ona, li kule pona a! luka waso li sama lipu la, kon pi lili mute li tawa e ona.

meli pona la, jan kasi li lukin anpa pona e sijelo ona pi kasi insa. ni la, meli suwi li lukin e jan kasi, li toki:

“mi jan Osawi suli wawa. sina seme? sina tawa mi tan seme?”

a! tenpo pini la, jan Towesi li toki e lawa suli. taso ni li lawa suli ala, li meli. ni li nasa tawa jan kasi. taso ona li toki tawa meli kepeken pilin wawa:

“mi jan pi kasi insa. kasi taso li lon ale insa mi. tan ni la, mi jo ala e pona lon insa pi lawa mi. mi tawa sina la, mi wile e pona lon lawa mi tan sina. mi wile ala e kasi taso lon insa. ni la, mi ken kama jan sama jan ante pi ma sina.”

meli li wile sona: “mi o pali e wile sina tan seme?”

“tan sona sina. tan wawa sina. kin la, jan ante ala li ken.”

jan Osawi li toki: “jan ante li pana ala e pona tawa mi la, mi pana ala e pona tawa ona. taso o sona. sina moli e jan Jelo ike pi wawa nasa lon ma Jelo la, mi pana mute e pona mute tawa lawa sina. pona li wawa mute lon lawa sina la, sina kama jan pi sona nanpa wan lon ma Osawi.”

ni li sin tawa jan kasi: “sona mi la, sina toki e moli pi jan ike tawa jan Towesi.”

“mi ni. jan ike li moli la, tan pi moli ona li suli ala tawa mi. taso ona li moli ala la, mi pana ala e pona tawa lawa sina. tenpo ni la, o tawa. pali sina li pini ala la, o kama ala tawa mi.”

pilin anpa la, jan kasi li kama sin tawa kulupu pona ona. ona li toki e toki pi jan Osawi tawa kulupu. ona li toki e jan Osawi la, ona li toki e lawa suli ala, li toki e meli a! ni li sin tawa jan Towesi, li nasa lili.

“mi la, pilin o tawa jan kiwen taso ala. pilin o tawa jan Osawi kin.”

tenpo suno kama la, jan utala li kama tawa jan pi sijelo kiwen. ona li toki:

“o kama. jan Osawi li wile e kama sina.”

ni la, jan kiwen pali li tawa lon monsi pi jan utala. ona li kama lon tomo pi jan Osawi. meli pona anu lawa suli la, ona li sona ala e kama pi jan Osawi. taso wile ona la, jan Osawi o meli. ona li pilin e ni: “jan Osawi li lawa la, ona li ken ala pana e pilin a! pilin li lon ala lawa. ni la, mi ken ala pilin kepeken lawa. taso jan Osawi li meli pona la, mi toki e wile mi tawa pilin. kute mi la, meli pona ale li jo e pilin pona.”

taso jan kiwen li kama lon insa tomo la, jan Osawi li sama ala lawa, li sama ala meli. jan Osawi li soweli pi ike suli. jan kiwen la, soweli li suli sama jan kiwen tu. supa monsi laso li lon anpa soweli, li lili mute lon monsi suli soweli. sinpin soweli li jo e palisa suli lon nena, e oko tu tu wan. luka tu tu wan en noka linja tu tu wan li lon sijelo ona. linja mute mute li lon ale pi sijelo ona. lukin la, ike ona li ken ala kama mute. pona la, jan kiwen li jo ala e pilin lon tenpo ni. ante la, pilin ona li kama kalama wawa tan ike suli ni. taso kiwen taso li lon sijelo ona la, jan kiwen li pilin ike ala. taso lon la, ale ni li kama ala sama wile ona.

soweli suli li toki kepeken kalama suli wawa: “mi jan Osawi suli wawa. sina seme? sina tawa mi tan seme?”

“mi jan pi pali kasi. sijelo mi li kiwen. tan ni la, mi jo ala e pilin lon insa pi sijelo mi. mi ken ala olin. pona sina la, o pana e pilin tawa mi. o sama pi jan ante e mi.”

soweli ike li wile sona: “mi o pali e ni tan seme?”

jan pali li toki: “tan wile mi. kin la, sina taso li ken ni.”

lon ni la, jan Osawi li pana e mu anpa ike. taso ona li kama toki: “sina wile e pilin la, sina o pali tawa ona.”

jan kiwen li wile sona: “pali seme?”

soweli wawa li toki: “jan Towesi li wile moli e jan Jelo ike pi wawa nasa. o pali sama lon poka ona. jan ike li moli la, o kama tawa mi. mi kama pana e pilin tawa sina. pilin sina o suli mute, o pona mute, o olin mute tawa ale pi ma Osawi.”

ni la, jan kiwen li kama sin lon kulupu pona ona, li pilin ike. ona li toki e jan Osawi la, ona li toki e soweli suli ike. kulupu li sona ala e selo ale pi jan suli wawa ni, li wile sona. soweli pona li toki:

“jan Osawi li soweli lon kama mi la, mi wile mu wawa tawa ona. ni li kama ike e pilin ona la, ona li pali e wile mi. ona li meli la, mi wile tawa wawa lon sewi ona. ni li kama e pali ona tawa wile mi. ona li lawa suli la, mi ken musi kepeken ona. ona li sama sike tawa mi. mi tawa mute e ona lon ale pi tomo ona la, ona li kama pana e pona tawa mi mute. ni la, sina ale o pilin pona. ale li kama pona.”

tenpo suno kama la, jan utala laso li kama e soweli wawa tawa tomo pi jan Osawi.

soweli li tawa insa kepeken tenpo lili. ona li lukin e insa la, ona li lukin e nasa ni: seli sike suno li lon supa monsi. seli li suno wawa la, soweli li wile ala awen lukin e ona. seli li pakala e jan Osawi anu seme? soweli li sona ala, li tawa seli. taso ona li lon poka seli la, seli li wawa mute, li pana e pilin seli ike. seli li pakala e linja suli pi sinpin soweli. ni la, soweli li pilin pi ike wawa, li tawa sin, li kama lon poka pi lupa tomo.

tenpo ni la, toki li kama tan seli sike. toki li kalama lili, li wawa. ona li toki e toki ni:

“mi jan Osawi suli wawa. sina seme? sina tawa mi tan seme?”

soweli li toki: “mi soweli wawa pi pilin wawa ala. mi pilin pi wawa lili tawa ale. mi wile e wawa suli lon pilin mi la, mi kama tawa sina. ni la, mi ken kama soweli lawa lon.”

jan Osawi li wile sona: “mi o pana e wawa tawa pilin sina tan seme?”

“wawa ale la, sina jan pi wawa nasa suli. jan ante li kama ala suli sama. wawa sina taso li ken pana e ijo pi wile mi.”

seli sike li kama suno wawa lon tenpo lili wan. ni li pini la, ona li toki: “jan ike Jelo pi wawa nasa li moli la, o pana e sona pi moli ni tawa mi. ni la, mi kama pana e wawa tawa pilin sina. taso jan ike li awen la, o awen pilin wawa ala.”

toki ni la, soweli li pilin utala. taso ona li ken ala toki. ona li awen, li lukin e seli sike la, seli li kama seli wawa. tan ni la, soweli li tawa monsi, li tawa weka pi tomo ni. kulupu li awen tawa tenpo pi kama ona la, ona li pilin pona. ona li toki e tenpo toki ona tawa kulupu pona.

jan Towesi li pilin ike, li wile sona: “mi o pali seme?”

soweli li toki: “pali wan taso li ken: mi o tawa ma Jelo. mi o alasa e jan ike Jelo. mi o moli e ona.”

jan lili li toki: “mi ni ala la, seme li kama?”

soweli li toki: “ni la, mi ken ala pilin wawa.”

jan kasi li toki: “ni la, mi ken ala jo e pona lon lawa mi.”

jan kiwen li toki: “ni la, mi ken ala jo e pilin lon sijelo mi.”

jan Towesi li toki: “ni la, mi ken ala tawa jan mi Me tawa jan mi Enwi.” ona li kama pana e telo tan oko.

jan laso lili li kama, li kalama: “o awen a! telo oko li kama lon len laso pona sina la, telo li jaki e len.”

ni la, jan Towesi li weka e telo tan oko. ona li toki: “pilin la, mi o lukin pali sama wile pi jan Osawi. taso mi wile ala moli e jan a! mi sona e ni. ni li ken kama e mi tawa jan Me la, mi awen wile ala moli e jan.”

soweli suli li toki: “mi tawa lon poka sina. taso mi pilin wawa ala. tan ni la, mi ken ala moli e jan ike wawa.”

jan pi kasi insa li toki: “mi kin li tawa. taso pona ala li lon lawa mi la, mi ken ala pali pona.”

jan kiwen pali li toki: “mi jo ala e pilin. tan ni la, mi ken ala pilin e wile moli tawa jan ike. taso sina tawa la, mi tawa kin.”

toki ni la, kulupu li kama wile tawa lon open pi tenpo suno kama. jan kiwen li tawa e ilo ona lon kiwen la, ilo li kama pona, li kama ken tu pona e ijo. jan kiwen li pana e telo ko tawa sijelo ona la, ken tawa ona li kama pona. jan pi kasi insa li insa e linja kasi sin lon sijelo. jan Towesi li pana e kule sin lon oko pi jan kasi la, jan kasi li kama lukin pona. jan laso lili li awen pona tawa kulupu, li pana e moku pona tawa poki pi jan Towesi. ona li pana e poki lili kalama tawa anpa lawa lon soweli Toto, li awen e poki kepeken linja laso.

jan Towesi en soweli Toto li tawa supa lape lon tenpo lili. ona li lape pona lon ale pi tenpo pimeja. suno li sin la, waso laso li mu wawa. waso ante li mu lili, li pana e sike laso. mu li pini e lape. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(12)]) #v(-10pt) #text(font: "Oz'sWizard", [kulupu li alasa e jan ike])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] utala pi linja sinpin laso li nasin e kulupu lon ma tomo laso. ona ale li tawa selo ma, li kama lon tomo pi jan awen. jan awen pi selo ma li open e ilo lukin, li weka e ilo laso ni tan lawa ale. ona li pana e ilo tawa poki. ona li open pona e lupa pi selo ma la, kulupu pona li ken tawa.

jan Towesi li wile sona: “mi wile tawa jan ike Jelo lon ma Jelo la, mi o tawa lon nasin seme?”

jan awen li toki: “nasin ala li lon. jan ala li wile tawa ma ni.”

jan Towesi li awen wile sona: “ni la, mi o alasa seme e ona?”

jan laso li pana e sona: “ni li wile e suli ala. ona li sona e kama sina pi ma ona la, ona li kama alasa e sina a! ona li kama lawa ike e sina ale.”

jan kasi li toki: “ken la, ni li kama ala. mi wile pakala e ona.”

jan awen pi ma tomo li toki: “a- ni li ante. ona li kama ala pakala lon tenpo pini. ni la, toki mi li kama tan pilin mi. ona li kama ala pakala la, ona li lawa ike e sina sama tenpo pini ale. ike ona en wawa ona la, o awen e sina. ona li wile ala ken e pali sina, e pakala ona. suno li open e tawa lon poka ma wan la, o awen tawa poka ni. sina ni la, sina kama lon jan wawa ike.”

kulupu li toki e pilin pona tawa jan awen. ona li open e tawa, li tawa suno open. ona li tawa lon ma pi kasi anpa pona. kasi kule lili li lon ni, li lon ni. jan Towesi li awen jo e len pona pi tomo lawa. ona li pana e len tawa sijelo ona la, len li laso. taso tenpo pi tawa ni la, len ni li laso ala, li walo taso. ni li nasa tawa jan Towesi. sama la, linja len pi soweli Toto li laso lon tenpo pini, li walo taso lon tenpo ni a!

tenpo lili la, ma tomo laso li lon weka kulupu. kulupu li awen tawa la, ma li kama supa ala, li kama nena tan ni: tomo li lon ala ma ni. jan ala li pali lon ma ni la, supa ala li lon.

suno li tawa, li tawa sewi, li lon sewi, li kama anpa. kasi suli ala li lon, li ken e pimeja la, suno li suno e sinpin sijelo, li seli e sijelo. pimeja li kama lon tenpo kama. taso jan Towesi en soweli lili en soweli suli li kama wile e lape lon tenpo ni pi pimeja ala. ona li kama anpa lon kasi anpa, li kama lape. jan kiwen en jan kasi li lukin e ma, e ken ike, li awen.

jan ike Jelo pi wawa nasa li jo e oko wan taso. taso oko ni li wawa a, li sama ilo lukin wawa, li ken lukin e ale ma! ni la, ona li lon lupa pi tomo jelo suli ona la, ona li lukin, li kama oko e jan Towesi lape, e kulupu pi jan Towesi kin. kulupu li lon weka a! taso jan oko pi ma Jelo ni li pilin ike, li pilin utala tan kama kulupu. tan ni la, ona li kama jo e ilo kalama lili tan anpa pi lawa ona. ona li uta e ilo, li kon e ilo. ilo li mu.

mu ni la, soweli mute pi alasa kulupu li kama kepeken tenpo ala. noka soweli li suli, li wawa. oko ona li utala lukin. kiwen wawa li lon insa uta ona.

jan ike li toki: “o tawa kulupu ni. o pakala wawa e ona.”

soweli lawa pi kulupu soweli li wile sona: “kute la, sina wile ala lawa e ona. ni li lon ala lon?”

jan li toki: “lon. sijelo pi jan wan li kiwen. sijelo pi jan wan li kasi. jan wan li jan lili. soweli wawa kin li lon. ona ale li pona ala tawa pali la, mi wile ala lawa e ona. ni la, o pakala mute e ona.”

soweli li toki: “mi ni.” ona li tawa kepeken wawa suli. kulupu suli li ni sama.

pona suli la, jan pi kasi insa en jan kiwen li lape ala, li kute e kama soweli.

jan kiwen pali li toki: “ni li utala pi mi wan a! o awen lon monsi mi. ona li kama tawa mi la, mi lon ona a!”

ona li jo e ilo kasi lon luka ona.

jan kiwen pali li toki: “ni li utala pi mi wan a! o awen lon monsi mi. ona li kama tawa mi la, mi lon ona.”

ona li jo e ilo kasi ona. ona li pona wawa e ilo lon tenpo pi ma tomo. soweli lawa li kama la, jan kiwen li tawa e luka. ona li weka e lawa soweli tan sijelo soweli kepeken ilo. soweli li kama moli lon tenpo sama a! ona li tawa sin e ilo la, soweli ante li kama, li kama moli kin tan ilo wawa. soweli mute mute li kama. tenpo mute mute la, soweli li kama moli. ni la, sijelo pi soweli moli li kama nena suli lon sinpin pi jan kiwen.

ni li pini la, jan li anpa e ilo. ona li kama lon poka pi jan kasi. jan kasi li toki tawa ona: “jan poka mi o. utala ni li utala pona.”

ona tu li awen tawa lape pini pi jan Towesi. suno li kama sin la, jan lili li pini e lape. ona li kama lukin e nena pi soweli moli la, ona li pilin ike a! taso jan kiwen li toki e tenpo pini. jan Towesi li toki e pilin pona tan moli ona ala. ona li kama moku pona. ni la, kulupu li open sin e tawa.

tenpo sama la, jan pi wawa nasa li kama lon lupa pi tomo jelo lawa ona. ona li kepeken oko ona wawa wan. ona li oko e moli pi soweli alasa ona, e moli ala pi kulupu tawa a! kulupu sin ni li awen lon ma ona la, pilin utala ona li kama suli. ona li kon tu e ilo kalama lili. ilo li mu tu.

kepeken tenpo ala la, waso pimeja mute li kama. mute waso li suli wawa la, kulupu waso li pimeja a e sewi!

jan Jelo ike li toki tawa waso lawa: “o tawa kulupu ni. o uta wawa e oko ona. o pakala mute e ona.”

waso ale li tawa sama waso wan, li tawa kulupu pi jan Towesi. jan lili ni li kama lukin e kama waso la, ona li pilin ike.

taso jan pi kasi insa li toki: “ni li utala pi mi wan a! o kama supa lon poka mi. pakala li kama tawa ala sina.”

ni la, kulupu li anpa lon ma. taso jan kasi li awen lon sewi kulupu. ona li sewi e luka ona. waso li kama lukin e ona la, waso li kama pilin ike. nasin waso la, jan kasi ale li kama e pilin ike. ni la, waso li wile ala tawa kulupu. taso waso lawa li toki:

“ni li jan sijelo ala. ni li selo taso pi kasi insa. mi weka e oko ona a!”

waso lawa li tawa jan pi kasi insa. jan kasi li kama jo e lawa waso, li tawa sike e lawa waso. waso li moli tan ni. waso ante li kama tawa jan kasi. ona li tawa sike e lawa ona kin. waso mute mute li kama. tenpo mute mute la, jan li tawa e lawa. pini la, waso ale li moli lon poka ona. ni la, jan kasi li toki e pini tawa kulupu ona. kulupu li kama sewi sin, li open sin e tawa.

jan Jelo ike wawa li lukin sin la, ona li oko e moli pi waso ona. tan ni la, pilin utala ona li kama suli wawa. ona li kon tu wan e ilo kalama ona. ilo li mu tu wan.

tenpo ni la, kalama nasa li kama. kulupu suli pi pipi waso li kalama suli tan luka waso ona. pipi pimeja ni li kama tawa jan lawa ike.

jan oko li lawa e pipi: “o tawa kulupu ni. o moli e ona kepeken palisa moli pi monsi sina.” pipi li weka tan jan, li tawa kulupu pi jan Towesi. taso jan kiwen pali li lukin e kama pipi. jan kasi li sona e pali pona.

ona li toki tawa jan kiwen. o jo e linja kasi tan sijelo mi. o len e jan lili, e soweli lili, e soweli suli. ni la, pipi li ken ala pakala e ona.” jan kiwen li ni. jan Towesi li lon poka pi soweli suli, li jo pona e soweli lili. jan kiwen li pana e kasi lon ona la, kasi li len e ale pi sijelo ona.

pipi li kama. ona li ken lukin e jan kiwen taso. ni la, pipi ale li tawa jan pi selo kiwen, li utala kepeken palisa pi monsi ona. palisa ona li kama pakala, li pakala ala e jan kiwen. palisa pipi li pakala la, ni li moli e pipi. ni li pini pi pipi pimeja. pipi ale li lon poka anpa ale pi jan kiwen.

ni li pini la, jan Towesi en soweli wawa li sewi sin. jan Towesi en jan kiwen li pana e linja kasi ale tawa insa pi jan kasi. ni la, jan pi kasi insa li kama pona sin. kulupu li open sin e tawa.

jan lawa ike li oko e moli pipi la, ona li pilin utala suli a! ona li noka wawa e ma, li luka utala e linja lawa ona. ona li tawa utala e kiwen uta ona. ona li kama e jan pali kepeken kalama ona. jan oko li lawa ike pakala e jan ni pi kulupu Winki. jan lawa li pana e palisa suli utala, li toki tawa jan pali: “o tawa kulupu ni. o pakala e ona.”

kulupu Winki pi ma Jelo la, jan li pilin wawa ala, li jan utala ala. taso jan ike li lawa e ona la, ona li ken pali e wile taso pi jan lawa. ni la, ona li tawa, li kama lon poka pi jan Towesi. soweli wawa suli li mu utala suli, li tawa sewi. jan pi kulupu Winki li pilin pi ike wawa tan ni la, ona li tawa weka kepeken wawa ale ona.

jan pi pilin ike li kama sin lon tomo jelo la, jan ike li utala e ona kepeken linja wawa. jan lawa li kama sin e jan pali tawa pali ona. jan lawa Jelo ike li awen, li wile sona e pali pi tenpo kama. ona li ken ala pakala e kulupu kama la, ona li sona ala e tan. taso ona li jan pi wawa ike a, li jan pi ike sona a! ona li kama sona e pali sin lon wile ona.

lon insa pi supa poki ona la, len lawa pi mani jelo suno li lon. kiwen namako mani en kiwen mani suno li lon ale len. len lawa mani la, ken pi wawa nasa li lon. ken namako ni la, jan lawa pi len lawa li ken kama e soweli pi luka waso. soweli waso li ken kama lon tenpo tu wan taso. jan pi len lawa li ken lawa e pali ale pi soweli ni. taso jan li ken ni lon tenpo tu wan taso. jan Jelo lawa li kepeken len namako lon tenpo pini tu kin. tenpo nanpa wan la, ona li open e lawa ike ona lon kulupu Winki. ona li kama jan lawa pi ma Jelo tan pali pi soweli waso. tenpo nanpa tu la, ona li utala e jan Osawi suli a! ni la, jan Osawi li kama weka tan ma Jelo. pali pi soweli waso li kama e ni. tenpo wan taso la, jan ike li ken kepeken len lawa wawa. ona li ken kepeken wawa ante ona la, ona li wile ala kepeken len lawa. taso tenpo ni la, soweli alasa ona en waso pimeja ona en pipi utala ona li weka. jan pali ona li pilin ike wawa tan soweli suli. jan pi len lawa li wile pakala moli e kulupu pi jan Towesi la, nasin wan taso li awen.

ni la, jan Jelo pi wawa nasa li jo e len mani tan supa poki, li len e lawa. ona li weka e noka wan tan ma, li awen lon noka ante wan. ona li toki nasa:

“Epe Pepe Lape!”

ona li pana e noka sewi tawa ma, li sewi e noka pi sewi ala. ona li toki nasa sin:

“Teki Taki Toki.”

ona li pana e noka sewi tawa ma, li lon noka ona tu. ona li kalama nasa:

“Siki Suki Sike!”

ni la, pali nasa pi len lawa li open. sewi li kama pimeja. kalama pi ike kama li lon kon. luka waso mute li tawa. mu soweli mute en mu mute pi pilin musi li lon. suno li kama sin tan pimeja la, soweli mute a li lon poka pi jan lawa ike! luka waso suli wawa li lon monsi sewi pi soweli ale.

soweli wan li suli lon kulupu soweli. lukin la, ona li soweli lawa tan suli ni. ona li tawa jan ike kepeken luka waso, li toki: “sina kama e mi lon tenpo nanpa tu wan. ni li pini pi kama mi. sina wile e pali seme tan mi?”

jan pi len mani li toki. kulupu sin li kama lon ma mi. o pakala e ona ale. taso o pakala ala e soweli suli wawa. o kama e soweli suli ni tawa mi. mi wile linja e ona. mi wile kama e pali tan ona.”

soweli lawa li toki: “mi pali e wile sina.” soweli waso li mu mute, li kalama mute, li tawa kulupu kama.

soweli mute li kama jo e jan kiwen, li tawa e ona lon kon sewi. ona li lon sewi pi kiwen wawa ike la, soweli la, soweli li weka e jo. jan kiwen li kama anpa suli, li kama lon kiwen. kiwen li utala e selo jan, li nasa e selo, li nena e selo. ni la, jan kiwen li ken ala tawa, li ken ala mu kin.

soweli mute li kama jo e jan kasi. ona li weka e kasi tan insa pi len jan kepeken luka ona. palisa luka suli li weka e kasi tan lawa jan kin. soweli li wan sike e len jan ale, e selo jan. ona li weka wawa e sike jan sin ni tawa sewi pi kasi suli.

soweli ante ale li pana e linja wawa lon poka ale pi soweli wawa suli. linja mute la, soweli wawa li kama ala ken. soweli wawa li ken ala kepeken uta, li ken ala kepeken luka, li ken ala utala. soweli waso li sewi kon e ona, li tawa e ona tawa tomo lawa pi jan ike. insa pi tomo ni la, ma lili li lon. soweli wawa li kama lon ma insa ni. palisa mute li lon poka ale, li wawa mute. soweli suli li ken ala tawa weka tan ni.

taso ike ala li kama tawa jan Towesi. ona li awen, li awen jo e soweli Toto. ona li lukin e kama ike lon kulupu ona. pilin ona la, ike li kama tawa ona kin lon tenpo lili. soweli waso lawa li kama tawa ona. luka soweli li suli mute, li jo e linja mute. sinpin soweli li ike nasa tawa lukin tan pilin pona ona. taso soweli li kama lukin e sitelen uta pi jan pona wawa lon sinpin pi jan Towesi. ona li pini a e tawa! ona li lawa e soweli ante la, soweli ante o ike tawa ala jan lili ni.

“mi o pakala ala e jan ni. wawa pona li awen e ona. wawa pona li anpa e wawa ike. mi ken tawa taso e jan. mi ken pana e ona tawa tomo pi jan lawa.”

kepeken ike ala la, soweli li sewi kon e jan Towesi lon luka ona. ona li tawa sewi e jan la, ona li kama lon tomo suli. soweli li pana e jan lon poka pi lupa tomo. soweli lawa li toki tawa jan ike:

“mi pali e wile sina kepeken ken mi ale. jan kiwen en jan pi sijelo kasi li pakala. linja li awen e soweli wawa lon ma insa pi tomo sina. mi wile ala ike e jan lili ni, e soweli lili ona. tenpo ni la, wawa sina li ken ala lawa e kulupu mi. ni la, sina kama ala lukin e mi lon tenpo kama.”

soweli waso ale li mu mute, li kalama mute, li tawa sewi. tenpo lili la, ona li weka tan lukin.

jan lawa ike li kama lukin e sitelen uta lon sinpin pi jan Towesi la, ni li nasa a, li ike kin tawa ona! ona li sona: soweli waso en ona kin o pakala ala a e jan lili ni! ona li lukin e noka pi jan Towesi. ona li kama lukin e len noka suno la, sijelo ona li tawa mute tan pilin ike. ona li sona e wawa suli pi len noka ni. open la, jan ike li wile tawa weka. taso ona li kama lukin e oko pi jan Towesi la, ona li kama ala lukin e wawa pi len noka lon oko ni. jan lili ni li sona ala e wawa pi len noka. ni la, jan Jelo pi wawa nasa li pilin musi. ona li toki insa: “awen la, mi ken kama lawa e ona. ona li sona ala e wawa ona la, mi ken ni.” ona li toki wawa utala tawa jan Towesi:

“o kama a! o kute wawa e toki mi ale. sina kute ala la, mi pini e sina. mi pini e jan kiwen, e jan pi sijelo kasi la, mi ken sama e sina.”

jan lawa li tawa insa tomo. jan Towesi li kama lon monsi ona. tomo insa mute li lon, li jelo, li pona tawa lukin. pini la, ona tu li kama lon tomo pi pali moku. jan ike li kama e pali tan jan lili. lawa la, jan lili pali li telo e poki moku, li weka e jaki tan ma, li awen e suli seli kepeken kiwen kasi.

jan Towesi li open e pali tan wile pi jan ike. jan ike li wile ala moli e ona la, pilin ike li weka tan jan lili. tan ni la, ona li wile pali mute a!

tenpo pali pi jan Towesi la, jan ike li wile tawa ma insa pi tomo ona. ona li wile lawa e soweli wawa. ona li wile tawa lon soweli kepeken soweli. ken la, soweli li ken tawa e poki tawa. jan li wile tawa lon poki la, ni li ken kama e musi ona. taso ona li open e lupa la, soweli wawa li mu wawa. ona li tawa pi wawa mute la, tawa li ike wawa e pilin jan. wawa ni la, jan li weka tawa insa tomo, li pini sin e lupa.

jan oko li lukin e soweli wawa tan poka lupa ante, li toki: “mi ken ala lawa e sina la, mi pana e moku ala tawa sina. sina kama moli tan ni. o pali e wile mi. sina pali la, mi pana e moku.”

ni la, ona li pana e moku ala tawa soweli. taso ona li kama lon insa pi tenpo suno ale, li toki: “mi kama ala kama lawa e sina, e tawa sina?”

soweli li toki ike: “kama ala a! sina kama tawa mi la, mi uta wawa e sina.”

jan li kama ala lawa e soweli tan jan Towesi. jan lili li tawa soweli lon tenpo pimeja ale. jan ike li lape la, jan Towesi li pana e moku tan poki tan tomo moku. soweli li pini e lape la, ona li kama supa lon ma pi linja kasi. jan lili li kama lon poka soweli. ona li pana e lawa ona lon linja lawa soweli la, ni li pana e pilin pona. ona tu li toki e tenpo ike ni. ona li wile tawa weka. ona li alasa, li alasa e nasin. taso ona li kama ala sona e nasin weka. jan pi kulupu Winki li awen e nasin tomo ale. jan ike li lawa e jan ni pi len jelo la, ona li wile awen pali e wile ona tan ike wawa ona.

jan oko li wile e pali mute a tan jan Towesi lon tenpo suno! jan ike li jo e palisa pi len awen lon tenpo ale. telo li kama tan sewi la, jan ike li ken awen e sijelo ona kepeken len pi palisa ni. tenpo pi telo ala la, jan lawa li tawa mute e palisa, li toki e utala ike tawa jan lili. taso lon la, sitelen uta pona li awen e jan pali ni la, jan palisa li wile ala utala e ona. jan Towesi li sona ala e ni. pilin ike ona la, jan lawa li ken pakala e ona, e soweli lili ona. tenpo wan la, jan oko li palisa e soweli Toto. soweli Toto li wawa insa, li utala uta e noka pi jan palisa. telo loje li kama ala tan noka. sijelo pi jan ike la, telo loje ale li kama weka tan ike wawa ona lon tenpo pini.

ni li tenpo pi ike mute tawa jan Towesi. ona li kama sona e ike pi tenpo ni la, ma Kansa en jan Me pona li weka mute tawa ona. ona li wile kama sin lon ma ona, li wile lon jan ona. taso ike pi tenpo ni la, ni li wile e wawa ike tan ona. tenpo la, ona li pana e telo mute tan oko ona. soweli Toto li lon noka ona, li wile e pona mute tawa ona. ona li lukin e jan ona, li mu pilin tawa jan. soweli Toto li pilin ike ala tan ma nasa ni. ma li suli ala tawa ona. taso jan ona li suli. jan suli ona li pilin ike la, ona kin li pilin ike.

wile li lon jan Jelo pi wawa ike. wile li wile suli. jan ike wawa li wile e len noka suno sama len noka pi jan Towesi a! pipi utala ona en waso pimeja ona en soweli alasa ona li weka. ona li ken ala kepeken len lawa mani pi wawa suli. taso len noka pi suno walo li ken pana e wawa mute a tawa ona! ijo ante ona li ken ala pana e wawa sama. ona li awen lukin e jan lili. jan lili li weka e len tan noka la, jan oko li ken kama jo e len. taso jan Towesi li pilin pona mute tan len noka namako ona. ona li weka e len tan noka lon ala tenpo mute. ona li telo e sijelo la, ona li weka e len noka lon ni taso pi tenpo suno. ona li tawa supa lape la, ona li weka e len noka lon ni taso pi tenpo pimeja. jan oko li pilin ike tan pimeja la, ona li tawa ala jan Towesi lon tenpo pimeja. jan oko li pilin ike mute tan telo la, ona li tawa ala jan Towesi lon tenpo telo a! kin la, telo li kama ala pilin e telo. telo li kama ala lon ona kin. tenpo ala la, jan ike li wile lon poka telo.

taso jan ike ni a li sona pali e nasin sin, li pali e nasin sin! tomo pi pali moku la, ona li pana e kiwen wawa lon ma. kepeken sona nasa ona la, ona li len e kiwen. jan li lukin la, ona li lukin e kiwen ala, e kon taso. jan Towesi li tawa lon ni la, kiwen li pakala e tawa ona. jan lili li anpa wawa. ona li pilin pakala ala. taso kama anpa ona la, noka suno wan li kama weka tan noka. ona li wile jo e len. taso jan pi sona nasa li kama jo e len. jan jo li len suno e noka ona.

jan ike li pilin pona mute tan pali ike ona. ona li jo e len noka wawa wan la, ona li ken kepeken wawa pi len noka wan. jan Towesi li ken kepeken wawa pi len wan la, ona li ken ala anpa e jan ante pi len wawa wan.

jan lili li kama lukin e weka pi len noka ona la, ona li pilin utala. ona li toki tawa jan ike: “o pana e len mi tawa mi.”

jan oko li toki: “mi pana ala a! len noka ni li len mi, li len sina ala lon tenpo ni.”

jan Towesi li toki: “sina ike a! sina ken ala jo e len pona mi.”

jan ike li toki: “a- taso mi ken.” ona li mu tan pilin pi musi ike. “tenpo la, mi ken jo e len noka ante kin.”

jan Towesi li kama pilin utala suli tan ni la, ona li kama jo e poki telo suli. ona li pana wawa e insa poki ale. telo li kama lon sijelo ale pi jan lawa ike.

tenpo ni la, jan pi wawa nasa li mu e pilin ike. jan lili li lukin e nasa kama: jan ike li kama lili a, li kama anpa!

jan pi anpa nasa li kalama: “o lukin e pali sina. mi kama ko. mi kama lili. mi kama telo. mi kama weka lon tenpo lili.”

jan pi pana telo li toki pilin: “mi sona ala e pali mi.” jan kalama li kama lili, li kama ko, li kama weka la, ni li ike mute tawa lukin pi jan Towesi.

jan pi ko nasa li mu ike. “telo li ike e mi la, sina sona ala sona e ni?”

jan pi ko ala li pana e toki: “sona ala a! sona ni li ken ala tawa mi.”

“a! tenpo lili la, ale pi sijelo mi li weka telo. sina taso li kama lawa e tomo suli mi. mi jan pi ike mute. taso sina pini e ike mi. sina jan lili a! ni li ken tan seme a!? o lukin. mi kama weka a!”

toki ni la, sijelo ko li kama telo pimeja taso. telo jaki li kama lon ma anpa pi tomo moku. lon la, sijelo jan li weka. ni la, jan Towesi li pana e telo sin tawa poki. ona li telo e jaki ale. ona li weka e jaki tan tomo tawa ma. len noka suno taso li awen. jan lili li telo e len ni, li pana e len lon linja. telo li kama weka tan len la, jan lili li len sin e noka ona. ni la, pali ale ona en lawa ike li pini a! jan pi len noka suno li tawa ma insa pi tomo suli, li tawa soweli. ona li toki e pini ike, e moli pi jan ike, e pini pi tawa ala. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(13)]) #v(-10pt) #text(font: "Oz'sWizard", [kulupu li kama weka])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[soweli] suli pona li kute e moli telo pi jan ike la, ona li pilin pona a! jan Towesi li open e poki soweli, li ken e weka pi soweli pi pilin pona. ona tu li tawa insa pi tomo jelo suli. jan Towesi pona li kama e jan ale pi kulupu jelo Winki. ona wan li toki tawa ona ale, li toki e weka pi lawa ike, e weka pi pali ike, e weka ike.

jan ale li mu pona e pilin suli pona. kulupu jelo ni li pali ike mute, li pali pakala mute tan lawa pi jan ike. jan lawa wawa oko ike li ike e ona lon tenpo ale. kulupu jelo li awen pilin pona tan tenpo ni. tenpo sike ale la, ona li sin e pilin pona ni lon tenpo suno wan, li moku pona, li tawa musi.

soweli wawa pona li toki: “ale pi kulupu mi kin li lon ni la, mi ken kama pilin pona. taso jan pi kasi insa en jan pali pi selo kiwen li lon ala ni.”

jan poka ona li wile e pona la, ona li wile sona: “mi tu li ken ala ken e ona lon poka?”

soweli li toki: “mi ken lukin ni.”

wile ni la, ona tu li toki tawa kulupu pi pilin pona sin, li wile e pona tan kulupu ni. pona suli li tan jan Towesi la, kulupu li wile ken e kama pi jan pona ona, li wile pana e ken ale tawa ni. jan pi kulupu jelo li sona mute la, jan Towesi li wile e ona mute lon poka. ona ale pi wile ni li open e tawa. ona li alasa lon ale pi tenpo suno, li kama alasa lon tenpo suno kama kin. ona li kama lon ma pi kiwen mute la, jan pali kiwen li lon. ona li lon ma anpa. ike pakala en nena ike en lupa nasa li lon ale pi sijelo ona. ilo pali ona li lon poka ona. taso tenpo li jaki loje e kiwen ilo. palisa ilo li pakala weka.

jan pi kulupu Winki li jo pona e jan kiwen. ona kulupu li pana e ona kiwen tawa tomo jelo. tawa la, jan Towesi li pana e telo tan oko tan ike sijelo pi jan pona ona. soweli poka suli li musi ala tawa lukin. ona ale li kama lon tomo lawa la, jan pi telo oko li toki tawa jan jo:

“jan pi kulupu sina li sona ala sona pali kepeken kiwen?”

ona jelo li toki: “sona a! ken pi jan mute li suli.”

jan Towesi li toki: “ona o kama.” jan sona pi pali kiwen li kama, li jo e ijo ale ona lon poki ona. jan Towesi li wile sona: “sina ken ala ken pona e ike sijelo pi jan pona mi? selo ona la, nena nasa en lupa nasa li lon. pakala kin li lon sijelo. mi wile e pona lon ona.”

kepeken nasin pona la, jan sona pali li lukin e jan kiwen. ona li toki e ken ona, e pona kama. ni la, ona li open e pali lon tomo jelo wan lon tomo jelo suli. pali li lon tenpo suno mute, li lon tenpo pimeja mute. jan sona li nasin e kiwen, li tawa pona e selo, li supa e nena sijelo, li sin e palisa, li pona e sijelo, e lawa lon jan pakala. pini pali la, jan pakala li kama jan pi pakala ala. selo ona ale li sama tenpo pini. ona li ken tawa pona e noka, e luka. lon la, lili selo li ante tawa lukin. taso jan sona pali li pali sona pona. jan pi pakala pini la, ante selo li suli ala. ona la, selo ona li selo ona.

pini ni la, ona li tawa tomo pi jan Towesi. ona li toki e pilin pona tan jan lili ni. tan pilin pona la, ona li pana e telo tan oko. jan lili li wile ala e jaki lon selo pi jan pona ona la, ona li weka e telo ni kepeken len lili. tenpo sama la, oko ona kin li pana e telo a tan poka pona pi jan kiwen! pona la, telo ni li jaki ala e selo ona. soweli suli li lukin e ni la, ona li weka e telo tan oko ona kin kepeken linja monsi ona. tan ni la, telo mute li lon linja monsi. soweli li wile tawa ma, li wile pana e linja ona tawa suno. suno li seli weka e telo tan linja.

jan lili li toki e kama ale pi tenpo ona tawa jan suli kiwen. ni la, jan suli li toki: “a jan pi kasi insa o lon poka mi! poka ona taso li ken suli e pilin pona mi.”

jan lili li toki: “mi o alasa e ona.”

wile ni la, ona li toki kama e kulupu. ona lili en ona suli en ona jelo en ona pi jelo ala li tawa. tenpo suno ni en tenpo suno kama la, ona li tawa, li kama lon kasi suli. tenpo pini la, soweli waso li pana e len pi jan kasi tawa lawa pi kasi ni.

suli kasi li suli mute a! selo ona li sinpin pi nena ala. jan ala en soweli ala li ken tawa lon selo ona tan ni. taso jan pi pali kasi li toki lon ni: “mi ilo mi e ona la, ona li kama anpa. sina ken alasa e len tan anpa ni.”

jan sona pi pali kiwen li pona e sijelo kiwen ona lon tenpo pini la, jan ante pi kulupu sama li pali ante. sona ona li sona pi kiwen mani. ona li pona e ilo kasi sin kepeken kiwen mani. ona li pana e palisa sin pi kiwen jelo suwi tawa ilo, li weka ale e jaki tan lipu ilo. ni la, suno li suno pona e ilo.

pini pi toki ona la, jan pi pali kasi li open e pali. ilo ona li pakala e kasi. tenpo lili la, kasi li kama anpa, li kalama. len pi kasi insa ala li kama tan sewi kasi, li tawa ma.

jan Towesi li pana e len ni tawa kulupu. kulupu Winki li kama e selo len ni tawa tomo suli. ona li pana e linja kasi sin tawa len pi kasi ala la, len li kama len pi kasi insa, li kama jan pi kasi insa. sijelo ona li sama tenpo pini a! moli ala la, ona li toki e pilin pona suli tawa kulupu pali pona.

ni la, kulupu pona pi jan Towesi li sin, li pona. tenpo suno mute la, ona ale li awen lon tomo jelo, li pilin pona. ale li pona lon tenpo ni.

taso tenpo suno wan la, sona pi jan mama li kama suli tawa jan lili. ona li toki: “mi o tawa jan Osawi. ona li ken pana tawa mi.”

jan kiwen pi pali kasi li toki: “ni a! pilin o kama lon insa mi.”

jan pi kasi insa li toki pi pilin pona: “pona o tawa lawa mi a!”

soweli wawa suli pi pilin wawa ala li toki pi pilin insa: “wawa o tawa pilin mi.”

jan lili Towesi li wan kalama e luka ona tu: “mi o tawa ma mama mi. a- tenpo pi suno sin la, mi wile tawa ma laso pi tomo laso.”

kulupu tawa li wile ni. tenpo suno kama la, ona li toki tawa kulupu jelo Winki, li toki e tawa ona. weka ona li lon ala wile pi jan jelo. jan pi selo kiwen li pona mute a tawa ona la, ona li toki wile e awen ona! wile pi kulupu ni la, jan kiwen o awen, o lawa pona e ma jelo, e kulupu jelo. taso ona pi ma ni li sona e wile tawa la, ona li wile pona e tawa. soweli lili en soweli suli la, ona li pana e sike mani jelo tawa anpa lawa. jan Towesi la, ona li kiwen suno e sike namako, li pana e sike ni tawa luka. jan len la, ona li pana e palisa. sike mani li lon lawa palisa. palisa ni la, tawa pi jan len li pakala ala. jan pi selo kiwen la, ona li pana e poki. poki li jo e telo ko pona tawa sijelo pi jan kiwen. selo poki li suno jelo, li jo e kiwen namako mute.

tan pona ni la, jan tawa en soweli tawa li toki suli tawa kulupu. ona tawa li luka e luka mute ale pi ona awen. mute luka la, wawa luka li kama lili a!

jan Towesi li alasa e moku lon poki pi jan lawa moli. ona li pana e moku tawa poki ona la, ona li kama lukin e len lawa namako jelo. ona li pana e len mani ni tawa lawa ona la, suli len li pona lon lawa ona a! ona li sona ala e wawa pi len ni. taso namako pi len ni li pona tawa lukin ona. pona ni la, ona li wile awen e len lon lawa. ona li pana e len lawa ante ona tawa poki ona.

ni ale la, tawa li ken open. kulupu li tawa ma tomo pi laso suno. kulupu Winki li mu, li mu, li mu tawa pona ona tan tawa ona. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(14)]) #v(-10pt) #text(font: "Oz'sWizard", [soweli waso])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[o] awen sona: kulupu li wile tan tomo suli jelo, li wile tawa ma lawa pi tomo laso. taso ona li ken ala tawa ma wile kepeken nasin. insa pi ma ni tu la, nasin li lon ala a! o awen sona: kulupu pona li tawa jan lawa ike la, jan ike li oko e kulupu, li wile kama e kulupu ni. ona li lawa e soweli waso, li kama e kulupu kepeken soweli ni. soweli waso li tawa lon kon. taso kulupu pona li wile tawa sin la, ona li tawa lon ma. ni li wile e sona pona. taso kulupu li sona ike. nasin ala li lon. kasi jelo taso li lon, li mute. suno li open la, kulupu li sona e pona tawa. ona li wile tawa suno open ni. ni li pona. taso suno li tawa sewi lon tenpo. suno li lon sewi kulupu la, kulupu li sona ala e pona tawa. ona li wile tawa seme? ni li ike. ona li awen tawa. taso ona li tawa ala ma wile. suno li kama weka la, mun li kama, li walo e ma. kulupu li lape lon ma pi kasi suwi jelo. tenpo pi mun walo la, lape li wawa, li pini ala. taso jan pi insa kasi en jan pi selo kiwen li pini ala e oko.

suno li sin la, ko sewi li len e ona. taso suno li pana anu pana ala e sona la, kulupu li awen wile tawa, li tawa.

jan Towesi li toki: “mi awen tawa la, mi ken kama lon ma pona lon tenpo.”

taso suno li weka, li kama, li weka, li kama la, ma li ante ala, li awen sama. jan kasi li kama pilin ike, li mu pi pilin ni.

“mi kama ala tawa pona. mi ken ala alasa e ma laso wile la, pona li ken ala kama tawa lawa mi.”

jan kiwen li kama toki: “sama la, pilin li ken ala tawa sijelo mi. tawa en tenpo li suli ike a! mi wile tawa jan Osawi.”

soweli wawa li pilin wawa ala. “pilin la, mi kama ala lon ma pona. pilin la, mi ken ala awen tawa lon ni.”

wile li weka tan jan Towesi. ona li kama anpa lon ma. ona wan li lukin e kulupu ona la, ona kulupu li kama lon poka, li lukin e ona lili. pipi waso li tawa sewi pi soweli lili Toto. taso ni kin la, ona li kama ala wile tawa. nasa. tenpo ante la, ona li wile. taso tenpo ni pi wile ala la, ona li lukin e jan suli ona, li open lili suwi e uta. suwi ni la, ona li ken wile e sona tan jan ona.

jan ona li toki e ken: “mi kama e kulupu pi soweli lili la, ona li ken pana e sona nasin. ni li ken e mi tawa ma wile.”

ni la, jan kasi li kalama: “ona li ken ni a! ni li sona pona. tenpo tawa li kama lili tan ni.”

soweli lili lawa li pana e ilo mu tawa ona la, ona li awen jo e ilo. ona li pana e kon tawa ilo la, ilo li mu. tenpo pi suli ala la, noka mute pi lili mute li kalama, li kama. soweli lili mute li kama lon poka. soweli lawa kin li lon. ona li toki kepeken kalama ona pi sijelo lili:

“sina pona e mi la, mi wile pona e sina. seme li lon wile a!?”

jan lili li toki: “mi wile tawa ma tomo pi kiwen laso suno. taso mi sona ala tawa ona. sina sona ala sona tawa ona?”

soweli lawa li pana e toki: “sona. taso ni li weka a! lukin la, tawa sina li kama suli mute e weka.” ona lawa li kama lukin e len mani lon jan Towesi la, ona li kama toki: “a! sina kepeken ala namako pi len lawa sina. ona li ken kama e soweli waso. soweli li ken waso e sina tawa ma wile kepeken tenpo pona.”

ni li sona sin tawa jan pi len lawa. “namako pi ken ni li lon len jelo anu seme? wawa. ona la, mi wile seme?”

lawa pi kulupu soweli li toki sin: “o lukin e insa len. sitelen li toki e nimi namako. taso sina wile kama e soweli waso la, mi kulupu li wile ala awen. soweli waso li nasin ike, li wile jaki e mi lili. kama ona la, mi wile weka.”

jan lili li toki pi pilin ike: “mi kin li lili. ona li kama ala kama ike e mi lili?”

“a! ala. ala. sina jan pi len lawa. sina len li lawa len e ona la, ona li pali e wile sina. mi weka.” ni la, ona lawa en kulupu ona pi noka lili li tawa. ona lili ale li weka.

jan Towesi li lukin e insa pi len mani jelo. sitelen li lon insa pi selo len. pilin pi jan lukin la, sitelen ni li toki e nimi pi ken namako. tan pilin ni la, ona lukin li kama awen e sitelen ni lon sona ona. ona li pana e len namako jelo lon lawa ona, li open e toki nasa:

“Epe Pepe Lape!.” ona li sewi e noka wan.

jan kasi li sona ala e nasin sin ni: “seme? sina toki e ijo seme a!?”

jan pi kasi ala li toki nasa sin: “Teki Taki Toki.” ona li anpa e noka sewi, li sewi e noka anpa.

jan kiwen li pana e toki tawa ni: “toki.”

jan pi kiwen ala li sin e toki nasa: “Siki Suki Sike.” noka ona tu li lon ma. ni li pini e toki pi nasa namako. mu suli en kalama waso suli li kama. kulupu pi soweli waso li kama a!

soweli lawa ona li tawa jan Towesi, li anpa e sinpin ona: “o toki e wile sina.”

jan lili li toki tawa soweli: “mi wile tawa ma tomo suli pi laso suno mani. taso mi sona ala tawa ona.”

soweli lawa li toki: “mi tawa e sina.” toki ni la, soweli tu li jo luka e jan lili. ona tu wan li tawa sewi. soweli ante li jo e jan kasi, li jo e jan kiwen, li jo e soweli suli wawa. soweli waso lili wan li jo e soweli Toto. soweli Toto li lukin uta wawa e soweli jo. taso ona kin li tawa sewi.

open tawa la, jan kasi en jan kiwen li pilin nasa ike. soweli waso li ike e ona lon tenpo ante la, ona li awen sona e ike ni. taso ike ala li lon wile soweli la, jan li kama sona e ala ike. ni la, ona li pilin pona lon tawa kon. ona li lukin e ma kasi pona, e kasi suli pona lon anpa la, ni li tawa ona.

soweli suli tu li tawa e jan Towesi. lawa pi kulupu ona li soweli ni wan. luka pi soweli tu li kama wan la, ni li supa pona tawa jan. ona li wile awen e sijelo pi jan lawa ona.

jan lili lawa li wile sona: “toki namako nasa pi len lawa li lawa e sina tan seme?”

ni la, lawa pi kulupu soweli li toki: “toki pi ijo ni li wile e tenpo suli. taso tawa li wile e tenpo la, ni li ken. sina wile la, mi ken toki e ijo ni.”

jan li wile.

soweli li open e toki: “tenpo pini la, ala li lawa e mi. mi lon ma suli pi kasi suli. mi pilin pona. mi tan kasi tawa kasi lon sewi. mi alasa e kili mute. pona. ala li ike e nasin ni. a! nasa ike li ken lon mute pi kulupu mi. ken. soweli waso mi li nasa e linja monsi lon soweli pi waso ala. ona li alasa e waso pi soweli ala. kulupu tawa li kama lon ma la, soweli mi li kili e ona. ken. taso mi musi taso. mi nasin pi mi taso. mi pilin pona lon ale tenpo. ni li lon tenpo pini suli a! ma li sona ala e jan Osawi. jan Osawi li kama tan sewi lon tenpo ante.”

tenpo mi la, meli pona li lon ma Unu. ona li meli lawa, li wawa ken. ken ona li namako sona wawa. ken ona li namako pona e jan pi ma ona. jan li pona la, meli pona li ike ala e ona. nimi pi meli pona li Kele. meli Kele li lon tomo suli pona. kiwen tomo li loje suno mani. ale li olin e meli lawa. taso pilin ike li lon meli. ona li alasa e mije olin wan. taso sijelo meli en sona ona li pona suli la, sijelo pi mije ale en sona ona li pona ala a! olin li kama ala tan ni lon tenpo. a! tenpo ante la, ona li lukin e mije lili Kelala. lili ona kin la, sijelo ona en sona ona li pona. mije ni li lili la, meli Kele li wile e olin tan ona suli. mije li kama suli la, meli li wile awen tawa tenpo pi suli ona. ona li ken e mije Kelala lon tomo loje ona. ona li pana e wawa ona tawa mije la, mije li kama wawa pona, li kama pona wawa. pona mije li suli la, meli li olin wawa e ona. meli li wile sewi e olin la, ona li pali e tenpo suli pi sewi olin. tenpo sewi ona la, jan olin tu o kama kulupu olin suwi.

tenpo pi toki ni la, mama mama mi li lawa e kulupu mi. ona li lon ma kasi lon poka pi tomo loje meli. moku li suli tawa ona. musi li suli suli tawa ona. tenpo sewi li kama lon poka la, mama en kulupu ona li tawa, li kama lukin e mije Kelala. mije li tawa lon poka telo. len ona li mani, li walo loje, li laso loje. lukin ni la, mama li wile nasa musi. toki ona la, kulupu ona li jo e mije Kelala, li tawa sewi telo. jo li pini la, mije li tawa telo.

ni la, meli lawa li pilin ike utala. ike li lon mije ona la, ona li sona e tan ike: soweli waso. meli lawa li kama e soweli waso ale, li toki lawa. wile ona la, luka waso pi soweli waso o ken ala tawa. ni la, soweli o lon telo sama mije. taso mama mama mi li toki pi pilin suli. sona ona la, soweli ona pi luka waso ala li kama moli lon telo. mije kin li toki e wile pona. ni la, meli lawa li ante e toki ona. jan li jo e len lawa mani ona la, jan ni o ken lawa e soweli waso lon tenpo tu wan. len mani ni li tan mani suli a! kute la, meli lawa li esun e ma mute tawa mani len. mama mama mi en kulupu ona li wile ala e moli la, ante pi toki meli li pona tawa ona. tan ni ale la, jan pi len lawa li ken lawa e mi lon tenpo tu wan.”

toki suli ni li pona tawa jan Towesi. “ni la, seme li kama?”

soweli li toki sin: “mije Kelala li open e tenpo pi len lawa. ona li kama lawa e kulupu mi. tenpo pi sewi olin li pini la, mije li kama e mi lon ma kasi poka. meli olin ona li wile ala lukin e mi kulupu la, mi o weka tan lukin meli. weka ni li pona. meli lawa li wawa ike tawa mi.

tenpo suli la, ala li kama. lawa ante ala li lon. taso tenpo wan la, jan lawa Jelo ike li kama lawa e len, e mi. lawa ona la, mi lawa e jan pi ma Jelo. kin la, jan Osawi li weka tan ma Jelo tan lawa mi. tenpo jo la, sina lawa kepeken len mani ni. sina ken kama e wile sina tan mi lon tenpo tu wan.”

toki soweli li pini la, jan pi luka ona li lukin e anpa. kiwen laso suno pi ma tomo li kama. tawa pi soweli waso li wawa nasa tawa jan Towesi. taso tawa li pini la, ni li pona tawa ona. soweli nasa li anpa pona e kulupu lon poka pi ma tomo. soweli lawa li anpa pona e sinpin ona tawa jan Towesi, li tawa sewi weka. kulupu soweli li sama.

jan lili li toki e pilin: “tawa ni li pona.”

soweli pona suli ona li toki: “lon. pona ona la, nasin li pakala ala e mi. sina jo e len lawa pona ni la, suli li ken.” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(15)]) #v(-10pt) #text(font: "Oz'sWizard", [kulupu li kama sona e ijo tan jan suli wawa Osawi])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[kulupu] tawa li kama lon sinpin suli pi ma tomo. ona li kama e mu tan ilo sinpin. ilo li mu mute la, jan awen li open e lupa. ona li jan awen lon tenpo pini kin la, kulupu li sona e ona.

jan pi awen sinpin li pilin nasa musi: “seme a!? sina kama sin anu seme?”

jan pi kasi insa li toki: “o lukin. mi lon.”

“taso sona mi la, sina tawa jan ike Jelo pi ma Jelo.”

jan kasi li toki sin: “mi kama lon ona.”

ni li sona suli tawa jan pi ma tomo: “seme la, sina kama ken weka tan ona a!?”

sin la, jan kasi li toki: “ona li moli la, ona li ken ala pini e tawa mi.”

jan awen li toki: “moli a! ni li pona. li pona a! seme li moli e ona”

soweli suli wawa li toki lon: “jan Towesi li ni kepeken telo.”

“wawa. wawa a!” jan kute li anpa tawa jan pi moli telo.

ni la, ona li kama e kulupu lon tomo ona. ona li pana e ilo laso tawa oko pi ona ale sama tenpo pini. ni li pini la, ona ale li tawa insa pi ma tomo lon lupa suli. jan ale pi ma ni li kama kute e moli pi jan ike, li kama sona e jan pi moli ona la, jan Towesi li suli tawa jan ma. jan li wile lon poka pi jan kama, li kama mute lon poka kulupu. kulupu li tawa tomo pi jan Osawi la, jan poka kin li tawa.

sama tenpo pini la, jan utala li lon lupa tomo, li jo e linja laso lon sinpin. taso ona li pini ala e tawa kulupu. sama tenpo ante la, jan laso pi lili tenpo li kama, li nasin e jan, e soweli tawa tomo lape ona. tenpo pi jan Osawi li kama la, kulupu li ken lape lili.

tenpo sama la, jan utala li toki e kama kulupu, e moli pi jan ike tawa jan Osawi. taso jan Osawi li pana ala e toki tawa kulupu. pilin kulupu la, jan lawa Osawi li ken wile e ona lon tenpo lili. taso jan lawa li kama ala wile ni. kulupu li kama ala kute e toki sin tan ona lon tenpo suno kama. ante ala li lon tenpo suno nanpa tu, li lon tenpo suno nanpa tu wan. awen ni li musi ala, li kama e pilin ike. toki la, jan Osawi li wile e pali tan kulupu, li wile e kulupu lon ma ike. taso pali la, jan Osawi li pana ala e pona tawa kulupu. pilin ike li kama suli la, kulupu li kama pilin utala. tan ni la, jan pi kasi insa li kama pana e toki tawa jan Osawi kepeken jan laso lili. jan Osawi li wile ala lon poka kulupu la, kulupu li ken kama e soweli waso. soweli li ken lawa e jan lawa, li ken kama e sona tan jan lawa. jan lawa li kute e ni la, ona li pilin jaki. ona li sona e soweli waso, li wile ala a kama sin lon soweli ni! ona li wile kama e kulupu lon tomo ona lon tenpo pi sin suno.

kulupu li kama ala lape, li awen pilin e ijo kama. jan Osawi li pana e pona lon tenpo poka a! jan Towesi li lape lon tenpo wan taso. pilin lape la, ona li lon tomo ona, li lon poka pi jan suli ona. jan ona li toki e olin. jan lili li kama sin lon tomo la, jan suli li pilin pona.

ilo tenpo li mu e suno sin la, jan utala pi linja laso li kama tawa kulupu. tenpo lili la, ona ali li tawa tomo lawa pi jan Osawi wawa.

lon la, ona ale li wile lukin e jan wawa, e selo pi jan wawa sama tenpo pini. taso jan ala li lon tomo la, ni li nasa a! kulupu li awen lon lupa tomo, li awen wan. jan Osawi li ken selo mute, li ken pana e pilin nasa. taso ala en jan ala en kalama ala li lon la, pilin nasa li suli wawa.

ni la, ona li kute e toki sewi.

“mi jan Osawi suli wawa. sina tawa mi tan wile seme?”

sin la, kulupu li kama lukin e ale tomo. ona li kama ala lukin e jan la, jan lili li wile sona: “sina lon seme?”

kalama li kalama: “mi lon ale. taso sina sewi ala la, mi sama kon tawa lukin sina. mi o kama lon supa mi. kama mi la, sina ken toki lon mi.” lon la, kalama li ken kama tan supa. kulupu li tawa supa. ale li lon poka supa la, jan Towesi li toki:

“jan Osawi o. sina wile pana e pona tawa mi. ni la, mi kama.”

jan Osawi li wile sona: “mi toki ala toki e ni?”

jan lili li toki sin: “toki sina la, jan lawa ike li moli la, sina pana e mi tawa ma pona mi.”

jan pi kasi insa li toki: “sama la, sina pana e pona tawa lawa mi.”

jan pi selo kiwen li toki: “sama la, sina pana e pilin tawa sijelo mi.”

soweli pi pilin wawa ala li toki: “sama la, sina pana e wawa tawa pilin mi.”

kalama li kama toki: “jan ike Jelo li moli ala moli lon?” kute pi jan Towesi la, kalama li kama nasa lili tan pilin suli.

ona lili li toki pona: “moli. mi pana e telo tawa ona la, ona li kama weka.”

kalama li toki: “suli a! sin a! lon tenpo ni anu seme? a! o kama sin lon tenpo pi suno kama. mi o alasa e sona pona.”

jan kiwen li kama pilin utala: “mi awen lon tenpo suli. tenpo suli li pini. sina wile e tenpo sin tan seme?”

jan kasi kin li toki: “tenpo o kama ala suli sin.”

jan lili li toki: “sina toki e pali sina, e pona sina, e wile sina lon tenpo pini. lon tenpo mi la, o pali, o pona, o wile.”

soweli suli li wile pona, li wile nasa e pilin pi jan lawa. ni la, ona li mu wawa suli. wawa mu la, soweli lili Toto li pilin ike, li tawa weka. noka lili ona li kama lon sinpin selo namako la, sinpin ni li kama anpa, li kalama. kalama la, kulupu li lukin. lukin la, ijo nasa a li lon! sinpin li kama weka la, jan li lon, li lili sijelo, li suli tenpo, li jo e linja ala lon lawa. tenpo en pilin ona kin li nasa e sinpin ona. kama ni li nasa tawa kulupu, li nasa tawa jan sin ni. jan kiwen pali li tawa e ilo pali ona, li tawa jan ni, li toki kalama: “sina seme a!?”

jan lili ni li toki: “mi jan Osawi suli wawa.” pilin ona li nasa e kalama ona: “o pakala ala e mi. o ike ala e mi. sina pakala ala e mi la, mi ken pali e wile sina ale.”

nasa li kama suli, li kama ike tawa kulupu pona.

jan Towesi li toki: “taso sijelo pi jan Osawi li lawa suli, li sama ala ni.”

jan kasi li toki: “mi la, jan Osawi li meli suwi, li sama ala ni.”

jan pali li toki: “mi la, jan Osawi li soweli pi suli ike, li sama ala ni.”

soweli poka li toki: “mi la, ona li seli suno suli, li sama ala ni.”

jan sin pi pilin anpa li toki lili: “ala. sina ale li sona ala a! ni ale pi toki sina la, mi pali e ijo pi lon ala. mi nasa taso e lukin sina, e kute sina.”

jan Towesi li toki wawa: “ijo pi lon ala anu seme a!? sina jan ala jan pi wawa suli a!?”

jan pi toki nasa li toki: “a- o lili e kalama sina. jan ante li kute la, mi kama pakala. ona la, mi o sama jan pi wawa sona sama jan pi ken suli sama jan pi pali nasa.”

jan Towesi li toki: “taso sina ni ala anu seme?”

“ala a! mi mi taso. pali mi li ken ala wawa, li ken ala suli nasa.”

jan pi kasi insa li pilin ike a! “pali sina li ken ala ni la, pali sina li pali ike. sina sina taso ala. sina jan pi pali ike.”

jan Osawi li wan e luka ona tan pilin pona ona: “ni a! ni li lon. mi jan pi pali ike.”

jan pali kiwen li kama toki: “taso ni li ike suli a! seme la, mi ken kama jo e pilin lon sijelo mi?”

soweli suli li pilin sama: “seme la, mi ken kama jo e wawa lon pilin mi?”

pilin ike la, jan pi sijelo len li pana e telo tan oko. “seme la, mi ken kama jo e pona lon lawa mi?” ona li weka e telo kepeken len pi luka ona.

jan Osawi li toki: “kulupu pona o. sina toki e ijo pi ike lili. taso o sona e ijo pi ike suli. jan li kama sona e pali ike mi la, mi ken kama pakala.”

jan Towesi li wile sona: “jan ante li sona ala e pali ike sina anu seme?”

jan pi pali ike li pana e toki: “sina taso en mi taso li sona. mi nasa e sona jan lon tenpo suli a! ni la, pilin mi la, ona li kama sona lon tenpo ala. ike la, mi ken e sina lon tomo mi. ni li pakala mi a! tenpo ala la, mi ken e jan pi ma mi lon tomo mi. ni la, mi suli nasa wawa tawa pilin ona.”

jan lili poka li awen sona ala: “mi kama ala sona. sijelo sina li kama sama lawa suli tan nasin seme a!?”

jan pi nasin nasa li toki: “mi kama nasa e lukin sina. o kama. o tawa poka mi. mi toki e ale.”

ona li nasin e kulupu tawa monsi pi tomo lawa. kulupu li kama la, jan lawa li kama e lukin ona tawa poka wan. lawa suli li lon. lipu mute li selo ona. kule pona li lon ona, li pana e oko, e uta, e nena tawa lawa.

jan Osawi li toki: “mi sewi e ona kepeken linja. selo sinpin li len e mi la, mi tawa e uta, e oko kepeken linja ante lili.”

jan kute li awen wile sona: “taso kalama li ken tan nasin seme?”

jan lawa li open sin e toki: “a- kalama li tan uta mi. taso mi ken pana e kalama mi tawa ijo pi wile mi. mi pana e kalama mi tawa lawa suli ni la, sina kama kute e kalama tan lawa. o lukin. ijo ante ni kin la, mi nasa e sona pi sina ale.” ona li kama e jan kasi tawa len meli suwi. namako kin en sinpin meli kin li lon. jan Osawi li kepeken ona ale la, ona li sama meli sewi tawa jan kasi. jan kiwen li kama lukin e ijo. soweli pi suli ike li lon ala. taso selo len suli li lon. palisa mute li lon insa, li awen e suli ona. jan pi wawa nasa ala li pali e seli sike kin. sama lawa suli la, ona li sewi e sike kepeken linja. lon la, ona li sike pi ko len. taso telo pi open seli en seli li kama lon sike la, sike li kama suno seli wawa.

jan pi kasi insa li toki utala: “ni la, sina o pilin ike tan pali ike sina.”

jan lawa pi wawa ala li toki pilin: “mi ni a! mi pilin ike a! taso pali mi taso en ijo ante ala li lon sona mi a! o kama lon supa. mi o toki e ale mi.”

kulupu li kama anpa lon supa pona, li kute e toki.

“mi tan ma Omewa.”

jan Towesi li kama kalama: “seme? a- ma mi Kansa la, ona li weka suli ala.”

jan Osawi li anpa e lawa ona. “ona li weka ala tan ma sina. taso ona li weka a tan ma ni! mi kama suli la, mi kama sona pana e kalama mi tawa ijo pi wile mi. jan pi sona suli li pana pona e sona. mi ken kalama sama soweli ale sama waso ale.” ona li mu sama soweli suwi. soweli Toto li sewi e nena kute ona, li wile lukin e soweli ante pi lon ala. jan Osawi li awen toki: “tenpo la, mi kama wile e ijo ante. mi kama lawa e sike kon lon sewi.”

“seme la, sina ni?”

jan toki li pana e sona: “kulupu musi li kama tawa ma la, mi tawa sewi kepeken sike kon. ni la, jan poka li kama, li lukin. ona li kute e mi la, ona li kama wile lukin e kulupu musi kama, li pana e mani tawa kulupu.”

jan kute li toki: “a! sona.”

“ni la, mi tawa sewi lon tenpo wan la, linja pi sike kon li kama nasa, li kama wan. mi kama ken ala tawa anpa. sike li tawa sewi suli a! walo sewi li kama walo anpa. ma li kama weka. kon li kama, li tawa e sike lon tenpo suli. suno li kama weka, li kama sin. mi pini e lape la, sike li lon sewi pi ma nasa pona.

sike li kama tawa anpa kepeken tenpo. mi kama ala pakala. taso mi lon poka pi jan nasa. ona li lukin e kama mi la, ona li anpa tan mi. mi tan sewi la, mi wawa nasa suli tawa pilin ona. ona li wile ala e ike tan mi, li wile pali e ale pi wile mi la, mi ante ala e pilin ona.

mi wile e musi la, mi wile e pali tan kulupu pona sin mi la, mi toki e wile mi tawa kulupu. ona o kama e tomo mute lon ma ni. tomo wan o suli, o tomo lawa mi. kulupu li wile pali, li pali pona. ni la, mi kama wile e ijo ante: ma poka ale li laso pona, li pona laso la, jan o toki e laso tan ma tomo mi kin. ni la, mi pana e ilo lukin laso tawa jan ale. laso ilo la, ale li laso tawa lukin jan.”

jan Towesi li wile sona: “taso ijo ale li laso lon poka mi, li laso lon ma ni ale. ni li lon ala anu seme?”

jan Osawi li toki: “ma tomo ante en ma mi la, laso li mute sama. taso ilo laso li lon lukin sina la, sina ken lukin a e laso taso a! ma pi laso lukin li kama open lon tenpo weka a! sike kon mi li kama e mi lon ma ni la, mi lili tenpo. mi toki tawa sina la, mi suli tenpo. taso kulupu pi ma mi li kepeken ilo laso lon lukin ona lon tenpo ale la, ma mi li laso taso tawa pilin pi ona ale anu pilin pi ona mute. lon la, ma mi li pona suli. kiwen mani mute li lon. ijo pona ale li lon. jan li pilin pona lon ni. mi pana e mute tawa jan pi ma mi. mi pona tawa ona. taso tomo suli lawa mi li open la, mi pini. mi tawa ala kulupu. mi toki tawa jan ala a!

“ijo wan li pana e pilin pi ike wawa tawa mi: mi ken kepeken ken mi taso la, jan li lon, li ken kepeken ken nasa namako a! ona li ken pali e ijo suli a! ona li tu tu lon ma ni, li lawa e jan lon poka tu tu. ona tu pi poka tu li pona ma tu, li pona la, pakala mi li tan ala ona. taso ona ante tu pi poka ante tu li ike a! pona la, mi wawa suli tawa pilin ona. ona li sona e ala ni la, pakala mi li tan ona a! tenpo suli la, mi awen pilin ike tan ona. o pilin: tomo sina li kama anpa lon jan ike wan la, mi pilin pona a lon kute pi ijo ni! sina kama lon mi la, mi toki e ale tawa moli pi jan ike ante. taso sina ni. sina moli e ona. ike la, mi ken ala pali sama toki mi.”

ni li pona ala tawa jan Towesi: “mi la, sina jan ike a!”

“a- sina pona o; mi jan pona. taso lon la, ken mi li ike. mi jan pi ken ike. ni li lon.”

jan pi selo len li alasa e sona: “sina ken ala pana e ijo pona tawa insa pi lawa mi anu seme?”

“sina wile ala a e ona! sona li awen kama tawa lawa sina. jan sin pi tenpo ala li jo e ijo lon insa lawa; taso ona li sona e ala. tenpo taso en kama ijo taso li ken pana e sona sin. sina awen lon tenpo suli la, sona sina kin li kama suli.”

jan pi kasi insa taso li toki: “ni ale li ken lon. taso sina pana ala e pona tawa insa pi lawa mi la, mi kama pilin pi ike mute.”

jan pi ken ike li lukin e ona, li pilin e ona.

ona pilin li mu e pilin: “a! sina sona e toki mi. ken mi li ike taso. taso sina kama lon pini pi tenpo lape la, mi kama pana e ijo tawa insa pi lawa sina. nasin seme la, sina ken kepeken ijo ni? mi sona ala. sina o alasa e nasin.”

jan wile li toki kalama: “a! pona. pona wawa a! mi kama alasa e nasin. mi kama sona e nasin. mi ken kama ken kepeken ijo pi insa lawa.”

soweli wile li alasa e sona tan jan: “taso wawa li ken ala ken lon pilin mi?”

jan Osawi li kama toki: “wawa li lon pilin sina a! ni li ken ala lon ala. o pilin e pilin sina. sina a wawa e pilin! ijo li ken moli la, ijo ni li pilin ike lon kama pi ken moli. taso sina awen lon kama ni pi ken moli la, ni a li wawa! sina jo a e wawa ni lon pilin sina!”

soweli pilin li toki pilin: “ni li ken. ni li ken. taso pilin ike li suli ike. mi kama pilin pakala la, o pana e wawa tawa pilin mi. wawa o weka e sona pi pilin ike.”

jan Osawi li toki pona: “a- mi kute e wile sina. suno li sin la, mi pana tawa sina.”

jan kiwen ilo li kama wile: “seme la, mi ken jo e pilin lon insa pi sijelo mi?”

jan kute li pana tawa kute: “a- ni la, wile sina li kama ala e ijo wile. pilin li kama e pilin ike lon jan mute. pilin li lon ala insa pi sijelo sina la, sina sona ala e pona sina a!”

jan wile li awen wile: “ni li toki sina. toki ante kin li lon. toki mi la, sina pana e pilin tawa mi la, mi kama ala mu ike tan pilin ike ale.”

jan anpa li kute e ona: “a! ni la, o lape, o tawa mi lon pini lape. mi pana e pilin tawa insa sina. pali mi li sama pali wawa la, pali mi li ken awen sama pali wawa lon tenpo lili.”

jan pi ma Kansa li wile sona: “seme la, mi ken tawa ma mi Kansa a!?”

jan kute li wile pana e ken ona: “mi o alasa e nasin. lape tu anu lape tu wan la, mi lukin pali. mi alasa e nasin pona la, mi ken tawa lon sewi pi ma seli. sina awen la, tomo mi o pona tawa sina. kulupu mi li pali tawa sina. o toki e wile sina tawa ona. mi wile e ijo wan taso. a ni li ike ala tawa sina ale la, o toki ala e ike mi! pali mi li pali pi lon ala la, jan ala o sona.”

kulupu pona li kama wile ala toki e ijo ni pi sona sin. ale li tawa tomo lape, li pilin pona. jan Towesi kin li pilin pona tan ken kama. jan pi toki suli pi nasa wawa: jan pi ma Kansa la, ni li nimi lon insa lawa. jan toki nasa ni li ken pana e nasin tawa ma mama. ona li kama a pana la, jan pi ma mama li ken ala pilin tawa ona pana! 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(16)]) #v(-10pt) #text(font: "Oz'sWizard", [pali pi lon ala li sama pali wawa])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[lape] li pini la, jan pi selo len li toki tawa kulupu ona:

“o pilin pona e ijo kama mi. mi tawa jan Osawi. ona li pana e ijo pona tawa insa pi lawa mi a! mi kama sin la, mi kama sama jan ante a!”

jan Towesi li toki pona: “sina pi ante ala li pona tawa mi.”

jan pi wile jan li toki: “mi pi kasi insa en mi pi selo len li pona tawa sina la, nasin sina li pona. taso ijo lawa sin mi li kama toki e ijo sona pona la, ijo ni li suli pona e pilin sina.” pilin pona la, ona li mu e tawa ona, li tawa. tomo lawa la, ona li, li luka kalama e lupa.

jan lawa li toki: “o kama.”

jan kasi li tawa insa. jan lawa lili li lon supa lon poka pi lupa kon, li alasa e pilin insa, e sona pona.

jan kama li toki tawa jan alasa: “mi lon. mi wile e ijo pona lon insa pi lawa mi.” ona li pilin pi nasa lili.

jan insa li toki: “a lon! o lon supa ni. o sona: sina wile e ijo tawa lawa sina la, mi o weka e lawa tan sijelo sina.”

jan pi supa ni li pilin ike ala: “ni li pona. sina pana sin e lawa tawa mi la, lawa mi o kama pona sin. ni li kama la, sina ken weka e lawa tan sijelo mi.”

ni la, jan pi kasi ala li weka e lawa tan sijelo kasi. ona li weka e kasi tan lawa. ona li tawa monsi tomo, li tawa tomo awen. ijo mute li awen lon ni. ona li luka e pan, e palisa awen mute, li wan e ale. ona li tawa nasa e wan ni la, wan li wawa. ona li pana e wan tawa lawa pi selo len, li pana pona e kasi ken kin.

ona li awen sin e lawa lon sijelo pi lawa ala la, ona li toki: “tan pana ni la, sina kama jan suli. lawa sina li lawa sin a!”

jan pi lawa sin li pilin pona a, li pilin wawa tan lon pi ijo wile ona! ona li toki pilin tawa jan pana ona, li tawa kulupu ona.

jan Towesi li lukin e ona, li wile sona e sin. lawa sin la, ijo sin mute li lon insa, li sike suli e lawa.

ona li alasa tan jan pi lawa sin: “ijo li pona ala pona?”

jan pi kasi taso ala li toki e lon: “nasin wawa li lon lawa mi a! mi awen pilin e ijo lawa la, mi ken kama sona e ale a!”

jan pi selo kiwen li wile sona: “seme la, palisa li kama tan selo pi lawa sina?”

soweli suli li toki pona: “palisa li pali sama wawa.”

jan pi pali kasi li wile tawa: “mi kin li wile tawa ona. mi wile e pilin mi.” ona li tawa tomo lawa, li luka kalama lon selo lupa.

jan insa li kalama: “o kama.” jan kama li tawa insa, li toki: “mi lon. mi wile e pilin lon insa pi sijelo mi.”

jan insa li toki: “a lon! taso o sona: sina wile e ni la, mi o lupa e sinpin pi sijelo sina. lupa la, mi ken pana pona e pilin lon insa pona. mi wile ala pakala e sina.”

jan pi pilin insa ala li toki: “a ike ala! mi ken ala pilin pakala.”

jan pi pilin insa li kama e ilo pi open kiwen, li open e kiwen sinpin lon sijelo kiwen. lupa pi suli lili li lon. poka la, sewi en anpa la, suli lupa li sama. jan pi ilo open li tawa poki pi supa mute, li kama jo e pilin wan tan poki. pilin ni li len, li suwi lon lukin. kiwen kasi li kama lili mute tan pakala la, jan jo li pana e ijo kasi ni tawa insa pi pilin len.

ona li toki: “pilin ni li suwi a!”

ni ale li pona a tawa jan pi lupa sinpin! “suwi a! taso ona suwi li pona ala pona kin e nasin jan?”

jan pi pilin suwi li tawa jan pi pilin ala. “pona mute.” ona li pana e pilin tawa lupa kiwen, li selo sin pona e lupa kepeken kiwen kepeken seli.

ona li pini. “ni a! sina jo e pilin sin lon insa. jan ale li ken wile e sama. ike la, pali mi li kama wile e selo sin wan lon sinpin sina.”

jan pi pilin sin li jan pi pilin pona, li kalama pona: “selo sin li ike ala. sina pali pona a! mi pilin pona tan sina. pona sina li awen lon mi lon tenpo ale.”

jan pana li toki: “a mi pali lili taso!”

jan pi pilin sin pona li tawa kulupu ona. kulupu li mu pona e pona wile ale lon ijo ni.

soweli kin li tawa tomo lawa, li noka kalama e selo lupa.

jan insa li toki: “o kama.”

soweli li kama, li kalama: “mi lon. mi wile e wawa lon pilin mi.”

jan li toki: “sona. sona. mi kama e ijo wile.”

ona li tawa poki pi supa mute. supa sewi la, ona li jo e poki lili. telo pi laso jelo li lon insa. jan li pana e telo ni tawa supa poki. supa ni kin li laso, li jelo suno kin. namako pona en nena lili pona li lon ona. jan li pana e ona lon sinpin soweli. soweli li pilin e kon tan telo kepeken nena. nasin pilin ni la, telo li ike tawa soweli ni anu seme?

jan li toki: “o moku.”

soweli li wile sona: “ona li seme?”

jan li pana e toki: “a ona li lon insa sina la, ona li wawa e pilin sina! lon la, sina sona: wawa li ken tan insa taso. sina moku ala e telo ni la, ona li ken ala wawa. sina wile a e wawa la, o moku a! moku ala la, ona li ken ala pana e ijo wile.”

soweli li awen ala, li moku e ale telo.

jan li wile sona: “pilin sina li seme?”

soweli li kalama: “wawa.” pilin pona wawa la, ona li tawa kulupu ona, li wile toki e pona ni.

jan li awen, li pilin tan pali ona. ona li kama pana pona e ijo wile a tawa jan pi kasi insa tawa jan pi seli kiwen tawa soweli suli! “mi pali pi lon ala. mi ken ala ni ala. ona ale li wile e ijo la, ijo ni li ken ala. pali taso pi lon ala li ken. ona tu wan li pilin e ken mi. ken mi ni li lon ala; taso pilin ona taso la, mi kama ken pona e pilin ona. a seme la, mi ken tawa e jan pi ma Kansa tawa ma Kansa!? pilin taso ala li ken e ni. mi sona ala e nasin.” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(17)]) #v(-10pt) #text(font: "Oz'sWizard", [ilo pi sike kon li tawa])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[lape] tu wan la, jan Towesi li kute e ala tan jan Osawi. kulupu ona li pilin pona; taso tenpo sama la, jan awen li pilin anpa. jan pi selo len li toki tan pona tan ijo pona pi lawa ona. taso ona taso li ken sona pona la, ona li kama ala toki e sona pi ijo ni. jan kiwen li toki e kalama tan tawa pi pilin insa. ona la, pilin sin ni li pona wawa. pilin sin la, pilin weka ona li ken ala pona sama. soweli la, ijo ale pi ma ni li ken ike e pilin ona. ona la, ona li ken a utala e mute pi kulupu soweli Kalita!

ni la, kulupu li pilin pona; taso jan lili pi kulupu ni li ken ala pilin pona, li wile a tawa ma mama ona!

tenpo lape nanpa tu tu li pini la, jan lawa li kama e ona. ni li pona e pilin ona. ona li kama lon tomo lawa la, jan pi tomo lawa li toki pona:

“a- o lon supa. mi kama sona e nasin. sina ken tawa ma ante a!”

ona li wile a sona: “a ma mi Kansa anu seme!?”

jan Osawi li toki: “ma Kansa la, mi sona ala. lon la, mi wile tawa poka seme? taso mi tawa lon ale pi ma pi seli wawa la, mi kama ken alasa sin tawa tomo sina.”

sin la, jan wile li wile sona: “seme la, mi ken tawa lon ma pi seli wawa?”

jan pi alasa nasin li kama toki: “mi ken toki e pilin mi. a- mi kama lon ma ni la, mi kepeken ilo tawa. sike suli li lon ona, li awen e ona lon kon sewi. sina kin li kama tan sewi. kon wawa li tawa e sina. ni la, nasin pona li seme? mi o tawa lon sewi a pi ma seli! lon la, mi ken ala kama e kon wawa. taso mi awen alasa e nasin la, ijo li kama tawa pilin mi: mi ken pali e ilo tawa pi sike suli.”

jan Towesi li wile sona: “kepeken seme?”

jan Osawi li toki. sike kon pi toki mi la, selo li len awen. ko li awen e len la, kon li awen lon insa. lon tomo mi la, mi jo e len pona mute. mi ken a pali e sike! taso ilo li wile ala e sike taso, li wile e sike kon. kon pi tawa sewi o awen e ilo lon sewi. taso ma ni la, kon wile li lon ala.”

jan Towesi li toki e pilin: “ona li ken ala lon sewi la, mi ken ala kepeken ona.”

jan pi ilo tawa li toki sona: “ken ala. taso mi ken sewi e ona kepeken nasin ante. kon pi tawa sewi li lon ala la, mi ken seli e kon pi namako ala. kon tawa en kon seli la, kon seli li pona lili taso. lete li kama lon sike la, ilo li tawa anpa. mi tu wan li kama weka lon ma pi seli ike.”

jan pi lili tenpo li kalama: “mi tu wan a! mi en soweli Toto en sina a li kulupu ala kulupu lon tawa!?”

jan pi suli tenpo li toki: “kulupu a! ma ni la, mi pali pi lon ala taso. mi wile pini e ni. mi kama weka tan tomo mi la, kulupu mi li kama sona e ike mi, e wawa ala mi. mi toki e ijo ante tawa ona la, ona li kama pilin ike tawa mi tan ijo pi lon ala. ni la, mi o awen a lon insa tomo! ni li anpa e mi. mi tawa ma Kansa lon poka sina la, mi ken musi sin lon kulupu musi sama tenpo ante.”

jan lili la, ni li pona: “sina lon kulupu la, ni li kulupu pona.”

jan suli li kama wile pali: “pona a! ni la, sina en mi li ken wan e len ale lon poka la, sike li ken kama lon.”

ni la, jan Towesi li pali kepeken linja kepeken palisa lili. tenpo sama la, jan Osawi li ilo e len tawa suli wile. linja li kama wan pona e len mute. len suno wan li laso pi kasi sin. len ante li laso pi kasi ko anpa. len pi ante kin li laso sama kiwen mani. mute laso li musi pona tawa jan Osawi. pali en lape en pali en lape en pali la, len ale li kama poki suli wan. poki li suli sama tomo.

jan Osawi li pana e ko tawa selo insa. ko ni la, kon li ken ala weka tan poki. jan pana la, ni li pini a e pali!

ona li awen toki: “taso sike li sewi ilo taso. anpa ilo li poki jan. tawa la, mi ale li ken awen lon insa pi poki ni.” ona li kama e jan utala pi linja sinpin laso. ona o kama e poki pi suli pona. pona la, poki li lon, li ken jo e len mute. jan pali li pana e poki ni tawa len suli poki kepeken linja mute.

ale li pini la, jan lawa li pana e toki tawa kulupu ona. toki la, ona li tawa jan pi mama sama. jan ni li ken pi wawa sama, li jo e tomo lon sewi. ni la, jan lawa o tawa ona kepeken sewi. ale toki li tawa kute kulupu ale kepeken tenpo lili. jan ale li kama, li wile lukin e ijo ni pi nasa musi.

jan lawa li kama e ilo tawa lon sinpin pi tomo lawa kepeken jan mute. kulupu li oko, li pilin e sin ijo. jan kiwen pi pali kasi li pakala e kasi la, ona li kepeken ijo kasi, li pali e seli. jan Osawi li pana e len suli tawa sewi seli. lupa li lon anpa la, kon seli li tawa insa kepeken lupa ni. len li kama poki kon, li kama suli, li kama sike, li tawa sewi kepeken tenpo. pini la, sike li lon sewi. poki anpa taso li awen lon ma.

jan lawa Osawi li tawa insa pi poki anpa, li kalama wawa tawa kulupu:

“mi kama tawa. o sona: mi weka la, jan pi selo len pi kasi insa li lawa e sina. o kute e ona. o pali tan toki ona. nasin lawa ona o sama nasin lawa mi tawa sina.”

sike li wawa a lon sewi! kon insa li seli la, ona li wile ala awen anpa sama kon pi seli ala. seli li wile kama e poki anpa kin lon sewi. sike li jo wawa e poki anpa kepeken linja.

jan pi ilo tawa li kalama sin: “jan Towesi o kama a! o kama a! ilo li tawa lon tenpo lili.”

taso jan pi toki ona li alasa e soweli lili pona ona: “soweli Toto li lon seme?” soweli Toto li tawa insa pi kulupu lukin, li mu tawa soweli tomo ko. pona la, jan ona li kama lon ona, li jo e ona, li tawa ilo pi sike kon.

jan en soweli li kama lon poka ilo. jan insa li kama e luka tawa ona tu, li wile tawa e ona tu tawa insa. a! taso kalama pakala li kama a! linja li kama tu, li ken ala awen e ilo. ilo pi sike sewi li tawa sewi, li tawa e jan insa, e jan ala pi insa ala, e soweli ala pi insa ala.

jan awen ni li kalama: “o weka ala. o kama. mi kin li wile tawa.”

jan tawa li kalama lon insa poki: “jan pona o. mi ken ala. mi kama weka.”

kulupu lukin li kalama: “weka pona.” ale li lukin e sewi, e ilo sewi, e tawa sewi ilo, e weka ilo.

ona ala li kama lukin sin e jan Osawi pi pali wawa. sona mi la, ona li ken lon ma open ona Omewa. taso jan awen pi ma lawa ona li awen sona e ona, li awen olin e ona. jan awen wan li toki tawa jan awen ante:

“jan Osawi li pona tawa mi lon tenpo ale. open la, ona li pali e tomo, e selo awen lon ma ni. ona li kama weka la, ona li pana e jan kasi sona tawa mi. jan sona ni li lawa pona e mi.”

taso kin la, ona li pilin ike tan weka pi jan lawa ona, li awen pilin ike lon tenpo suno mute. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(18)]) #v(-10pt) #text(font: "Oz'sWizard", [tawa ma Loje])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] Towesi li ken ala tawa ma ona la, ona li mu pi pilin ike. telo li lon oko. taso ona li awen la, pilin li kama ante. ilo pi tawa sewi li pana e pilin nasa tawa ona. ona li lon ala ilo ni la, ni li ike ala. awen la, jan Osawi li weka la, ni li ike tawa jan mu. kulupu ona li pilin sama.

jan kiwen pi pilin sin li tawa ona, li toki:

“ona li pana e pilin tawa mi la, mi o pilin tan weka ona. mi kin li wile kama e telo lon oko mi tan weka ona. sina pona li weka e telo tan mi la, kiwen pi sijelo mi li kama ala jaki pakala.”

jan lili li toki: “mi ni.” ona li kama e len lili. jan pi pilin sin li mu pilin la, oko li pana e telo lon tenpo suli. jan lili li lukin e telo ni, li weka e telo kepeken len. mu en telo li kama pini la, ona li toki e nasin pona pi jan lili. ona li kama e poki ona pi kiwen mani, li pana e telo ko tawa sijelo ona tan poki. sijelo o awen.

jan pi kasi insa li jo e lawa sin, li lawa sin e ma kin. ken ona li sama ala ken pi jan lawa pini. taso jan ma li pilin pona tawa ona: “ma ante ala la, jan pi selo len li lawa. ni li tan pi pilin mi.” lon la, sona ona la, ma ona taso li ni.

ilo sewi sike li weka la, lape li kama, li pini la, kulupu pi jan tu wan pi soweli tu li kama lon tomo lawa, li toki e ijo kama. jan pi lawa sin li lon supa pi jan lawa. kulupu li kepeken nasin pona, li lon sinpin pi jan lawa.

jan lawa li kama toki: “pona a li lon! tomo lawa ni en ma pi tomo ni li ijo pi mi mute. ijo wile mi ale li ken. lon tenpo pi weka ala la, palisa li awen e mi lon ma pan. taso mi kama lawa e ma ni. pona li kama lon mi.”

jan kiwen pi pilin insa sin li toki: “mi kin la, pona a li lon tan pilin sin mi! lon la, mi wile e ijo ni taso lon tenpo ale.”

soweli wawa li toki pi ike ala: “mi la, mi sona e wawa pi pilin mi. wawa ona li sama wawa pilin pi soweli ante ale. ni anu suli.”

jan lawa pi lawa sin li awen toki: “jan Towesi li wile awen lon ma laso ni la, ale li pilin pona.”

jan pi toki ona li kalama: “taso mi wile ala a awen! mi wile tawa ma mama mi tawa mama Me tawa mama Enwi.”

jan kiwen pilin li wile sona: “ni la, seme li ken?”

jan lawa li kama wile alasa. ona li kepeken lawa ona, li kepeken kepeken nasin wawa. nasin wawa ni la, palisa lili insa li kama tan lawa ona. pini la, ona li toki:

“ken wan la, soweli pi tawa waso li ken kama, li ken tawa e sina tawa weka pi ma seli.”

jan lili li toki pi pilin pona: “nasin pona a! sina toki pona. mi tawa len lawa namako mi a!”

ona li kama e ijo namako ni tawa tomo lawa, li toki lawa e nimi lawa. kulupu pi soweli waso li tawa lon kon, li kama lon insa kepeken lupa kon, li kama lon poka pi jan ona.

soweli pi lawa kulupu li anpa tawa jan pi toki lawa: “sina kama e mi lon tenpo nanpa tu. sina wile e seme?”

jan Towesi li toki: “mi wile tawa ma Kansa. o tawa e mi.”

taso soweli lawa li tawa e lawa ona tan poka wan tawa poka ante.

ona li toki: “mi ken ala. mi tan ma ni taso. mi lon ma ni taso. mi ken ala weka tan ona. soweli pi kulupu mi li lon ala ma Kansa. soweli pi kulupu mi li kama ala lon ma Kansa kin. ona li soweli pi ma Kansa ala. mi pali tan wile sina lon ken mi. taso mi ken ala tawa lon ma seli. mi weka.”

soweli lawa li anpa sin tawa jan lawa ona. ona li suli e luka ona pi tawa waso, li tawa waso, li tawa weka lon lupa kon, li tawa lon kon lon poka pi kulupu ona.

jan awen la, telo sin lili li kama lon oko. ni li pakala a! “mi weka e tenpo wan tan len namako lawa a! ala li kama tan ona. soweli waso li ken ala e pona lon mi.”

jan pi pilin suwi sin insa li toki: “lon la, ni li ike a!”

jan pi ijo lawa sin li kama kepeken ijo lawa ona. selo pi lawa ona li kama sike a! jan pi telo oko la, sike ni li ken pakala lon tenpo.

jan pi lawa sike li toki: “mi o toki tawa jan utala pi linja sinpin laso. ona li ken la, ona o pana e sona.”

ona li kama e jan pi linja laso. jan utala ni li tawa insa pi tomo lawa kepeken pilin nasa: lawa pi jan Osawi la, ona o lon ala insa, o awen lon lupa tomo taso.

jan lawa li toki tawa jan utala: “jan lili ni li wile tawa lon ma pi seli wawa. ona li ken kepeken nasin seme?”

jan utala li toki e sona ona: “ala li kama tawa lon ona. jan suli Osawi taso li kama. ni la, mi sona ala e nasin.”

jan Towesi li wile a sona: “jan ala a li ken pana e sona nasin tawa mi anu seme!?”

jan utala li pana e ken: “jan Loje li sona e ijo mute.”

jan lawa la, nimi ni li sin: “jan Loje li seme?”

“ona li jan pi wawa nasa, li lawa e ma Loje. ma ale la, wawa ona a li suli! ona li lawa e jan pi kulupu Kuwalin lon ma Loje. kin la, tomo ona li lon poka a pi ma seli! ni la, ona li ken sona e nasin tawa lon ma seli.”

jan lili li wile sona: “jan Loje li pona anu seme?”

jan utala li toki: “jan pi kulupu Kuwalin li pilin pona lon ona. ona li wile pona tawa jan ale. kute la, jan Loje li pona a tawa lukin kin! tenpo li suli lon ona. taso ona li sona awen e pona pi selo ona.”

jan Towesi li alasa e sona: “seme la, mi ken tawa tomo ona?”

jan toki ante li kama e sona: “nasin wan li tawa ma Loje. taso sona la, jan li wile kepeken ona la, ike mute li ken. soweli utala li ken alasa e sina lon ma pi kasi suli. jan nasa li wile ala e jan pi ma ante. tan ike ni la, jan ala pi ma Loje li kama lon ma mi.”

jan utala ni li tawa weka. jan lawa li toki:

“a- ike li lon; taso pilin la, awen la, jan Towesi o tawa ma Loje pi toki ona, o toki tawa jan Loje. jan Loje li ken pona e ijo la, ni li nasin pona. lon la, jan Towesi li awen lon ma ni la, ona li ken ala tawa ma mama ona.”

jan kiwen li toki: “pilin mi la, sina kama kepeken ijo pi lawa sina.”

jan pi ijo lawa li toki: “kepeken a!”

soweli wawa suli li kama toki: “mi wile tawa lon poka. mi pilin pi musi ala lon ma ni pi kasi ala. mi wile lon ma kasi lon weka tomo. mi soweli pi tomo ala a! kin la, mi ken awen e jan lili mi.”

jan pi ilo kasi li pilin sama: “jan lili mi o pona. ilo mi kin li ken pona lon nasin. ni la, mi kin li tawa ma Loje lon poka.”

jan pi kasi insa li wile sona: “mi o open e tawa lon tenpo seme?”

kulupu li mu tan toki ona: “sina kin li tawa anu seme?”

“tawa a! jan Towesi ala la, ijo li kama ala tawa insa pi lawa mi. ona li weka e mi tan palisa awen mi lon ma pan. ona li kama e mi lon ma mani ni. pona mi ale li tan ona. ona li awen tawa ala ma ona la, mi o awen a lon poka ona!”

jan pi toki ona li pilin pona tan wile ona: “pona. sina ale a li pona tawa mi! taso mi wile open e tawa lon tenpo poka a! mi wile ala awen.”

jan pi ijo lawa pona li toki sin: “mi ale o tawa lon pini lape. pali li lon tawa ni la, mi o pali. tawa li ken suli a!” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(19)]) #v(-10pt) #text(font: "Oz'sWizard", [kasi utala li utala])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[lape] li pini la, jan Towesi li tawa jan lili laso, li toki e weka ona, li uta lili e ona tan weka ona. kulupu tawa li tawa jan utala pi linja sinpin laso. ona en jan pi linja laso li tawa selo sinpin ma. jan awen pi selo ma li lukin e kulupu la, ona li pilin e ken ike: kulupu li weka tan selo pona ma la, pakala li ken lon kulupu. taso ona li weka e ilo lukin tan sinpin pi ona ale, li poki e ilo. ona li toki e wile pona a tawa kulupu tan tawa kulupu!

ona li toki e wile ante kin tawa jan pi lawa sin: “sina jan lawa sin mi. o kama tawa ma mi sina lon tenpo lili.”

jan lawa sin li toki e wile sama: “mi ken la, mi o ni. taso open la, jan Towesi o tawa ma ona.”

jan Towesi li toki pona e weka tawa jan awen.

“ale li kepeken nasin pona tawa mi lon ma sina. pona suli a li tan sina! ike la, mi ken ala toki e ale pi pilin pona mi.”

jan ni kin li toki: “ike ala. mi ale li wile e sina lon ma mi. taso sina wile tawa ma weka Kansa la, mi wile e nasin pona tawa sina.” ona li open e lupa lon selo ma. kulupu li tawa.

suno li lon sinpin ona la, kulupu pona li tawa ma Loje. ona ale li pilin pona a, li mu pona, li toki pona! jan lili li kama pilin sin e ken: ona li ken a tawa tomo ona! jan tawa poka li ken pona e nasin la, ona tu li pilin pona. a soweli suli li pilin e kon, li pilin pona tan kon! linja pi monsi ona li tawa pona tan poka wan tawa poka ante. ma a li pana e pilin pona sin tawa ona! soweli lili Toto li tawa lon poka kulupu ale, li alasa e pipi waso, li mu pona lon ale.

soweli suli pi pilin pona li toki: “tomo pi mute suli li pona ala tawa mi. sijelo mi li kama lili lon ma pi tomo mute. mi wile a kepeken wawa sin pi pilin mi! soweli ante o sona a!”

kulupu li pini lili e tawa, li lukin e ijo pi monsi ona. ma laso pi tomo mute la, ona li ken ala lukin e ijo mute. kiwen suli a li selo e ma la, tomo mute li anpa! lukin la, tomo pi suli wawa en palisa pi sewi tomo li lon. suli pi sewi ale la, tomo lawa pi jan Osawi li anpa e tomo ante ale.

jan pi selo kiwen li kute e kalama pi pilin sin ona lon insa ona la, ona li toki: “lon la, ken pi jan Osawi li pona a!”

jan pi selo len li toki kin: “ona li sona pana e ijo tawa insa pi lawa mi a! ijo pana ona li pona.”

soweli wawa li toki: “ona li pana e wawa tawa pilin mi. ike la, ona li pana ala e wawa sama tawa ona. ona li pana e wawa tawa pilin ona la, ken ona li suli ale a!”

jan lili Towesi li toki ala. jan weka Osawi li wile pona e ijo pi jan lili, li toki e wile ni tawa jan lili. ona li kama ala pona e ijo; taso ona li lukin pona e ijo, li kepeken ken ona ale. ni la, jan lili li pilin pi ike ala tawa jan weka. lon la, jan ni li toki a e lili pi ken ona! toki ona la, ona li jan ike ala; taso ken ona li ike. ken ona li ike.

kulupu li tawa la, ma li laso pona, li jo e kasi walo lon poka ale pi ma lawa. pimeja li kama la, kulupu li lape lon laso ma. mun taso li lon sewi ona. lape ona li pona a!

suno li sin la, ona li open sin e tawa. ona li kama lon ma pi kasi suli mute. poka wan en poka ante la, kasi suli li sinpin. nasin ante ala li lon. ni la, ona li ken tawa insa taso. lon la, ona li ante e nasin la, ona li ken kama sona ala e nasin pona. ni la, ona li awen wile tawa sinpin, li alasa e nasin pona tawa insa pi ma kasi.

jan kasi pi selo len li tawa lon sinpin kulupu, li kama lukin e kasi pi suli wawa a! sewi ona la, palisa li suli, li tawa weka kasi la, ona li weka pona e kasi poka. kulupu li ken tawa insa ma lon anpa ona. jan pi kasi insa li tawa kasi ni. taso ona li kama lon anpa pi palisa kasi la, palisa ni li kama linja, li tawa jan, li kama jo e jan. kasi li sewi a e ona, li weka wawa e ona tawa sewi pi kulupu ona!

ni li pakala ala e jan pi kiwen insa ala. taso ni li nasa e ona. jan lili li sewi sin e ona la, ona li awen pilin pi nasa mute.

soweli li kalama: “nasin ante li lon, li ken e mi tawa insa kasi. o kama.”

jan pi pakala ala li toki: “mi wan o open e tawa. ijo li tawa e mi la, mi ken ala kama pakala.” toki ni la, ona li tawa kasi ante. taso kasi li kama jo e ona, li weka wawa sin e ona.

jan Towesi li kalama: “nasa a! mi o seme?”

soweli li toki: “pilin la, kasi li wile utala e mi, li wile pini e tawa mi.”

jan pi ilo kasi li sewi e ilo kasi ona, li toki: “mi o lukin tawa.” ona li tawa kasi utala nanpa wan. linja kasi wan li tawa anpa, li wile jo e jan la, jan li ilo wawa e linja, li tu e linja. ni la, kasi li tawa lili wawa e palisa ona ale. lukin la, ona li pilin pakala. jan ilo li tawa pona lon anpa kasi.

ona li kalama tawa kulupu: “o kama. o kepeken tenpo lili.” ale li tawa, li kama lon anpa kasi. pakala ala li tawa kulupu. a- lon la, linja lili li kama jo e soweli lili Toto, li tawa ike e ona. taso soweli lili li mu tan ike ni la, jan ilo li ilo e linja, li kama e pona soweli.

kasi ante li kama ala pakala e tawa. ni la, kulupu li kama pilin e nasin kasi: kasi selo taso li ken linja e palisa ona. kasi ni li awen e ma kasi insa, li weka e jan pi ike ken.

kulupu pi jan tu wan pi soweli tu li awen tawa pona lon kasi. ona li kama lon poka ante pi ma ni. nasa sin li kama. sinpin suli li lon pini pi ma kasi, li walo a! walo li tan kiwen pi poki moku. nena ala en lupa ala li lon kiwen. poki moku la, ale li ken tawa pona lon selo kiwen la, sinpin ni li sama. lon poka pi jan suli la, sinpin li suli a!

jan pi suli ala li wile sona: “mi o seme?”

jan pi pali kasi li toki: “mi pali e nasin kepeken palisa kasi. mi o tawa sewi pi sinpin ni.” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(20)]) #v(-10pt) #text(font: "Oz'sWizard", [ijo li ken kama pakala lon ma pi kiwen walo])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] pali li pali e nasin palisa kepeken kasi pi ma ni. jan lili Towesi li supa lon ma, li lape. tawa li weka e wawa ona. soweli suli kin li supa, li sike, li lape. soweli lili li lape lon poka ona.

jan awen pi lape ala li lukin e jan pali, li toki tawa jan pali:

“mi sona ala e ijo: sinpin ni li lon tan seme? kiwen ona li seme?”

jan pali li toki: “sina ken lape e lawa sina. sinpin li ken ala pini e tawa mi. mi kama lon sewi ona la, mi kama sona e ijo pi poka ante.”

nasin pi palisa mute li kama pini. ona li nasa tawa lukin; taso jan pi pali ona li pilin pona tawa ona. ona li wawa, li ken e tawa kulupu. jan kasi pi pali ala li tawa jan lape tawa soweli lape. jan kasi li pini e lape ona, li toki e kama pi nasin palisa. jan pi kasi insa li tawa nanpa wan lon nasin; taso tawa ona li nasa suli la, jan Towesi li kama awen e ona lon nasin lon monsi ona. lawa pi jan nanpa wan li kama lon sewi sinpin la, ona li mu: “aa!”

jan lili pi monsi ona li kalama: “o awen tawa a!”

ni la, jan sinpin li awen tawa sewi, li pana e monsi ona lon sewi sinpin. lawa pi jan lili li kama lon sewi, li jan lili, li mu sama jan nanpa wan: “aa!”

ni la, soweli lili li tawa sewi, li mu a! taso jan ona li kama pini e kalama ona.

soweli suli li nanpa tu tu. jan pi sijelo kiwen li nanpa pini. ona tu kin li kama lon sewi la, ona kin li mu: “aa!” ona ale li lape e sijelo lon sewi ni la, ona li lukin e ijo anpa, e nasa.

lon poka la, ma suli li lon, li supa taso, li jo e nena ala, e lupa ala, li walo a! ona li sama sike walo pi supa moku. poka mute la, tomo pi kiwen walo sama li lon. kule wawa li lon tomo ale. tomo li lili a! suli pi jan Towesi li sama tomo suli tu. tomo kin pi kulupu soweli li lon. palisa walo mute li selo e ma poka pi tomo ni. soweli lili en soweli pi lili suli en waso lili li kiwen walo lon ona.

taso jan pi ma ni li nasa wawa a lon ma nasa ni! jan mute li pali lon soweli. len pona ona li kule wawa, li jo e sike mute pi jelo suno lon ale len. jan lawa suwi la, walo suno en jelo suno en loje wawa li lon len awen. jan ante li awen e soweli la, linja pi loje walo en linja jelo en linja laso li lon len pi noka sewi; len pi noka anpa la, kiwen jelo suno li lon pimeja. jan lawa wawa la, kiwen jelo suno li lon lawa. len suwi soweli suli en len suno awen li lon sijelo ona. jan musi li lon; loje sike li lon poka tu pi sinpin ona. len ona li tawa poka ale. lawa la, poki awen li tawa sewi, li kama lili lon sewi. nasa li seme? jan ni ale la, sijelo en len li kiwen a! jan ale a li lili a! suli pi jan Towesi li sama jan suli tu tu.

jan ni li lukin ala e kulupu kama lon open. soweli loje lili wan taso li tawa sinpin. lawa suli ona li mu pi kalama lili tawa kulupu. ni la, soweli kiwen ni li tawa weka.

jan sewi Towesi li wile sona: “nasin seme la, mi tawa anpa?”

ike la, nasin palisa sin ona li wawa, li wile awen anpa. kulupu li ken ala sewi e ona. tan ni la, jan kasi pi pakala ala li tawa anpa e sijelo ona. kulupu li tawa anpa lon sijelo ona la, noka ona li kama ala pakala tan kiwen anpa. ona li tawa pona, li wile ala kama lon lawa ona pi ijo insa sin. ijo ni kin li ken pakala e noka. sijelo pi jan anpa li sama lipu la, kulupu li sewi e ona, li pona e ona kepeken luka.

jan anpa Towesi li toki: “mi wile tawa poka ante pi ma nasa ni la, mi o tawa lon ona. mi tawa poka la, mi kepeken nasin ante la, mi tawa ala ma wile taso. ni li pona ala.”

kulupu li kama tawa lon ma pi jan kiwen lili. nanpa wan la, ona li kama lon jan pi kiwen walo lon soweli pi kiwen walo. jan kiwen li kama e telo walo mama tan soweli kiwen. kulupu li kama lon poka ona la, soweli li noka wawa e supa, e poki telo, e jan ona lon poka. kalama suli la, ona ale li tawa anpa.

jan lukin Towesi li pilin ike tan nasa pi sin ni: soweli la, noka li weka pakala. poki li pakala, li kiwen lili mute lon ma. jan pi pali soweli la, ijo pi lili mute li weka lon luka ona.

jan lili pi kiwen walo li kalama utala: “o lukin a! o lukin e pakala sina. noka pi soweli mi li kama weka. ni la, mi o kama e ona lon jan pi pali kiwen. ona o wan e noka, e soweli. tan seme la, sina kama? kama sina li ike suli e pilin pi soweli mi la, ona li pakala.”

jan suli Towesi li toki: “mi wile ala kama e pakala a! mi wile pona tawa sina.”

taso jan lili suwi li pilin pi pona ala a, li kama ala toki! ona li kama jo e noka, li tawa e soweli. soweli li tawa nasa kepeken noka tu wan. tawa la, jan kiwen ni li lukin pi pilin ike e monsi, e jan kama nasa. luka ona pi pakala lili li awen lon poka a ona!

ike ni li anpa a e pilin pi jan Towesi!

jan pi pilin insa suwi li toki: “mi o kepeken ala wawa lon ma ni. mi ken pakala e jan lili suwi ni ale. ona li ken kama pilin ike awen a!”

kulupu li awen tawa la, ona li kama lukin e jan lili lawa wan. len ona li suwi wawa a! jan pi len suwi li lukin e kulupu kama la, ona li pini a e tawa ona, li open sin e tawa wawa, li wile weka suli!

jan Towesi li wile awen lukin e jan suwi ni la, ona li tawa ona. taso jan ni pi kiwen walo li kalama:

“o alasa ala e mi a! o alasa ala e mi aaa!”

pilin pi ike suli li lon kalama la, jan alasa li pini e tawa, li wile sona: “tan seme?”

jan lili tawa li pini e tawa lon weka pona, li toki: “o sona: mi tawa pi wawa suli la, mi ken kama anpa pakala. anpa la, sijelo mi li ken kama pakala.”

jan suli li pilin e ken: “taso jan pali li ken ala ken wan sin e ale pi sijelo sina?”

jan lili li pana e sona: “ken a! taso kiwen pakala li kama wan sin la, suwi ona li kama lili. ona li kama pona lili taso tawa lukin.”

jan suli li toki: “a- ken.”

jan lili li awen toki: “o sona e jan Soke. ona li jan musi. ona li wile sewi e noka ona, li wile ma e lawa ona lon tenpo ale. ona li kama pakala lon tenpo mute la, jan pali li wan e ale ona lon tenpo mute. ijo mute pi sijelo ona li kama weka, li kama sin. ni li pona ala tawa lukin. a ona li kama! sina kin li ken kama lukin.”

lon la, jan wan li kama, li pilin musi, li musi tawa lukin. jan suli li ken lukin e len pona loje, e len jelo, e len laso; taso ona li ken lukin e selo ona kin. linja lupa lili li lon ale a pi selo ona! lon la, ijo mute pi sijelo ona li kama pakala a, li kama wan sin!

jan musi kule ni li pana e luka ona tawa poki pi len ona. ona li kon e uta la, lawa ona li kama sike. ona li tawa musi e lawa, li wile ala kepeken nasin pona, li toki:

#h(0pt)

#align(center)[
"sina lukin\
e mi mu kin\
la sina sama kala.\
sina moku\
ala moku\
e ko pi pona ala?"
]

#h(0pt)


jan lawa lili li toki: “o toki ala ni. jan ni li tan ma ante. o pona a tawa ona!”

jan musi li toki: “tawa ona a o pona!” ona li sewi e anpa ona, li awen e lawa ona lon ma.

jan suwi li toki tawa jan suli: “o kute ala e jan Soke. lawa ona li pakala lon tenpo mute la, ona li kepeken nasin nasa.”

jan suli li toki: “a- ike ala. taso sina suwi a tawa lukin! mi ken olin pona a e sina! mi ken ala ken kama e sina tawa ma mi Kansa? jan Me li pali e poki seli lon tomo la, sina ken pona lon sewi pi poki seli. sina wile la, mi ken tawa e sina lon poki poka mi.”

jan pi kiwen walo li toki: “ni li kama e pilin ike taso tawa mi. o sona: mi lon ma ni la, ale li pona lon mi. mi ken tawa. mi ken toki. mi ken kepeken wile mi. taso jan pi ma ni li kama weka tan ma ni la, ale sijelo li kama pimeja taso. ona li sama palisa wan a! ona li ijo suwi taso. lon la, mi lon poki anu sewi pi poki seli anu supa pi tomo mani la, jan li wile a lukin e suwi mi! taso pilin mi li pona a lon ma ni!”

jan pi kiwen ala li kalama: “mi wile ala a kama e ike lon pilin sina! ale o pona lon sina. ni la, mi o toki e weka mi tawa sina. ni taso li ken.”

jan lawa lili li toki: “tawa sina o pona.”

kulupu pi jan suli pi soweli suli li noka pona lon ma, li tawa kepeken wawa lili. soweli lili en jan lili li tawa weka tan ona. pilin ona la, kulupu suli nasa li ken pakala e ona. tenpo la, kulupu li kama lon poka ma ante. sinpin pi kiwen walo li lon ni kin.

taso suli pi sinpin ni li sama ala sinpin open. kulupu li kama lon sewi pi soweli suli wawa la, ale li ken kama lon sewi sinpin. soweli wawa li wawa e noka ona, li tawa sewi. taso tawa ni la, linja monsi ona li tawa tomo lili. tomo ni li sewi tawa kulupu, li kama pakala tan linja monsi. ona li kama kiwen lili mute.

jan Towesi li toki: “a ni li ike! taso pilin la, ike li lili. mi kama pakala e noka soweli taso, e tomo wan taso. ale a li ken kama pakala lon ma ni!”

jan pi kasi insa li toki: “ni a! mi jo e kasi taso lon insa la, mi ken ala kama pakala tan ijo mute. ni la, mi pilin e ike ala lon sijelo mi.” 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(21)]) #v(-10pt) #text(font: "Oz'sWizard", [soweli wawa li kama lawa e soweli ale])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[kulupu] li kama anpa tan sewi sinpin la, ona li lon ma jaki. telo li lon ma, li ko e ma. kasi mute linja li tan ma, li suli sama jan, li pona ala. lupa ko li pakala e tawa lon ma. kasi linja li mute la, ona li len a e lupa! taso kulupu li alasa pona e nasin la, ona li awen tawa, li kama lon ma pi ko ala. ike la, ma ni li jo e kasi mute. kasi kiwen anpa la, tawa li wile e tenpo, e wawa. ona li kama lon ma pi kasi suli. kasi li suli wawa a, li kiwen, li open lon tenpo weka a!

soweli suli wawa li toki pi pilin pona: “ma ni li pona wawa.” ona li lukin e poka ale la, pilin li awen kama pona. “mi sona ala e ma pi pona ni. pona suli.”

jan pi selo len li toki: “pimeja li suli lon ma ni, li ike.”

soweli li toki: “ike ala a! mi wile awen lon ma ni lon tenpo ale. o pilin e suwi pi lipu kasi kepeken noka sina. o lukin e wawa laso pi kasi ko lon selo pi kasi kiwen suli. soweli li ken ala wile e ma ante lon ni.”

jan lili li toki: “ni la, soweli ante li lon ma ni anu seme?”

soweli li toki kin: “ken. taso mi lukin ala e ona.”

kulupu li tawa lon insa pi kasi suli mute. taso pimeja li kama la, ona li ken ala awen tawa. jan lili en soweli lili en soweli suli li anpa, li lape. jan kiwen pi lape ala en jan kasi pi lape ala li lukin e ona sama tenpo ante.

suno li kama la, ona li open sin e tawa. ona li tawa lili taso la, kalama li kama. kalama li sama kalama pi soweli mute. soweli Toto taso li mu lili tan pilin ike. kulupu li pilin pi ike ala. noka mute li kama e nasin lon poka kasi la, kulupu li awen tawa lon nasin ni. lon insa pi kasi mute la, ma lili pi kasi ala li lon. soweli pi suli ale pi kule ale pi sijelo ale li lon ma pi kasi ala. soweli suli la, jan lili Towesi li kama pilin ike lon tenpo lili; taso soweli wawa li pana e sona: soweli ni ale li toki kulupu. soweli wawa li kute e mu soweli. kute ni la, soweli pi ma ni li toki e ijo ike suli.

soweli wawa li toki e ni la, soweli ante li kama lukin e ona. kepeken tenpo ala la, kulupu soweli li kama kalama ala tan wawa. soweli alasa suli a li kama tawa soweli wawa kama, li toki:

“soweli lawa pi soweli ale o. kama sina o pona. sina lon tenpo pona. sina ken utala e ike. sina ken pana e pona sin tawa soweli ale pi ma ni.”

soweli kama li toki pi pona wile: “seme li ike?”

soweli alasa li toki: “mi ken kama pakala a tan ike! ike ni li sin lon ma mi pi kasi mute. ona li ijo pi ike nasa. ona li pipi; taso suli ona li anpa e suli pi soweli ante ale. noka ona li suli sama kasi suli pi ma ni. noka li palisa luka tu wan, li tawa lon ma ni, li kama jo e soweli, li pana e soweli tawa uta. pipi ike li moku wawa e soweli. mi ale a li ken kama moli tan ona! toki kulupu ni la, mi wile alasa e nasin awen. seme la, mi ken moli ala? pona la, sina kama.”

soweli wawa pi ma ante li pilin e pilin insa.

ona li wile e sona tan soweli ante: “lon ma ni la, soweli ante li sama ala sama mi?”

“sama ala. open la, soweli li sama sina, li lon. taso pipi suli ike li moku e ona ale. kin la, wawa ona li sama ala wawa sina.”

soweli li toki wile: “mi pini e ike la, sina ale li kama ala kama anpa lon mi? mi kama ala kama soweli lawa pi ma ni?”

soweli alasa li toki sin: “kama a! kama. ni li pona.” soweli ale li mu wawa sama: “ni li pona.”

soweli wawa li toki: “pipi pi toki sina li lon seme?”

soweli alasa li pana e nasin kepeken noka sinpin. “tawa ni. lon insa pi kasi suli wawa.”

soweli pi utala pipi li toki: “kulupu mi o awen pona. mi tawa utala. mi utala e pipi.”

ona li pilin wawa, li alasa e pipi.

soweli li kama lon pipi suli la, pipi li lape. ona li jaki a tawa lukin soweli la, soweli li nasa e sinpin ona! soweli ante li toki e lon la, noka pipi li suli. ale pi selo pipi la, linja pimeja li lon. uta pipi li suli a! ilo kiwen ona li suli sama lawa pi jan Towesi. taso lawa pipi li lon sijelo sijelo la, insa li lili. soweli li lukin e lili ni la, ona li kama sona e nasin utala pona. sama la, lape pipi li lili e utala wile. sona ni la, soweli li tawa sewi pipi, li kama lon pipi. kepeken tawa wan pi luka wawa la, ona li weka e lawa pipi tan sijelo kepeken kiwen luka wawa. ona li anpa tan pipi. noka pipi li awen tawa lon tenpo lili. taso tawa li kama pini la, soweli li sona e moli pipi.

ona li tawa ma pi kulupu soweli, li toki pi pilin wawa:

“ike pipi li pini.”

soweli ale li anpa e lawa ona tawa soweli lawa sin ona. soweli lawa li wile kama sin lon tenpo ante, li wile lawa pona e kulupu soweli. open la, jan Towesi o tawa ma Kansa. 

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(22)]) #v(-10pt) #text(font: "Oz'sWizard", [ma pi kulupu Kuwalin])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] tu wan en soweli tu li tawa pona lon ale pi ma kasi ni. ona li kama weka tan kasi la, ona li lukin e nena. nena ni li tawa sewi a! ale nena la, kiwen suli li lon.

jan laso li toki: “ni li ike e tawa. taso mi o tawa lon ona.”

ona li tawa la, kulupu kin li tawa. ona li kama lon poka pi kiwen nanpa wan la, ona li kama kute e kalama. kalama li kalama pi jaki lili: “o kama ala.”

jan kasi pi poka kiwen li wile sona: “sina seme?”

lawa li kama tan monsi pi kiwen poka. kalama sama li tan lawa, li toki: “nena ni li nena pi kulupu mi. mi ken ala e tawa sina.”

taso jan kasi li toki: “a- mi wile tawa lon ona. mi tawa ma Loje pi kulupu Kuwalin.”

kalama li toki: “sina o ni ala.” jan li kama tan kiwen. kulupu li lukin e ijo nasa mute lon tawa. taso jan ni li nasa a tawa lukin ona!

sijelo ona li lili, li sike. lawa ona li suli, li supa lon sewi. anpa lawa li sike, li nena lili mute lon selo. taso luka ala li lon sijelo. jan kasi suli li lukin e ni la, ona li pilin e ike ala tan jan lili ni. jan lili li ken ala pini e tawa kulupu. ni la, jan suli li toki: “a wile sina li ante ala e nasin mi! mi tawa lon nena sina. sina wile anu wile ala la, mi tawa.” ona li pilin wile, li tawa.

kepeken tenpo ala la, lawa pi jan nasa li tawa jan suli. anpa lawa li kama suli, li palisa. supa sewi lawa li utala e insa pi jan tawa. jan tawa suli ni li tawa anpa, li tawa sike, li kama lon anpa nena. kepeken tenpo lili la, lawa li tawa anpa, li kama lon sijelo. jan pi lawa nasa li mu ike tan pilin musi, li toki: “lon la, tawa li wile e wawa a!”

tan kiwen ante la, mu sama mute li kama. jan Towesi li lukin e jan mute a pi lawa supa pi luka ala lon monsi pi kiwen ale!

mu li tan ike pi jan kasi la, soweli suli li kama pilin ike tan mu ike ni. ona li mu pi wawa suli la, mu li kama sin tan nena. mu ni la, soweli li tawa wawa lon nena.

sama la, lawa li kama tawa soweli. utala ni la, soweli suli wawa li kama anpa ike sama.

jan Towesi li tawa anpa nena, li sewi e jan kasi anpa. soweli suli li tawa ona, li pilin pakala. soweli li toki: “lon jan ni pi lawa utala la, utala li ike. ala li ken anpa e ona.”

jan lili ona li wile sona: “ni la, mi o seme?”

jan kiwen li kama toki: “o kama e soweli waso. sina awen ken kama e ona lon tenpo wan.”

jan lili li toki: “a pona!” ona li kepeken len lawa namako, li kepeken nimi lawa namako. jan pi luka waso li kama kepeken tenpo lili. ale kulupu li kama lon poka ona.

soweli lawa pi kulupu ni li anpa e lawa, li toki: “wile sina li seme?”

jan lawa lili li toki: “o tawa e mi lon sewi pi nena ni. mi o tawa ma pi kulupu Kuwalin.”

soweli lawa li toki: “mi o ni.” soweli li jo luka pona e jan tu wan, e soweli tu, li tawa sewi. ona li kama lon sewi nena la, jan pi lawa supa li kalama utala, li pana e lawa ona tawa sewi. taso ona li ken ala tawa soweli waso. kulupu li tawa pona, li kama lon ma pi kulupu Kuwalin.

soweli lawa li toki tawa jan lili Towesi: “sina ken ala kama e mi lon tenpo sin. mi weka. ale sina o pona.”

jan lili li toki kin: “weka pona. ale sina kin o pona.” soweli pi tawa waso li tawa sewi, li kama weka a!

ma Loje pi kulupu Kuwalin li pona e pilin, li jo e ijo mute. ma pi pan mute li lon ma poka pi pan mute. nasin pi kiwen pona en nasin telo pona li tawa lon insa pi ma pan. palisa li selo e ma, li loje. tomo li lon ma, li loje. nasin kiwen li tawa sewi pi nasin telo la, kiwen li loje. ma Laso la, ijo li laso lon kulupu Mankin la, ma Jelo la, ijo li jelo lon kulupu Winki la, ma Loje ni la, ijo li loje lon kulupu Kuwalin. jan pi kulupu Kuwalin li lili, li sike pona, li pilin pona. len ona kin li loje. loje ni li wawa a lon laso pi kasi anpa lon jelo pan!

soweli waso li pana e kulupu tawa poka pi tomo pan. jan tu wan en soweli tu li tawa tomo ni, li kalama lon selo tomo kepeken luka. jan pi pali pan li open e lupa. jan Towesi li toki tawa ona, li wile e moku la, jan pali li pana e moku pona a lon insa tomo! pan suwi suli pi nasin tu wan en pan suwi lili pi nasin tu tu li lon. soweli Toto li kama moku e telo walo pona.

jan Towesi li alasa e sona tan jan pali pi tomo ni: “mi wile tawa tomo pi jan Loje. ni li wile e tenpo seme?”

jan tomo li toki: “tenpo pi suli ala. o awen kepeken nasin. sina kama tawa ona lon tenpo lili.”

kulupu li toki e pilin pona tawa jan tomo, li open sin e tawa. ona li tawa lon poka pi ma pan, li tawa lon nasin lon sewi telo. kama la, ona li lukin e tomo suli wawa. tomo li pona a tawa lukin! jan sin tu wan li awen lon sinpin suli pi tomo ni. len pi jan sin li loje, li pona a, li jo e namako pi jelo suno! jan Towesi li tawa ona tu wan la, jan awen wan li toki:

“sina tawa ma Loje tan seme?”

jan kama li toki: “mi wile toki tawa jan lawa pi ma ni. sina ken ala ken kama e mi tawa ona?”

“o pana e nimi sina tawa mi. mi toki tawa jan Loje la, mi kama sona e ken tawa sina.” ale kulupu li toki e nimi la, jan awen li tawa insa tomo. tenpo la, ona li kama sin, li toki e ken: kulupu pi jan Towesi li ken tawa insa lon tenpo ni.

])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa #get_nanpa(23)]) #v(-10pt) #text(font: "Oz'sWizard", [jan Loje pona li wawa, li kama e ijo wile pi jan Towesi])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[taso] open la, ona li kama ala tawa jan Loje. ona li kama lon tomo awen. tomo ni la, jan Towesi li telo e sinpin ona, li nasin e linja ona. soweli suli li tawa poka wawa e sijelo la, ko li kama weka tan linja ona. jan pi selo len li luka pona e ale sijelo la, selo ona li pona. jan kiwen li pona suno e selo kiwen ona, li pana e ko tawa lon insa pi palisa ona.

sijelo ale li kama pona la, jan sin li kama e ona tawa tomo suli lawa. jan Loje li lon ni, li lon supa pi kiwen loje mani.

jan lawa ni li suwi tawa lukin. tenpo li ante ala e ona. linja ona li loje wawa, li sike mute, li tawa anpa lawa. len ona li walo taso. oko ona li laso, li lukin e jan lili kama.

ona li wile sona tan jan lili: “jan pona o. mi ken seme tawa sina?”

jan Towesi li toki e ale tawa ona: toki la, kon li tawa e ona, li kama e ona lon ma Osawi. toki ona en jan ante en soweli li kama kulupu. toki la, ijo mute li lon kulupu, li lon jan pi ma ante, li lon mute.

ona li awen toki pilin: “wile suli mi la, mi o tawa ma Kansa. mama Me li kama pilin e ike lon mi. pilin ona la, mi kama pakala. ni li kama anpa e ona. kin la, pan pi ma ona li kama ala suli pona la, anpa pi mama Me li kama pakala e ale pi mama Enwi. ni li kama weka e mani la, ale li kama pini.”

jan Loje li tawa jan lili ni, li pana e uta tawa sinpin pi jan pi pilin suli.

ona li toki: “a ni li ijo ike! pilin la, mi ken alasa e nasin tawa ma pi wile sina. taso sina tawa la, sina o pana e ijo: len lawa la, sina ken lawa namako e soweli. o pana e ona.”

jan pi len namako li kalama: “wile a! lon la, mi ken ala awen kepeken ona. sina jo e ona la, sina ken lawa e kulupu pi soweli waso lon tenpo tu wan.”

jan Loje li pilin pona, li toki: “pilin la, mi wile e ona lon tenpo tu wan taso.”

jan jo li pana e len tawa ona. jan lawa pi jo sin li toki tawa jan pi selo len: “jan Towesi li weka la, sina wile seme?”

jan pi ijo lawa sin li toki: “mi tawa ma tomo pi kiwen laso. jan Osawi la, mi lawa e jan ma li pona tawa jan. ijo ike wan taso li lon. nena poka la, jan pi lawa supa li utala e mi.”

jan lawa Loje li toki: “kepeken len lawa la, mi kama e soweli waso. ona li tawa e sina la, sina kama lon ma pi wile sina. ma sina la, lawa namako li lon ala la, ni li ken ike.”

jan lawa kasi li wile sona: “mi namako ala namako?”

jan Loje li toki: “sina sama ala jan ante.”

ona li tawa jan pi pi ilo kasi: “jan Towesi li weka la, sina wile seme?”

jan ilo li lape lili e sijelo lon ilo kasi, li alasa e wile. ona li kama toki: “kulupu Winki pi ma Jelo li pona tawa mi. jan Jelo pi lawa ike li moli la, ona la, mi o lawa. mi pilin pona lon jan pi kulupu Winki. mi ken tawa ma Jelo la, mi wile lawa e ma Jelo, e jan ma.”

jan lawa li toki: “nanpa tu la, mi kama e soweli waso. ona li tawa pona e sina la, sina kama lon ma pi wile sina. lon la, suli pi lawa sina li sama ala lawa pi jan kasi. taso wawa ona li sama ala wawa sina. sina wawa sama suno. sina pona e selo sina la, suno wawa li kama tan selo. pilin la, sina lawa pona sona e kulupu pi ma Jelo.”

ni la, jan lawa li lukin e soweli suli pi linja mute, li wile sona: “jan Towesi li kama lon ma ona la, sina wile seme?”

soweli li toki: “jan utala pi lawa supa li lon nena la, ma kasi suli li lon poka ante. kasi li suli wawa, li open lon tenpo weka. soweli pi ma ni li kama soweli lawa e mi. mi ken tawa ona la, mi wile awen lon ona.”

jan Loje li toki: “nanpa tu wan la, mi kama e soweli waso. ona li tawa e sina la, sina kama lon ma pi wile sina. ni la, mi kama kepeken len lawa namako lon ale pi ken mi. mi pana e len tawa soweli waso lawa. ni la, ona en kulupu ona li ken ale pi wile ona lon tenpo ale.”

jan kasi en jan kiwen en soweli wawa li toki e pilin pona tawa jan lawa. jan lawa li pali pona a! jan lili li kalama:

“sina pona tawa lukin taso ala. sina pona tawa ijo pali sina kin a! taso sina kama ala toki e nasin pi ma mi tawa mi.”

jan lawa Loje li toki: “len walo suno li lon noka sina. ona li ken tawa e sina lon sewi pi ma seli suli. lon la, sina ken sona e ni lon tenpo ante la, sina ken tawa mama sina lon open pi tawa sina.”

jan pi ijo lawa li kalama: “taso ni la, ijo pona li kama ala lon insa pi lawa ni. mi ken kama awen lon ma pan lon tenpo ale a!”

jan pi sijelo kiwen li toki: “pilin suwi li ken lon ala mi kin. sina ala la, mi ken awen pi tawa ala lon ma kasi tan jaki kiwen lon ale tenpo a!”

soweli li toki: “mi la, wawa ala li ken lon pilin mi. pilin mi li ken anpa e mi. tenpo ala la, soweli li kama toki pona tawa mi. jan ni li ante e ale.”

jan Towesi li kama toki: “sina ale li toki pona. ni ale li lon. kin la, mi kama ken e ante pi wile sina la, mi pilin pona. taso ni ale li pini la, sina ken pilin pona lon ma lawa a sina la, o ken e mi lon ma mama mi!”

jan lawa Loje li toki: “len suno pi noka sina la, wawa suli mute li lon. wawa wan li nasa pona: ona li ken tawa e sina tawa ma ale a! sina noka tu wan la, sina kama lon ma ante kepeken tenpo ala. o wan e monsi pi noka sina tu lon tenpo tu wan; o toki wile e ma. len li tawa e sina tan ni.”

jan lili li toki pi pilin pona a: “ni li lon la, mi wile toki e ma Kansa tawa ona. mi wile ala awen.”

ona li luka olin e sijelo suli pi soweli wawa, li uta e ona, li suwi e lawa ona kepeken luka. ona li uta e jan kiwen pi pilin suwi. jan kiwen li pana e telo pi mute ike la, insa pi palisa ona li ken kama ike. jan Towesi li wile ala pakala e kule selo pi jan kasi la, ona li jo pona e sijelo ko pi jan kasi. weka pi kulupu pona ni li kama lon tenpo poka la, jan lili kin li pana e telo tan oko.

jan pona Loje li kama tan supa mani ona. ona li uta e jan lili tan weka kama. jan Towesi la, pali pi jan lawa li pona e ona, e kulupu ona kin.

pini la, ona li sewi luka e soweli Toto. ona li toki e weka ona, li wan e noka tu lon tenpo tu wan. ona li toki:

“o pana e mi tawa tomo pi mama mi Me.”

wawa la, ona li tawa kon sewi. ona li kama lukin ala, li kama pilin ala. kon taso li tawa lon kute ona.

len suno la, noka tu wan taso la, tawa li pini a! ni li anpa e jan ona. jan lili li tawa sike mute lon kasi anpa. ona li lon ma seme? tan tawa ni ale la, ona li sona ala.

ona li kama sewi sin la, ona li ken lukin e ma.

ona li kalama: “wawa a!”

kalama ona li tan seme? ona li lon ma supa suli Kansa. lon sinpin ona la, tomo sin li lon. kon pi wawa ike li weka e tomo pi sin ala la, jan Enwi li pali e tomo sin ni. lon tomo soweli poka la, jan Enwi li kama e telo walo tan soweli mama. soweli Toto li tawa tan luka pi jan lili, li tawa tomo pi soweli mama, li mu wawa mute.

jan lili li kama awen pona lon noka ona la, ona li kama sona: len selo taso li lon noka. len walo suno li kama weka lon tenpo pi tawa ona, li awen lon ma suli pi seli suli. 
])

#pagebreak(weak: true)

= #text(font: "sitelen seli kiwen mono asuki", [nanpa pini]) #v(-10pt) #text(font: "Oz'sWizard", [tomo pona a])

#dropcap(
  height: 3,
  gap: 4pt,
  hanging-indent: 1em,
  overhang: 8pt,
  font: "nasin-palisa", [
#box[jan] Me li kama tan tomo, li wile telo e kili sike suli. ona li kama lukin e jan Towesi. jan kama li tawa ona a!

jan suli li kalama: “a olin suwi mi o!” ona li selo a luka e jan lili, li uta mute e sinpin pi jan lili! “sina weka la, sina lon ma seme a!?”

jan Towesi li toki pilin e lon: “lon ma Osawi. a o lukin: soweli Toto kin li lon. a suli mi Me o! mi lon tomo mi la, pilin li kama pona suli a!” 

])

#set page(footer: context [])
#pagebreak()


