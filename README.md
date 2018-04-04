O site do [Genos](https://genosmus.com/) é desenvolvido usando o [Jekyll](https://jekyllrb.com)
e hospedado no [Netlify](https://app.netlify.com).

## Organização

Os diretórios principais são:

- **_pages**: As páginas principais do site como *index*, *ensino* e *pesquisa* estão nesse diretório

- **_marcos**: páginas com as disciplinas de Marcos.
  As disciplinas do semestre atual devem ser listadas em `_data/docentes.yml`.
  A lista das disciplinas é gerada automaticamente.

- **_pedro**: páginas com as disciplinas de Pedro.
  As disciplinas do semestre atual devem estar no diretório `_pedro`,
  e as disciplinas de semestres anteriores no diretório `anterior`.
  A lista das disciplinas é gerada automaticamente.

- **_data/docentes.yml**: dados dos docentes como email, website, e nome.

## Publicando Alterações no Site

O site é publicado automaticamente pelo Netlify após um `git commit`.
A maneira mais fácil de fazer uma alteração no site é editando diretamente
pela interface web do Github:

![](img/editar.png)

## Alterações Locais

Para modificar o site localmente, deve-se clonar o repositório, fazer as alterações
e fazer um `git push` com as alterações:

	git clone git@github.com:kroger/genosmus.git
   
## Visualizando Localmente

Para ver o site localmente deve-se instalar o Jekyll. Primeiramente instale 
[RVM](https://rvm.io) seguindo as instruções no site. Em seguida instale
a versão mais nova do Ruby e bundler:

	rvm install ruby 2.4.2
	rvm get head
	rvm list known
	gem install bundler


Finalmente, instale o Jekyll e suas dependências com o comando abaixo:

	gem install jekyll bundler
	bundle install

Tendo tudo instalado, rode `make` no diretório `genusmus` clonado
para inicar o servidor local do Jekyll. O site deve
estar disponível em [http://127.0.0.1:4000](http://127.0.0.1:4000).


## Versão do Ruby

Certifique-se de que a versão do Ruby esteja atualizada no arquivo
`.ruby-version`. Essa é a versão usada pelo Netlify

## Email

O email do genos é genos@genosmus.com e pode ser acessado em https://mail.zoho.com/zm/
