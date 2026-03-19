#import "@preview/meander:0.4.1"

#let template(doc) = [
  // We use meander for reflowing text around custom collision boxes
  #import "@preview/meander:0.4.1"

  // We use an A5 page size, as it's very close to the dimensions of the original book and offered by many printing companies.
  // Plus 3mm for bleed!
  #set page(width: 148mm + 6mm, height: 210mm + 6mm, margin: (
    inside: 22mm + 3mm,
    outside: 22mm + 3mm,
    bottom: 20mm + 3mm,
    top: 27mm + 3mm,
  ))

  // The 1900 first edition (which we're using art from) used Monotype Old Style, of which TeX Gyre Bonum is a free replica.
  #set text(font: "TeX Gyre Bonum", size: 11.5pt)

  // Per-character justification!
  #set par(justify: true, justification-limits: (tracking: (min: -0.01em, max: 0.02em)), linebreaks: "optimized")

  // And of course our lovely compact fiction spacing
  #set par(first-line-indent: 2.5em, spacing: 0.65em)

  #doc
]

#let page_width = 148mm + 6mm
#let page_height = 210mm + 6mm

// lowercase because we render it in smallcaps
#let nanpa = ((20, "m"), (5, "l"), (2, "t"), (1, "w"))

// Custom nasin nanpa pona numbering function, for page and chapter numbers
// We do it recursively!
#let get_nanpa(..nums, last) = {
  let result_string = ""
  let remaining_value = last
  while (remaining_value > 0) {
    if (remaining_value >= 100) {
      let quotient = calc.floor(remaining_value / 100)
      let remainder = calc.rem(remaining_value, 100)
      result_string += get_nanpa(quotient)
      result_string += "a"
      remaining_value = remainder
    }
    for denomination in nanpa {
      if (remaining_value >= denomination.at(0)) {
        remaining_value -= denomination.at(0)
        result_string += denomination.at(1)
        break
      }
    }
  }
  return result_string
}

// We place the header manually using meander
// This makes it super easy to choose which pages do/don't have headers
// While allowing it to render in front of page content (images)
#let header() = meander.placed(
  top + center,
  dy: -2.75em,
  boundary: meander.contour.phantom(),
  context [
    #let page_is_odd = calc.odd(counter(page).get().first())
    #set text(size: 10pt)
    #grid(
      columns: (1fr, 2fr, 1fr),
      [
        #align(left, [
          #if not page_is_odd [#smallcaps[#counter(page).display(get_nanpa)]] else []
        ])
      ],
      [
        #align(center, [
          jan Osawi pi ma Osawi.
        ])
      ],
      [
        #align(right, [
          #if page_is_odd [#smallcaps[#counter(page).display(get_nanpa)]] else []
        ])
      ],
    )
  ],
)
