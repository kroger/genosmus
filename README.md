O site do [Genos](https://genosmus.com/) é desenvolvido usando o
[Jekyll](https://jekyllrb.com) e hospedado no
[Netlify](https://app.netlify.com).

## Organização

Os diretórios principais são:

- **_pages**: As páginas principais do site como *index*, *ensino* e
  *pesquisa* estão nesse diretório

- **_marcos**: páginas com as disciplinas de Marcos. As disciplinas do
  semestre atual devem ser listadas em `_data/docentes.yml`. A lista das
  disciplinas é gerada automaticamente.

- **_pedro**: páginas com as disciplinas de Pedro. As disciplinas do
  semestre atual devem estar no diretório `_pedro`, e as disciplinas de
  semestres anteriores no diretório `anterior`. A lista das disciplinas
  é gerada automaticamente.

- **_data/docentes.yml**: dados dos docentes como email, website, e nome.

## Publicando Alterações no Site

O site é publicado automaticamente pelo Netlify após um `git commit`. A
maneira mais fácil de fazer uma alteração no site é editando diretamente
pela interface web do Github:

![](img/editar.png)

## Alterações Locais

Para modificar e visualizar o site localmente deve-se clonar o
repositório com o site e instalar o Jekyll.

1. Clone o repositório:

	git clone git@github.com:kroger/genosmus.git

2. Instale a versão mais nova do Ruby (2.5.x), com o homebrew:

	brew update
	brew install ruby

ou com o macports:

  sudo ports install ruby25 rb25-bundler libffi

Com o macports talvez seja necessário:

  cd /usr/local/lib
  sudo ln -s ../../lib/libSystem.B.dylib libgcc_s.10.4.dylib


3. Instale o Jekyll e suas dependências com o comando abaixo (no
   diretório com o código do site):

	cd genosmus
	bundle install

4. Rode `make` para inicar o servidor local do Jekyll. O site deve estar
   disponível em [http://127.0.0.1:4000](http://127.0.0.1:4000). Esse
   comando vai executar `bundle exec jekyll serve`. Outros comando do
   Jekyll podem ser executados dessa maneira, como `bundle exec jekyll
   clean`, etc.

## Email

O email do genos é genos@genosmus.com e pode ser acessado em
https://mail.zoho.com/zm/
