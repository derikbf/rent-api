## AUTOCAR - API

Este repositório é composto pela API desenvolvida por mim (Dérik) para fins didáticos que contará com uma aplicação Mobile (React Native) desenvolvida pelo Gabriel Mariano.

O projeto é para simular um sistema de locadora de carros.

link para repositório do projeto em React Native: LINK

**Principais tecnologias utilizadas:** <br>
![enter image description here](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white) ![enter image description here](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

<!-- ![MainImg](https://i.ibb.co/qpTmRJw/ecommerce-01.png) -->

## Funcionalidades do Projeto

- Cadastro de Locadoras
- Cadastro de usuários operadores do sistema
- Cadastro de clientes CNPJ com endereço
- Cadastro de clientes CPF
- Cadastro de Carros e seus assessórios (cor, modelo, ano, motor, combustivel, 
direção, marca, entre outros)
<br /><p>
- Autenticação de usuários (gem devise) - **A FAZER**
- Sistema de Autorização (gem CanCanCan) - **A FAZER**
- Recuperação de senha - **A FAZER**
<br /><p>
- Reserva de carros (com validação do range de datas)
- Tela de pedido da reserva com Valores, total, desconto (cupom), subtotal, nome do usuário, etc)
<br /><p>
- Testes automáticos com RSPEC - mais de 200 testes;
- Validação dos campos no nível de Aplicação e no nível de Banco.
  - Algumas validações:
    - Campos obrigatórios
    - Campos únicos (não pode repetir - Ex: CPF/CNPJ)
    - Campos que aceitam somente números (ex: CPF/CNPJ)
    - Campos iguals com case sensitive (Maiúsculo de Minúsculo)
    - Min e Máx de caracters de campos
    - Etc..

<br /><p>
- Inserção de Deleção Lógica (gem paranoia)
- Inserção de Paginação (gem kaminari) **A FAZER**
- Serialização (gem active model serializer)
- Configurado CORS (gem rack-cors)
- Configurado CI/CD para o Github Actions
- Deploy automático no Hekoru
- Seed para popular o banco (gem faker) **A FAZER**
-
-
-
- A Collection do projeto está na pasta principal do projeto. 
  - Nome: Collection-Rent-API.json

## Tests
![Tests](https://github.com/derikbf/rent-api/actions/workflows/ruby.yml/badge.svg)

## Testes

Foram desenvolvidos ao longo do projeto mais de 200 testes.
<!-- ![Testes](https://i.ibb.co/GTZW0Df/ecommerce-02.png) -->

## Tecnologias utilizadas:

**Mailing**

- **[MailCatcher](https://mailcatcher.me/)**

**Auth**

- **[Devise Token Auth](https://github.com/lynndylanhurley/devise_token_auth)**
  
**CanCanCan**

- **[Can Can Can](https://github.com/CanCanCommunity/cancancan)**
  
**API**

- **[Rack-cors](https://github.com/cyu/rack-cors)**
 
**Testes**:

- **[Rspec](https://github.com/rspec/rspec-rails)**

- **[Shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)**

- **[FactoryBot](https://github.com/thoughtbot/factory_bot_rails)**

- **[SimpleCov](https://github.com/simplecov-ruby/simplecov)**

- **[DatabaseCleaner](https://github.com/DatabaseCleaner/database_cleaner)**

- **[Faker](https://github.com/faker-ruby/faker)**

**Active Model Serializer**:

- **[ActiveModelSerializer](https://github.com/rails-api/active_model_serializers)**

**Paginação**:

- **[Kaminari](https://github.com/kaminari/kaminari)**

**Deleção Lógica**:

- **[Paranóia](https://github.com/rubysherpas/paranoia)**

## Instalando o Projeto - Backend
- Costumo utilizar alias para os comandos do docker compose

1 git clone https://github.com/derikbf/rent-api.git
2 cd rent-api
3 make reset 
  - rodará: db:drop db:create db:migrate db:seed
    - Criará o banco e rodará as migrations e rodará o seed.
4 make bash
5 bundle install
6 exit
7 make up ou sudo make up (caso acuse erro de permissão)

Gif com o passo a passo:
<!-- ![Testes](https://i.ibb.co/GTZW0Df/ecommerce-02.png) -->

