musa75.pdf: musa75.md

clean:
	rm -rf musa75.pdf

%.pdf: %.md
	gsed -e '/## Notas/,/{: .table .table-sm }/d' $< -e '/^{:/d' | \
pandoc -o $@ -V geometry:"margin=1in,a4paper" -V fontsize=11pt -V mainfont="Georgia" --pdf-engine=xelatex --from=markdown
