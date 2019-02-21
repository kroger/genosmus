---
title: 'Curso de Python introdutório -- material de aula'
layout: disciplina
level: extensao
---

###1. Aula 01 -- Funções simples e inteiros

Função limitada que retorna a transposição de uma nota segunda maior acima. Aceita nota como parâmetro.

<pre class="brush: python">def transpor_segunda(nota):
    return nota + 2
#1. uso:
&gt;&gt;&gt; transpor_segunda(3)
5</pre>

Função que retorna a transposição de uma nota a um intervalo dado. Aceita nota e intervalo como parâmetros.

<pre class="brush: python">def transpor(nota, intervalo):
    return nota + intervalo
#1. uso:
&gt;&gt;&gt; transpor(4, 3)
7</pre>

###1. Aula 02 -- Lista e loop

<pre class="brush: python">def mod_12(nota):
    return nota % 12

def inverter_nota(nota, eixo):
    return 2 * eixo - nota

def inverter(lista_notas, eixo):
    """Inverte notas. Aceita uma lista e retorna outra.

    &gt;&gt;&gt; inverter([1, 3, 4], 8))
    [3, 1, 0]
    """

    resposta = []
    for nota in lista_notas:
        resposta.append(inverter_nota(nota, eixo))
    return resposta

def retrogradar(lista_notas):
    l = lista_notas[:]
    l.reverse()
    return l</pre>

###1. Aula 03 -- Listas e compreensão de lista

<pre class="brush: python"># -*- coding: utf-8 -*-
##1. funções auxiliares

def flatten(seq):
    """Flatten Sequences.

    &gt;&gt;&gt; flatten([[0, 1], [2, 3]])
    [0, 1, 2, 3]
    """

    return [item for sublist in seq for item in sublist]

##1. funções musicais

alturas = ['c', 'c#', 'd', 'd#', 'e', 'f', 'f#', 'g', 'g#', 'a', 'a#', 'b']

def mod_12(nota):
    return nota % 12

def transpor_nota(nota, fator):
    return mod_12(nota + fator)

def inverter_nota(nota, eixo):
    return mod_12(2 * eixo - nota)

def transpor(notas, fator):
    return [transpor_nota(nota, fator) for nota in notas]

def inverter(notas, eixo):
    return [inverter_nota(nota, eixo) for nota in notas]

def retrogradar(notas):
    tmp = notas[:]
    tmp.reverse()
    return tmp

def rotacionar(notas, n):
    prefixo = notas[0:n]
    sufixo = notas[n:]
    return flatten([sufixo, prefixo])

##1. funções de composição

def compor(notas):
    resultado = []
    for eixo in [1, 3, 5, 9, 2, 4, 6, 8, 3]:
        inversao = inverter(notas, eixo)
        resultado.append(flatten([inversao, retrogradar(inversao)]))
    return flatten(resultado)</pre>

###1. Aula 04 -- Métodos de lista

<pre class="brush: python">def expandir_musica(notas):
    tmp = notas[:]
    posicao = len(tmp) / 2
    tmp.pop(posicao)
    return flatten([transpor(notas, 3), tmp[2:-1], inverter(notas, 3)])</pre>

###1. Aula 06 -- Formatação de string

<pre class="brush: python">def genero(sexo):
    if sexo == 'f':
        return 'a'
    elif sexo == 'm':
        return 'o'
    else:
        return '?'

def convite(nome, sexo):
    return "{0}! Voce esta convidad{1} pra minha festa de aniversario.".format(nome, genero(sexo))

convidados = [['Francis', 'f'], ['Alisson', 'm'], ['Sama', 'm']]

&gt;&gt;&gt; [convite(nome, sexo) for [nome, sexo] in convidados]
['Francis! Voce esta convidada pra minha festa de aniversario.',
 'Alisson! Voce esta convidado pra minha festa de aniversario.',
 'Sama! Voce esta convidado pra minha festa de aniversario.']</pre>

