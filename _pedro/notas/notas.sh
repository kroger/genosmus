#!/usr/bin/env bash

for item in _pedro/notas/mus*.xlsx
do
	nome=$(basename $item | sed 's/.xlsx//g')
	echo "* Gerando $item"
	xlsx2csv-2.7 $item | bundle-2.5 exec csv2md > _pedro/geradas/$nome.md
	echo {: .table .table-sm } >> _pedro/geradas/$nome.md
done
