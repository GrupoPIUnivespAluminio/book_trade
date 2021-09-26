# Book Trade

[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)

Este é o repositório de uma aplicação desenvolvida com Ruby on Rails, utilizando Git como ferramenta de versionamento de código e parte do Projeto Integrador da Univesp.

Esta aplicação é desenvolvida pelo grupo de alunos da Univesp, no Polo de Alumínio - SP

## Os integrantes:
 - Aroldo
 - Gilson
 - Odirlei
 - [Paulo] (https://twitter.com/paulor2222)

## Como Rodar esse projeto localmente

Você precisa ter instalados o Ruby, na versão 3.0 ou maior
Você precisa ter o framework Ruby on Rails instalado na versão 6 ou maior
Você precisa ter o banco de dados Postgres instalado

Clone o projeto

```bash
git clone https://github.com/GrupoPIUnivespAluminio/book_trade.git
```

Entre no diretório do projeto

```bash
cd book_trade
```

Instale as dependências

```bash
bundle install
```
Inicialize o banco de dados

```bash
bundle exec rails db:setup
```
Suba o servidor

```bash
bundle exec rails s
```
