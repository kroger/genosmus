## Publicando Alterações no Site

O site é publicado automaticamente pelo GitHub Pages após um `git commit`. A maneira mais fácil de fazer uma alteração no site é editando diretamente pela interface web do Github.

## Alterações Locais

Para modificar e visualizar o site localmente deve-se clonar o repositório com o site e instalar `Ruby 3.3` e `Jekyll 3.10`, que são as versões usadas pelo GitHub Pages.

No macOS:

    brew install ruby@3.3
    bundle install

Rode `make` para iniciar o servidor local do Jekyll, o site deve estar disponível em [http://127.0.0.1:4000](http://127.0.0.1:4000).
