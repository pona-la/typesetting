#import "@preview/meander:0.4.1"

#import "../template.typ": *

#show: template

// Everything from here should be broken into individual chapter files that we import.
// Edit: AH, typst include is different to LaTeX \input - it compiles before importing!
// The above won't be as simple as I expected.

// Chapter title page
// TODO add text to this, likely with inkscape?
// saving it for later since images will need a pass to assess their margins & alignment
#[
  #set page(background: image("../illustrations/1.png", fit: "cover"))
]

// Clear to recto
#pagebreak(to: "odd")

// /*
// We layout each chapter with meander so that text can flow around images
#meander.reflow({
  import meander: *

  // First page: drop cap Dorothy
  // TODO create an image placement wrapper function
  // so it's easier to adjust placement.
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/1a.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the drop cap on this page
  placed(
    top + center,
    box(width: 100%, height: 51%),
  )
  placed(
    top + left,
    box(width: 70%, height: 58%),
  )
  placed(
    top + left,
    box(width: 40%, height: 61.5%),
  )
  placed(
    top + left,
    box(width: 13%, height: 66%),
  )
  placed(
    bottom + right,
    box(width: 18%, height: 19%),
  )

  container()
  pagebreak()


  // Regular full-text page
  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -25mm, dy: -30mm, image("../illustrations/1b.png", width: page_width, height: page_height))
  pagebreak()

  // Blank page
  pagebreak()

  // Illustration of grey Enwi and Me
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/1c.png",
    width: page_width,
    height: page_height,
  ))

  // Collision boxes for the illustration
  placed(
    bottom + right,
    box(width: 30%, height: 60%),
  )
  placed(
    bottom + right,
    box(width: 48%, height: 33%),
  )
  placed(
    bottom + right,
    box(width: 59%, height: 10%),
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

  // Towesi in the storm
  placed(left + top, dx: -25mm, dy: -30mm, boundary: contour.phantom(), image(
    "../illustrations/1d.png",
    width: page_width,
    height: page_height,
  ))

  header()
  container()

  content[ma supa suli Kansa lon ma Mewika la, jan Towesi en jan Enwi en jan Me li lon tomo sama. mama pi jan Towesi la, jan Enwi li jan sama. ona li jan pi pali ma pan. jan Me li jan olin ona. kiwen kasi li kama tan ma pi weka suli la, tomo ona li lili. sinpin tu tu en supa sewi wan en supa anpa wan li tomo wan taso tawa jan ale. ona li jo e ilo seli moku wan, e supa wan pi poki moku, e supa moku wan, e supa monsi mute, e supa lape tu. supa lape nanpa wan li suli, li lon poka tomo wan, li tawa jan Enwi, li tawa jan Me. supa lape nanpa tu li lili, li lon poka tomo ante, li tawa jan Towesi. sewi la, tomo li lon ala. anpa kin la, tomo li lon ala. taso lupa li lon anpa ma, li ken awen e jan tan tawa pi kon wawa. kon li tawa wawa sike la, tawa kon li ken pakala e tomo a! jan li open e supa lili la, ona li ken tawa anpa kepeken palisa nasin, li ken lon insa pi lupa anpa pimeja lili ni.

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

    tomo li awen tawa nasa. kon tawa li awen mu. taso tenpo lili la, jan Towesi li pini e oko ona, li kama lape a!]
})
