#import "@preview/lilaq:0.6.0" as lq

#set page(height: 6in, width: 4in, margin: 10mm)

#set par(leading: 0.35em, spacing: 0.75em, justify: true, justification-limits: (tracking: (min: -0.01em, max: 0.02em)))
#show heading: set block(above: 0.75em, below: 0.5em)

#set text(size: 9pt)
#set text(font: "Marauder* Text")

#let word(word, ucsur, glyphs: "") = {
  if glyphs == "" {
    glyphs = (word + ".svg",)
  }

  // get def and etymology
  let def = toml("definition.toml").at(word)
  def = str.replace(def, "; ", ";\n")
  let ety = toml("etymology.toml").at(word)

  let usage_data = toml("usage.toml").at(word)

  let usage_num = usage_data.at(1).last()
  let usage = "core"
  if usage_num < 30 {
    usage = "obscure"
  } else if usage_num < 60 {
    usage = "uncommon"
  } else if usage_num < 90 {
    usage = "common"
  }

  // get last usage data point and categorise it

  box[
    = #word
    #text(size: 1.25em)[#def]\
    *#usage* #sym.dot.c #usage_num%\
    #ety

    == Usage
    #grid(
      columns: (1fr, 1fr, 2fr),
      align: (center, center, center),
      [
        === sitelen pona
        #for glyph in glyphs [
          // Best approach I found was to scale the glyphs to fit inside a bounding box
          #block(width: 4.5em, height: 4.5em)[
            #align(horizon + center)[
            #image("sitelen_pona/" + glyph)
            ]
          ]
        ]

      ],
      [
        === sitelen sitelen
        // Little space because this font hugs the top of the box
        #v(0.25em)
        #text(font: "sitelen sitelen open", size: 4.5em)[#ucsur]

      ],
      [
        === Usage Trend
        // TODO make this diagram look wayyyyy better
        #lq.diagram(
          xlim: (2021.5, 2025.5),
          ylim: (0, 103),
          xaxis: (tick-distance: 1, mirror: false, subticks: none),
          yaxis: (tick-distance: 20, mirror: false),
          height: 17.5%,
          width: 100%,
          lq.plot(color: black, ..usage_data),
        )
      ],
    )
  ]
  v(1fr)
}