###1. Aula 07 -- Dicionários

<pre class="brush: python"># coding=utf-8
##1. tarefa anterior

pessoas = [['Marcos', 'M', 'Professor'],
           ['Kroger', 'M', 'Professor'],
           ['Francis', 'F', 'Aluno'],
           ['Sama', 'M', 'Aluno'],
           ['Dudu', 'M', 'Aluno'],
           ['Alisson', 'M', 'Aluno'],
           ['Seu Abade', 'M', 'Funcionario'],
           ['Andreia', 'F', 'Funcionario']]

def genero(sexo):
    if sexo == 'F':
        return 'a'
    else:
        return 'o'

def mensagem(nome, sexo, cargo):

    if cargo == 'Professor':
        msg_professor = "Car{0} {1}, convido vossa senhoria.".format(genero(sexo), nome)
        return msg_professor
    elif cargo == 'Aluno':
        msg_aluno = "Cole, {1}. Ta doid{0}? Nao vai la, po!!??".format(genero(sexo), nome)
        return msg_aluno
    else:
        msg_funcionario = "Car{0} {1}, vamos la?".format(genero(sexo), nome)
        return msg_funcionario

##1. assunto da aula

marcos = {'nome': 'Marcos da Silva Sampaio',
          'nascimento': '15/06/1977',
          'cidade': 'Salvador',
          'endereco': 'Av. Araújo Pinho, 58',
          'interesses': 'Natação'}

mds = ['Marcos da Silva Sampaio',
          '15/06/1977',
          'Salvador',
          'Av. Araújo Pinho, 58',
          'Natação']

##1. trabalho para proxima aula: usar dicionários para criar função que
##1. retorna frase personalizada por gênero e cargo:

##1. &gt;&gt;&gt; cria_frase(people['kroger'])
##1. 'Caro Pedro Kroger, convido vossa senhoria.'

#1. exemplo de função que usa dicionários
def mostrar(dic):

    m_1 = "Oi, meu nome é {0},".format(dic['nome'])
    m_2 = "eu gosto de {0}, ".format(dic['interesses'])
    m_3 = "moro em {0}, {1}, ".format(dic['endereco'], dic['cidade'])
    m_4 = "e nasci em {0}!".format(dic['nascimento'])

    return m_1 + m_2 + m_3 + m_4

#1. exemplo de dados de entrada
people = {'marcos': {'nome': 'Marcos', 'sexo': 'M', 'cargo': 'Professor'},
          'kroger': {'nome': 'Pedro Kroger', 'sexo': 'M', 'cargo': 'Professor'}}</pre>

###1. Aula 08 -- Usando módulos

<pre class="brush: python"># -*- coding: utf-8 -*-

##1. arquivo biblioteca.ly:

def mod_12(nota):
    return nota % 12

def transpor_nota(nota, fator):
    return nota + fator

def transpor(notas, fator):
    return [transpor_nota(nota, fator) for nota in notas]

##1. arquivo compor.ly:

##1. opção de importação 1:

import biblioteca

def compor(notas):
    return [biblioteca.transpor(notas, 10), biblioteca.transpor(notas, 10)]

##1. opção de importação 2:

import biblioteca as bib

def compor(notas):
    return [bib.transpor(notas, 10), bib.transpor(notas, 10)]

##1. opção de importação 3:

from biblioteca import transpor

def compor(notas):
    return [transpor(notas, 10), transpor(notas, 10)]</pre>

###1. Aula 09 -- Para onde ir agora?

Links diversos sobre Python:

  * <http://docs.python.org/tutorial/index.html> (seguir do início ao fim)
  * <http://code.google.com/edu/languages/google-python-class/>
  * <http://www.async.com.br/projects/python/pnp/> (em português)
  * <http://www.upriss.org.uk/python/PythonCourse.html>
  * <http://aprenda-python.blogspot.com/> (blog com diversas dicas)
  * <http://www.python.org.br/wiki> (em português)