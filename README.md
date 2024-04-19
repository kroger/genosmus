O site do [Genos](https://genosmus.com/) é desenvolvido usando o
[Jekyll](https://jekyllrb.com) e hospedado no GitHub Pages.

## Organização

Os diretórios principais são:

- **_marcos**: páginas com as disciplinas de Marcos. As disciplinas do
  semestre atual devem ser listadas em `_data/docentes.yml`. A lista
  das disciplinas é gerada automaticamente.

- **_data/docentes.yml**: dados dos docentes como email, website, e
  nome.

As páginas principais do site como *index*, *ensino* e *pesquisa* estão no
diretório principal.

## Publicando Alterações no Site

O site é publicado automaticamente pelo GitHub Pages após um `git commit`.
A maneira mais fácil de fazer uma alteração no site é editando
diretamente pela interface web do Github:

![](img/editar.png)

## Alterações Locais

Para modificar e visualizar o site localmente deve-se clonar o
repositório com o site e instalar o Jekyll.

### 1. Clone o repositório

    git clone git@github.com:kroger/genosmus.git

### 2. Instale a versão mais nova do Ruby (3.3)

No Mac, com o homebrew:

    brew update
    brew install ruby

ou instale com com o `rbenv` (vai compilar a versão do Ruby)

  	brew install rbenv
    rbenv install 3.3.0
    rbenv global 3.3.0

Em versões recentes do macOS com M1 eu tive que instalar o `posix-spawn` com o
comando abaixo para evitar [errors de compilação][2]:

    gem install posix-spawn -- --with-cflags="-Wno-incompatible-function-pointer-types"

No Linux, ver documentação [Jekyll][1]:

    sudo apt-get install ruby-full build-essential zlib1g-dev

    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc

    gem install jekyll bundler

### 3. Instale o Bundle

    gem install bundle

### 4. Instale o Jekyll e suas dependências

Com o comando abaixo (no diretório com o código do site):

    cd genosmus
    bundle install

### 5. Rode `make` para iniciar o servidor local do Jekyll.

O site deve estar disponível em [http://127.0.0.1:4000](http://127.0.0.1:4000).
Esse comando vai executar `bundle exec jekyll serve`. Outros
comando do Jekyll podem ser executados dessa maneira, como `bundle
exec jekyll clean`, etc.

[1]: https://jekyllrb.com/docs/installation/ubuntu/
[2]: https://github.com/rtomayko/posix-spawn/issues/92