// Core Words
#word("a", "󱤀")
#word("akesi", "󱤁")
#word("ala", "󱤂")
#word("alasa", "󱤃")
#word("ale", "󱤄")
#word("anpa", "󱤅")
#word("ante", "󱤆")
#word("anu", "󱤇")
#word("awen", "󱤈")
#word("e", "󱤉")
#word("en", "󱤊")
#word("esun", "󱤋")
#word("ijo", "󱤌")
#word("ike", "󱤍")
#word("ilo", "󱤎")
#word("insa", "󱤏")
#word("jaki", "󱤐")
#word("jan", "󱤑")
#word("jelo", "󱤒")
#word("jo", "󱤓")
#word("kala", "󱤔")
#word("kalama", "󱤕")
#word("kama", "󱤖")
#word("kasi", "󱤗")
#word("ken", "󱤘")
#word("kepeken", "󱤙")
#word("kili", "󱤚")
#word("kiwen", "󱤛")
#word("ko", "󱤜")
#word("kon", "󱤝")
#word("kule", "󱤞")
#word("kulupu", "󱤟")
#word("kute", "󱤠")
#word("la", "󱤡")
#word("lape", "󱤢")
#word("laso", "󱤣")
#word("lawa", "󱤤")
#word("len", "󱤥")
#word("lete", "󱤦")
#word("li", "󱤧")
#word("lili", "󱤨")
#word("linja", "󱤩")
#word("lipu", "󱤪")
#word("loje", "󱤫")
#word("lon", "󱤬")
#word("luka", "󱤭")
#word("lukin", "󱤮")
#word("lupa", "󱤯")
#word("ma", "󱤰")
#word("mama", "󱤱")
#word("mani", "󱤲")
#word("mi", "󱤴")
#word("moku", "󱤶")
#word("moli", "󱤷")
#word("monsi", "󱤸")
#word("mu", "󱤹")
#word("mun", "󱤺")
#word("musi", "󱤻")
#word("mute", "󱤼")
#word("nanpa", "󱤽")
#word("nasa", "󱤾")
#word("nasin", "󱤿")
#word("nena", "󱥀")
#word("ni", "󱥁")
#word("nimi", "󱥂")
#word("noka", "󱥃")
#word("o", "󱥄")
#word("olin", "󱥅")
#word("ona", "󱥆")
#word("open", "󱥇")
#word("pakala", "󱥈")
#word("pali", "󱥉")
#word("palisa", "󱥊")
#word("pan", "󱥋")
#word("pana", "󱥌")
#word("pi", "󱥍")
#word("pilin", "󱥎")
#word("pimeja", "󱥏")
#word("pini", "󱥐")
#word("pipi", "󱥑")
#word("poka", "󱥒")
#word("poki", "󱥓")
#word("pona", "󱥔")
#word("pu", "󱥕")
#word("sama", "󱥖")
#word("seli", "󱥗")
#word("selo", "󱥘")
#word("seme", "󱥙")
#word("sewi", "󱥚")
#word("sijelo", "󱥛")
#word("sike", "󱥜")
#word("sin", "󱥝")
#word("sina", "󱥞")
#word("sinpin", "󱥟")
#word("sitelen", "󱥠")
#word("sona", "󱥡")
#word("soweli", "󱥢")
#word("suli", "󱥣")
#word("suno", "󱥤")
#word("supa", "󱥥")
#word("suwi", "󱥦")
#word("tan", "󱥧")
#word("taso", "󱥨")
#word("tawa", "󱥩")
#word("telo", "󱥪")
#word("tenpo", "󱥫")
#word("toki", "󱥬")
#word("tomo", "󱥭")
#word("tu", "󱥮")
#word("unpa", "󱥯")
#word("uta", "󱥰")
#word("utala", "󱥱")
#word("walo", "󱥲")
#word("wan", "󱥳")
#word("waso", "󱥴")
#word("wawa", "󱥵")
#word("weka", "󱥶")
#word("wile", "󱥷")

// Common
#word("kijetesantakalu", "󱦀")
#word("kin", "󱥹")
#word("kipisi", "󱥻")
#word("ku", "󱦈")
#word("leko", "󱥼")
#word("meli", "󱤳")
#word("mije", "󱤵")
#word("misikeke", "󱦇")
#word("monsuta", "󱥽")
#word("n", "󱦆")
#word("namako", "󱥸")
#word("soko", "󱦁")
#word("tonsi", "󱥾")

// Uncommon
#word("ali", "󱤄", glyphs: ("ale-1.svg",))
#word("epiku", "󱦃")
#word("jasima", "󱥿")
#word("lanpan", "󱦅")
#word("linluwi", "")
#word("majuna", "󱦢")
#word("meso", "󱦂")
#word("nimisin", "")
#word("oko", "󱥺")
#word("su", "")

// Obscure
#word("apeja", "")
#word("isipin", "")
#word("jami", "")
#word("kamalawala", "")
#word("kapesi", "")
#word("kiki", "")
#word("kokosila", "󱦄")
#word("konwe", "")
#word("kulijo", "")
#word("melome", "")
#word("mijomi", "")
#word("misa", "")
#word("nja", "")
#word("ojuta", "")
#word("oke", "")
#word("omekapo", "")
#word("owe", "")
#word("pake", "")
#word("penpo", "")
#word("pika", "")
#word("po", "")
#word("powe", "")
#word("puwa", "")
#word("san", "")
#word("soto", "")
#word("sutopatikuna", "")
#word("taki", "")
#word("te", "")
#word("teje", "")
#word("to", "")
#word("unu", "")
#word("usawi", "")
#word("wa", "")
#word("wasoweli", "")
#word("wekama", "")
#word("wuwojiti", "")
#word("yupekosi", "")