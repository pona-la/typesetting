Recently, jan Ke Tami put out an unabridged Toki Pona translation of *The Wonderful Wizard of Oz*: [jan Osawi pi ma Osawi](https://janketami.wordpress.com/2026/02/22/the-wonderful-wizard-of-oz/). I was excited to read it, and wanted to do so in physical, so I spent an afternoon putting together a quick-and-dirty typeset of it!

**Currently, I'm in the process of redoing the whole book, one chapter at a time, to include illustrations, and closely match the original edition! Stay tuned!**

## Decisions (Of the quick-and-dirty version)
On the inside of the book, page and chapter numbers are set in [sitelen seli kiwen](https://www.kreativekorp.com/software/fonts/sitelenselikiwen/) using nasin nanpa pona (I love how this font can condense numbers). The body text is TeX Gyre Bonum, a free Bookman typeface, to match the Monotype Old Style used in the original 1900 edition. Headings are set in [Oz'sWizard](https://www.dafont.com/ozswizard.font), a font based on W. W. Denslow's lettering. I've long held affection for the idea of sitelen pona dropcaps in a sitelen Lasina text, so was very excited to realise that here using the gorgeous [nasin palisa](https://github.com/Mrpalland/nasin-palisa).

I did make the choice to remove Denslow's gorgeous illustrations, as I was putting this together for myself as a quick, cheap copy to read not-on-my-phone - colour printing and full page printing cost more money! As a result, I shuffled around the cover a bit - I didn't want to promise illustrations when I had none.

The cover was pretty quick to put together. In the original, it was actually an inside cover page, but I liked the look of it! I thought it would look nice on a glossy pocket book cover, y'know? I removed the references to the publishers and Denslow's illustrations, as they were no longer accurate. The back cover is very much a melodramatic rush job, I don't like it very much, but wanted to have some sitelen pona on the back so I made something up. There's also no room for a barcode! :D

### Process for Restoring Illustrations
Some quick notes for a restoration process I worked out while experimenting with GIMP. I've no experience in this field so feel free to reach out if you have pointers, but this is the process I stumbled into!

- Start with the raw page scan from https://archive.org/details/wonderfulwizardo00baumiala/.
- Image > Transform > Rotate 90 Degrees.
- Image > Canvas Size. Resize the canvas to our target: 216\*23 by 154\*23. (Based on A5 at 600dpi)
- Layer > Layer to Image Size. Fit layer to canvas, to add a white border.
- Use the corrective mode of the perspective tool to line up the corners of the page.
- On a second layer, add a white-to-black "reverse vignette" gradient. Set this layer's blend mode to Grain Extract and adjust the opacity until the colours are relatively flat. (Potentially, we could instead use one of the photos of a blank page as lighting reference to counteract the vignette.)
- Use the Levels tool! Eyedrop the whites and blacks, and adjust the mids on the values histogram so they're roughly in in the middle of the data. (If there's no good blacks to eyedrop feel free to use the histogram for this, too.)
- Create a palette by eyedropping each colour in the image.
- Change the image to indexed colours, using that palette.
- Open the colormap and replace the colours with our colour scheme.
- Use clone and fill brushes to remove any text from the image. We do it here as the indexed colour space is quite forgiving.
- Convert back from indexed to RGB.
- Mean Curvature Blur Filter at 5 iterations. This has a bit of an "AI-Smudge" look to it that I don't love (though it's not AI), but it does a good job at cleaning up the artifacts of converting to indexed, so I don't mind it.
- Median Blur Filter with a radius of 1. This just gets rid of any floating pixels.

This will take a lot of time, as, uh, seems like there are around ~156 illustrations! Some of them have been restored by others, but I think there's value in doing it all at once for this project, as we can have a very consistent look throughout the book.

### Illustration Colour Scheme
Only a limited number of inks are used throughout the illustrations, with use of hatching for intermediate shades. To reflect this, we'll use a similar colour palette.

(This might work really poorly in case where the pigments are misaligned? Maybe it's fine though.)

| Color | Hex Code |
| --- | --- |
| White | #ffffff |
| Black | #000000 |
| Grey | #b5b5b5 |
| Light Blue | #a0d4c8 | 
| Dark Blue | #01025d |
| Red | #d84332 |
| Yellow | #ffff65 |
| Green | #a8d667 |
| Brown | #984931 |

(An additional orange might be needed for the west, but perhaps yellow will do!)

## Licensing
*The Wonderful Wizard of Oz* and Denslow's illustrations from the first edition are public domain.

The text of jan Ke Tami's translation is released into the public domain using CC0.

I dedicate `osawi.typ` to the public domain using CC0.

The fonts in this repo are under free, permissive licenses, but are not public domain. For that reason, I do not dedicate the other files to the public domain, as I'm not sure whether I am able to! (Please inform me if I can!)
