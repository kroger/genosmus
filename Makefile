VPATH = _pedro/2020.1
SOURCES = musa75.md musa86.md musb18.md
PDF = $(SOURCES:.md=.pdf)

run:
	bundle exec jekyll serve

clean:
	bundle exec jekyll clean

pdf: $(PDF)

pdf-clean:
	rm -f $(addprefix out/, $(PDF))

%.pdf: %.md
	gsed -e '/## Notas/,/{: .table .table-sm }/d' $< -e '/^{:/d' -e '/<!-- START DEL -->/,/<!-- END DEL -->/d' \
-e '6 i __Semestre:__ 2020.1 \n\n__Professor:__ Pedro Kroger (kroger@pedrokroger.net) \n\n__Site:__ http://genosmus.com/pedro/$(basename $(notdir $<)) \n' | \
pandoc -o out/$@ -V geometry:"margin=1.5cm,a4paper" -V fontsize=11pt -V mainfont="Georgia" --pdf-engine=xelatex --from=markdown
