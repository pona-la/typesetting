Recently, jan Ke Tami put out an unabridged Toki Pona translation of _The Wonderful Wizard of Oz_: [jan Osawi pi ma Osawi](https://janketami.wordpress.com/2026/02/22/the-wonderful-wizard-of-oz/). I love the concept of having this in physical! (So that's what this project is for haha.)

## Status

I'm working on a MVP pass of just laying out all the images and setting up the boxes for the text to wrap around, to have something done. ale la it can be improved.

(Idea, dumping it here cause i don't know where else to put it, perhaps make the lower margin quite small and then just add a wrapping hitbox to the bottom of each page, so I can tweak the lower margins independently in each chapter.)

(TODO, come up with a workflow for converting the images over. Probably not too crazy and happy to have a small amount of manual work. ~100 images is in about that realm where manual work can just about be justifiable.)

## Goals

- Match the original first-edition copy of The Wizard of Oz pretty close! This is mostly so that the images line up, and an excuse to not have to make too many creative decisions around styling/layout, more than an attempt at perfect replication.

## Resources

- Wikisource has a high resolution scan of the book, good for reference of formatting/page layout: https://en.wikisource.org/wiki/Index:Baum_-_The_Wonderful_Wizard_of_Oz.djvu.
- Gutenberg has scans of all the illustrations, which look pretty good! They're a bit low-res but what can ya do, future thing to solve, perhaps: https://www.gutenberg.org/ebooks/43936.

## Illustration Colour Scheme

Only a limited number of inks are used throughout the illustrations, with use of hatching for intermediate shades. We perhaps don't like the colours that the Gutenberg scans use (they don't look super accurate to me!), so below are like,, some ideal colours?

(idk this is still work in progress - would love perhaps a method to make images use specific colours smoothly via commandline.)

(maybe the angle here is something like [colorgram](https://github.com/obskyr/colorgram.py) to extract 3 colours, and then something like [didder](https://github.com/makew0rld/didder) (with a low strength value) to recolour them, but perhaps there's a better-suited tool than posterisation)

| Color      | Hex Code  |
| ---------- | --------- |
| White      | #ffffff00 |
| Black      | #000000   |
| Grey       | #b5b5b5   |
| Light Blue | #a0d4c8   |
| Dark Blue  | #01025d   |
| Red        | #d84332   |
| Yellow     | #ffff65   |
| Green      | #a8d667   |
| Brown      | #984931   |

(An additional orange might be needed for the west, but perhaps yellow will do! Still working through the book)

## Illustration TODOS:

### Chapter 1:

- Replace text on chapter splash, and crop weird black edge.
- Remove "Dorothy" text?

### Chapter 2:

- Replace text on chapter splash. (Including on chalkboard.)

## Licensing

_The Wonderful Wizard of Oz_ and Denslow's illustrations from the first edition are public domain. Not entirely sure about Gutenberg's scans, someone will need to fact-check that for me.

The text of jan Ke Tami's translation is released into the public domain using CC0.

I dedicate all `.typ` files in this directory to the public domain using CC0.

The fonts in this repo are under free, permissive licenses, but are not public domain. For that reason, I do not dedicate the other files to the public domain, as I'm not sure whether I am able to! (Please inform me if I can!)
