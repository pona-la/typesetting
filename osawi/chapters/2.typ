#import "@preview/meander:0.4.1"

#import "../template.typ": *

#show: template

// Chapter title page
#[
  #set page(background: image("../illustrations/2.png", fit: "cover"))
]

// Clear to recto
#pagebreak(to: "odd")

// /*
// We layout each chapter with meander so that text can flow around images
#meander.reflow({
  import meander: *

  // First page: drop cap She
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2a.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the drop cap on this page
  placed(
    top + center,
    box(width: 100%, height: 38%),
  )
  placed(
    top + left,
    box(width: 31%, height: 68%),
  )

  container()
  pagebreak()


  // Regular full-text page
  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -25mm, dy: -30mm, image("../illustrations/2b.png", width: page_width, height: page_height))
  pagebreak()

  // Blank page
  pagebreak()

  // Illustration of three Mankins
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2c.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    bottom + right,
    box(width: 50%, height: 45%),
  )
  placed(
    bottom + right,
    box(width: 59%, height: 20%),
  )

  header()
  container()
  pagebreak()

  // Illustration of shoes under the house
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2d.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    bottom + left,
    box(width: 50%, height: 36%),
  )
  placed(
    bottom + left,
    box(width: 75%, height: 22%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Towesi with the shoes
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2e.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    top + right,
    box(width: 56%, height: 40%),
  )
  placed(
    top + right,
    box(width: 35%, height: 55%),
  )

  header()
  container()
  pagebreak()

  // Unu seeks advice
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2f.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    bottom + center,
    box(width: 100%, height: 4.5%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Unu disappears
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/2g.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    top + left,
    box(width: 55%, height: 40%),
  )

  header()
  container()

  content[lape jan li kama pini tan tawa a! tawa li suli, li wawa pi tenpo lili la, ni li ken pakala e jan pi supa lape ala. pona la, jan Towesi li lon supa lape, li kama ala pakala. tawa la, ona li kama wile moku e kon, li wile sona e kama. kin la, soweli Toto li pana e nena lete ona tawa sinpin pi jan ona, li mu lili e pilin ike. jan Towesi li tawa sewi tan supa. ona li kama lukin e ante lon tomo. tawa li lon ala. sama la, pimeja li lon ala. suno walo li kama tan lupa poka, li suno ale e tomo. jan li tawa tan supa, li wile tawa tan tomo. soweli Toto li tawa lon poka pi noka ona. jan lili li open e lupa.

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
  ]
})
