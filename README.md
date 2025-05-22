
### Explique com suas palavras o papel de cada camada da arquitetura MVC usada neste projeto.
### Como o Model, o Controller e a View interagem entre si?Como o Model, o Controller e a View interagem entre si?
 
<br>
Model – responsável pelo banco de dados
Ele é o responsável por conversar com o banco de dados. Toda vez que a gente precisa criar, buscar ou atualizar algo no PostgreSQL, o Model que cuida disso.
<br>
const result = await db.query('SELECT * FROM aluno ORDER BY id ASC');
<br>
Isso aí é o Model buscando todos os alunos direto do banco de dados
<br>
Controller – a ponte entre o model e o view
O Controller recebe as ações do usuário e decide o que fazer com elas. Ele pega os dados que vem da View, manda pro Model salvar, e depois mostra o resultado de volta pra View.
<br>
const alunos = await Aluno.findAllComCurso();
res.render('alunos/index', { alunos });
<br>
Ele pede pro Model buscar os dados e depois manda esses dados pra View mostrar.
<br>
View – a parte visual
o View é o que o usuário realmente vê no navegador. É o HTML com formulários, tabelas, etc. Ele só exibe os dados, não toma decisões nem fala com o banco.

<br>
<br>

### Como ocorre o envio e o recebimento de dados no formato JSON neste projeto?
### Cite uma rota que responde em JSON e explique seu funcionamento.

<br>
No projeto o Node.js, os dados em formato JSON são usados quando você não quer exibir uma página HTML, mas sim enviar informações “cruas”
<br>
GET /alunos/curso/:curso_id
Essa rota pega todos os alunos de um determinado curso e devolve algo assim:
<br>
[
  { "id": 1, "nome": "João", "email": "joao@email.com" },
  { "id": 2, "nome": "Ana", "email": "ana@email.com" }
]


<br>
<br>

### Qual a importância de usar HTML básico com formulários e tabelas para organizar e manipular dados no navegador?
### Por que esse tipo de estrutura ainda é útil em projetos back-end com Node.js?
<br>
HTML básico ainda é super útil, especialmente em projetos back-end com Node.js. Ele é fácil de entender, funciona em qualquer navegador, e é rápido de implementar.
<br>
No seu projeto, quando a gente vai cadastrar um aluno ou professor, usamos um formulário HTML simples com campos de nome e e-mail. A pessoa preenche e envia. Pronto: o servidor já recebe esses dados e salva no banco.
<br>
<br>

# Boilerplate MVC em Node.js com PostgreSQL

Este projeto é um boilerplate básico para uma aplicação Node.js seguindo o padrão MVC (Model-View-Controller), utilizando PostgreSQL como banco de dados.

## Requisitos

- Node.js (versão X.X.X)
- PostgreSQL (versão X.X.X)

## Instalação

1. **Clonar o repositório:**

```bash
   git clone https://github.com/seu-usuario/seu-projeto.git
   cd seu-projeto
```

2. **Instalar as dependências:**
    
```bash
npm install
```
    
3. **Configurar o arquivo `.env`:**
    
Renomeie o arquivo `.env.example` para `.env` e configure as variáveis de ambiente necessárias, como as configurações do banco de dados PostgreSQL.
    

Configuração do Banco de Dados
------------------------------

1. **Criar banco de dados:**
    
    Crie um banco de dados PostgreSQL com o nome especificado no seu arquivo `.env`.
    
2. **Executar o script SQL de inicialização:**
    
```bash
npm run init-db
```
    
Isso criará a tabela `users` no seu banco de dados PostgreSQL com UUID como chave primária e inserirá alguns registros de exemplo.
    

Funcionalidades
---------------

* **Padrão MVC:** Estrutura organizada em Model, View e Controller.
* **PostgreSQL:** Banco de dados relacional utilizado para persistência dos dados.
* **UUID:** Utilização de UUID como chave primária na tabela `users`.
* **Scripts com `nodemon`:** Utilização do `nodemon` para reiniciar automaticamente o servidor após alterações no código.
* **Testes:** Inclui estrutura básica para testes automatizados.

Scripts Disponíveis
-------------------

* `npm start`: Inicia o servidor Node.js.
* `npm run dev`: Inicia o servidor com `nodemon`, reiniciando automaticamente após alterações no código.
* `npm run test`: Executa os testes automatizados.
* `npm run test:coverage`: Executa os testes e gera um relatório de cobertura de código.

Estrutura de Diretórios
-----------------------

* **`config/`**: Configurações do banco de dados e outras configurações do projeto.
* **`controllers/`**: Controladores da aplicação (lógica de negócio).
* **`models/`**: Modelos da aplicação (definições de dados e interações com o banco de dados).
* **`routes/`**: Rotas da aplicação.
* **`tests/`**: Testes automatizados.
* **`views/`**: Views da aplicação (se aplicável).

Contribuição
------------

Contribuições são bem-vindas! Sinta-se à vontade para abrir um issue ou enviar um pull request.

Licença
-------

Este projeto está licenciado sob a Licença MIT.

Este README.md fornece uma visão geral clara do boilerplate, incluindo instruções de instalação, configuração do banco de dados, funcionalidades principais, scripts disponíveis, estrutura de diretórios, como contribuir e informações de licença. Certifique-se de personalizar as seções com detalhes específicos do seu projeto conforme necessário.