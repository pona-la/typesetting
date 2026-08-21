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
    "../illustrations/5.png",
    width: page_width * 0.94,
    height: page_height * 0.94,
    fit: "contain",
  ))

  pagebreak()
  pagebreak()

  // Chapter drop cap "When"
  placed(top + center, dx: -8mm, dy: -35mm, boundary: contour.phantom(), image(
    "../illustrations/5a.png",
    width: page_width * 0.88,
    height: page_height * 0.88,
    fit: "contain",
  ))

  // Collision boxes for the drop cap on this page
  placed(
    top + center,
    box(width: 100%, height: 38%),
  )
  placed(
    top + left,
    box(width: 67%, height: 52%),
  )

  placed(
    top + left,
    box(width: 35%, height: 70%),
  )

  container()
  pagebreak()

  header()
  container()
  pagebreak()

  placed(top + center, dx: -margin_side, dy: -33mm, boundary: contour.phantom(), image(
    "../illustrations/5b.png",
    width: page_width * 1,
    height: page_height * 1,
    fit: "contain",
  ))

  placed(
    bottom + left,
    box(width: 52%, height: 35%),
  )

  placed(
    bottom + left,
    box(width: 35%, height: 72%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  // Full-page illustration
  placed(left + top, dx: -5mm, dy: -20mm, image(
    "../illustrations/5c.jpg",
    width: page_width * 0.85,
    height: page_height * 0.85,
    fit: "contain",
  ))
  // Dxt
  placed(left + bottom, dx: 0mm, dy: 5mm, box(width: 115mm)[#align(
    center,
  )[#text(fill: navy, size: 10pt)[_"'This is a great comfort,' said the Tin Woodman." _]]])
  pagebreak()

  // Blank page
  pagebreak()

  header()
  container()
  pagebreak()

  placed(bottom + left, dx: -margin_side, dy: 18mm, boundary: contour.phantom(), image(
    "../illustrations/5d.png",
    width: page_width * 0.92,
    height: page_height * 0.92,
    fit: "contain",
  ))

  placed(
    bottom + left,
    box(width: 45%, height: 15%),
  )

  placed(
    bottom + left,
    box(width: 100%, height: 7%),
  )

  header()
  container()
  pagebreak()

  header()
  container()
  pagebreak()

  placed(bottom + left, dx: -9mm, dy: -12mm, boundary: contour.phantom(), image(
    "../illustrations/5e.png",
    width: page_width * 0.93,
    height: page_height * 0.93,
    fit: "contain",
  ))

  placed(
    bottom + left,
    box(width: 45%, height: 15%),
  )

  placed(
    bottom + left,
    box(width: 33%, height: 45%),
  )

  header()
  container()
  pagebreak()

  placed(bottom + left, dx: -18mm, dy: -38mm, boundary: contour.phantom(), image(
    "../illustrations/5f.png",
    width: page_width * 1.09,
    height: page_height * 1.09,
    fit: "contain",
  ))

  placed(
    bottom + right,
    box(width: 37%, height: 33%),
  )

  placed(
    bottom + right,
    box(width: 17%, height: 50%),
  )

  header()
  container()
  pagebreak()

  content[jan Towesi li pini e lape la, suno li lupa e palisa kasi. soweli Toto li alasa e waso, e soweli lili lon tenpo suli. jan lili li kama sewi, li lukin. jan pi kasi insa li lon, li awen lon poka ona, li awen tawa tenpo pi jan Towesi.

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
  ]
})
