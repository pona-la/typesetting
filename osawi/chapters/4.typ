#import "@preview/meander:0.4.1"

#import "../template.typ": *

#show: template

// #set box(stroke: stroke(red))

// /*
// We layout each chapter with meander so that text can flow around images
#meander.reflow({
  import meander: *

  // Chapter opening page
  placed(left + top, dx: -10mm, dy: -16mm, boundary: contour.phantom(), image(
    "../illustrations/4.jpg",
    width: page_width * 0.98,
    height: page_height * 0.98,
    fit: "contain",
  ))

  pagebreak()
  pagebreak()

  // Chapter drop cap "When"
  placed(top + center, dx: -20mm, dy: -22mm, boundary: contour.phantom(), image(
    "../illustrations/4a.jpg",
    width: page_width * 1.05,
    height: page_height * 1.05,
    fit: "contain",
  ))

  // Collision boxes for the drop cap on this page
  placed(
    top + center,
    box(width: 100%, height: 46.5%),
  )
  placed(
    top + left,
    box(width: 53%, height: 57%),
  )
  placed(
    top + left,
    box(width: 44%, height: 60%),
  )

  placed(
    top + left,
    box(width: 35%, height: 75%),
  )

  placed(
    top + right,
    box(width: 5%, height: 100%),
  )

  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -5mm, dy: -20mm, image(
    "../illustrations/4b.jpg",
    width: page_width * 0.85,
    height: page_height * 0.85,
    fit: "contain",
  ))
  // Dxt
  placed(left + bottom, dx: 0mm, dy: 5mm, box(width: 115mm)[#align(
    center,
  )[#text(fill: navy, size: 10pt)[_"jan pi kasi insa li toki: 'tenpo suno pini tu taso la, mi kama lon.'"_]]])
  pagebreak()

  // Blank page
  pagebreak()

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Illustration of scarecrow and crows
  placed(left + bottom, dx: -margin_side, dy: margin_bottom - 41mm, boundary: contour.phantom(), image(
    "../illustrations/4c.jpg",
    width: page_width * 1.02,
    height: page_height * 1.02,
    fit: "contain",
  ))

  // Collision boxes for the illustration
  placed(
    top + left,
    box(width: 28%, height: 65%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Little house illustration
  placed(center + bottom, dx: 0mm, dy: margin_bottom, boundary: contour.phantom(), image(
    "../illustrations/4d.jpg",
    width: page_width * 0.7,
    height: page_height * 0.7,
    fit: "contain",
  ))

  header()
  container()
  pagebreak()

  content[tenpo kama suli la, nasin li kama pona ala. nasin li wile e pali tan jan tawa. jan pi selo len la, noka li kama tawa pakala tan kiwen jelo. kiwen jelo li supa ala a! lon la, kiwen li pakala lon poka wan, li weka lon poka ante. lupa pi kiwen weka la, soweli Toto li tawa sewi lupa. jan Towesi li tawa sike lon selo lupa. jan pi kasi insa li jo ala e pona lon lawa la, ona li tawa sinpin taso. ona li kama noka lon lupa la, ona li kama anpa pakala lon kiwen nasin. taso ni li pana ala e pilin pakala tawa ona. ni li kama la, jan Towesi li sewi e ona lon noka ona. jan kasi li kama awen tawa lon poka pi jan Towesi. ona li mu e pilin musi ona tan pakala ona.

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
  ]
})
