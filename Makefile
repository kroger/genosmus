
run:
	bundle exec jekyll serve

clean:
	bundle exec jekyll clean

notas:
	git pull
	_pedro/notas/notas.sh
	git add _pedro/geradas/*.md _pedro/notas/*.xlsx
	git commit -a -m "Atualiza notas dos alunos"
	git push
