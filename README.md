O site do Genos é desenvolvido usando o [Jekyll](https://jekyllrb.com) e hospedado no [Netlify](https://app.netlify.com).

## Instalação Local

Para rodar localmente, instale as dependências com o comando abaixo:

	gem install jekyll bundler

E rode `make` para inicar o servidor local do Jekyll. O site deve estar disponível em http://127.0.0.1:4000.


## Deployment

Para modificar o site no servidor é só editar os arquivos e fazer um *push* para o GitHub que o Netlify vai atualizar o site automaticamente.


## Versão do Ruby

Certifique-se de que a versão do Ruby esteja atualizada no arquivo `.ruby-version`. Essa é a versão usada pelo Netlify
