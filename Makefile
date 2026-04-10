.PHONY: *
all: *

init:
	mkdir -p out/
osawi: init
	typst compile --font-path vendor/fonts/  osawi/osawi.typ    out/osawi.pdf
kemeka: init
	typst compile --font-path vendor/fonts/  kemeka/kemeka.typ  out/kemeka.pdf
wasona: init
	typst compile --font-path vendor/fonts/  wasona/wasona.typ  out/wasona.pdf
linku: init
	typst compile --font-path vendor/fonts/  linku/linku.typ    out/linku.pdf
