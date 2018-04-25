#!/usr/bin/env bash

for item in _pedro/notas/mus*.xlsx
do
	nome=$(basename $item | sed 's/.xlsx//g')
	echo "* Gerando $item"
	xlsx2csv $item | bundle exec csv2md > _pedro/geradas/$nome.md
done
