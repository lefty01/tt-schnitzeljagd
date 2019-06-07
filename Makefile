

TTTOOL=tttool
PIXELSIZE=2


all: schnitzeljagd.gme oid-table oid-codes

gme: schnitzeljagd.gme

schnitzeljagd.gme: schnitzeljagd.yaml
	$(TTTOOL) assemble $<

oid-table: schnitzeljagd.yaml
	$(TTTOOL) --dpi 600 --pixel-size $(PIXELSIZE) oid-table $<

oid-codes: schnitzeljagd.yaml
	$(TTTOOL) --dpi 600 --pixel-size $(PIXELSIZE) oid-codes $<


play: schnitzeljagd.gme
	$(TTTOOL) play $<

