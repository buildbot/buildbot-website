
SOURCES = overview_src.svg
PNGS = $(patsubst %_src.svg,%.png,$(SOURCES))

.PHONY: images-png
all: $(PNGS)
images-png: $(PNGS)

# Source SVG files contains text labels in "PT Sans" font which may not be
# installed on end user machine (originally text was in proprietary
# "Myriad Pro" font, "PT Sans" was chosen to replace it due to its visual
# similarity).
# "PT Sans" font can be downloaded from developer official site:
# <http://www.paratype.com/public/> or from Google Fonts collection.
%.png: %_src.svg
	inkscape -w 660 -h 314 --export-png $@ $<
	mogrify -trim +repage $@
	optipng $@
clean:
	rm -f $(PNGS)
