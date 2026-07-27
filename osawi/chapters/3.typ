#import "@preview/meander:0.4.1"

#import "../template.typ": *

#show: template

// #set box(stroke: stroke(red))

// /*
// We layout each chapter with meander so that text can flow around images
#meander.reflow({
  import meander: *

  // Chapter opening page
  placed(left + top, dx: -3mm, dy: -10mm, boundary: contour.phantom(), image(
    "../illustrations/3.jpg",
    width: page_width * 0.85,
    height: page_height * 0.85,
  ))

  pagebreak()
  pagebreak()

  // Chapter drop cap "When"
  placed(top + center, dx: -6mm, dy: -40mm, boundary: contour.phantom(), image(
    "../illustrations/3a.jpg",
    width: page_width * 0.9,
    height: page_height * 0.9,
    fit: "contain",
  ))

  // Collision boxes for the drop cap on this page
  placed(
    top + center,
    box(width: 100%, height: 46.5%),
  )
  placed(
    top + left,
    box(width: 67%, height: 57%),
  )
  placed(
    top + left,
    box(width: 42%, height: 78%),
  )

  container()
  pagebreak()

  // Regular full-text page
  header()
  container()
  pagebreak()

  // bottom-right image, weird house
  placed(bottom + right, dx: -margin_side - 1mm, dy: -5mm, boundary: contour.phantom(), image(
    "../illustrations/3b.jpg",
    width: page_width * 1.02,
    height: page_height * 1.02,
    fit: "contain",
  ))

  placed(
    bottom + right,
    box(width: 20%, height: 27%),
  )
  placed(
    bottom + right,
    box(width: 50%, height: 15%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -5mm, dy: -30mm, image(
    "../illustrations/3c.jpg",
    width: page_width * 0.85,
    height: page_height * 0.95,
    fit: "contain",
  ))
  // Dxt
  placed(left + bottom, dx: 15mm, dy: 0mm, box(width: 115mm)[#align(
    center,
  )[#text(fill: navy, size: 10pt)[_"sina jan suli pi wawa nasa." _]]])
  pagebreak()

  // Blank page
  pagebreak()

  // Illustration of munchkins
  placed(bottom + right, dx: margin_side, dy: margin_bottom, boundary: contour.phantom(), image(
    "../illustrations/3d.jpg",
    width: page_width * 0.6,
    height: page_height * 0.6,
    fit: "contain",
  ))

  // Collision boxes for the illustration
  placed(
    bottom + right,
    box(width: 30%, height: 65%),
  )
  placed(
    bottom + right,
    box(width: 55%, height: 10%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -5mm, dy: -20mm, image(
    "../illustrations/3e.jpg",
    width: page_width * 0.85,
    height: page_height * 0.85,
    fit: "contain",
  ))
  // Dxt
  placed(left + bottom, dx: 0mm, dy: 5mm, box(width: 115mm)[#align(
    center,
  )[#text(fill: navy, size: 10pt)[_"ona li lukin e ijo ni, li pilin insa." _]]])
  pagebreak()

  // Blank page
  pagebreak()

  header()
  container()
  pagebreak()

  // Illustration of shoes under house
  placed(left + bottom, dx: -margin_side, dy: margin_bottom + 5mm, boundary: contour.phantom(), image(
    "../illustrations/3f.jpg",
    width: page_width * 0.9,
    height: page_height * 0.9,
    fit: "contain",
  ))

  // Collision boxes for the illustration
  placed(
    bottom + left,
    box(width: 30%, height: 50%),
  )
  placed(
    bottom + left,
    box(width: 50%, height: 45%),
  )
  placed(
    bottom + left,
    box(width: 63%, height: 33%),
  )
  placed(
    bottom + left,
    box(width: 100%, height: 5%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  header()
  container()

  content[jan ala li lon poka pi jan Towesi. ona li kama pilin e wile moku. ni la, ona li tawa supa poki, li kama e pan lili tan pan, li ko jelo e pan lili. ona li pana e pan tawa soweli Toto kin. ona li tawa e poki suli tan supa, li tawa e poki tawa telo lili lon poka tomo. ona li insa e telo pona lon poki. soweli Toto li tawa kasi suli, li mu tawa waso pi kasi ni. jan Towesi li tawa ona, li wile jo e ona, li kama lukin e kili pona a lon kasi! ona li alasa e kili la, ona li jo e kili pona tawa moku ona lon open ni pi tenpo suno.

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
  ]
})
