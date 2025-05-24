Plataforma de Eventos MVC em Node.js com PostgreSQL
Este projeto é a Plataforma de Eventos (DIEvents), uma aplicação web desenvolvida para organizar e gerenciar eventos, seguindo o padrão MVC (Model-View-Controller). Utiliza Node.js como backend, PostgreSQL como banco de dados relacional e EJS para renderização de interfaces.

Descrição do Sistema
A Plataforma de Eventos (DIEvents) é uma solução web que simplifica a criação, gerenciamento e participação em eventos. Desenvolvida como projeto da ponderada do INTELI, a aplicação permite que organizadores cadastrem eventos com detalhes como título, data, local, etc. enquanto participantes podem buscar eventos e se inscrever. O sistema segue o padrão MVC para garantir uma estrutura organizada, com o backend gerenciando a lógica e o banco de dados, e o frontend (ainda será desenvolvido) oferecendo uma interface amigável renderizada com EJS.

Funcionalidades principais:

Cadastro e autenticação de usuários.
Criação, edição e exclusão de eventos.
Busca e inscrição em eventos.
Notificações de confirmação de inscrição.
Interface responsiva para acesso em desktop e dispositivos móveis.
Requisitos
Node.js (versão 22.13.1)
PostgreSQL (versão 17.0.0)
Instalação
Clonar o repositório:
git clone https://github.com/diegofsiilva/DIevents.git
cd DIevents
Instalar as dependências:
npm init -y
npm install express
Configurar o arquivo .env:
Renomeie o arquivo .env.example para .env e configure as variáveis de ambiente necessárias, como as configurações do banco de dados PostgreSQL.

DB_HOST=localhost
DB_USER=seu_usuario
DB_PASSWORD=sua_senha
DB_NAME=dievents
DB_PORT=5432
Configuração do Banco de Dados
Criar banco de dados:

Crie um banco de dados PostgreSQL com o nome especificado no seu arquivo .env.

Executar o script SQL de inicialização:

npm run init-db
Isso criará a tabela usuário, ingresso, eventos e notificações no seu banco de dados PostgreSQL com UUID como chave primária e inserirá alguns registros de exemplo.

Como Executar o Projeto Localmente
npm start: Inicia o servidor Node.js.

node app.js: Inicia o servidor App.js Abra um navegador e acesse http://localhost:3000

Estrutura de Diretórios
meu-projeto/
│
├── assets/                 # Arquivos públicos como imagens e fontes
|   └──favicon.ico
|   └──modele-banco.png
|   └──mvc-diagram.png
├── config/                # Arquivos de configuração (ex: conexão com banco)
│   └── db.js
├── controllers/           # Lógica de controle das requisições
│   └── alunoController.js
|   └──cursoController.js
|   └──professorController.js
|   └──TarefaController.js
|   └── userController.js
├── models/                # Definição de modelos de dados (estrutura do banco)
│   └── alunos.js
|   └──curso.js
|   └──professor.js
│   └── userModel.js
├── routes/                # Definição das rotas do sistema
│   └── alunos.js
|   └──curso.js
│   └── frontRouter.js
|   └──index.js
|   └──professores.js
│   └── userRoutes.js
├── scripts/               # Arquivos de JavaScript públicos e criação das tabelas do Banco de Dados
│   └── init.sql
│   └── runSQLScript.js
├── services/              # Serviços auxiliares do sistema
│   └── userService.js
├── tests/                 # Arquivos de testes unitários
│   └── userController.js
│   └── userModel.test.js
│   └── userRoutes.test.js
│   └── userService.test.js
├── views/                 # Arquivos de testes unitários
│   └── alunos/
|        └── index.ejs
│   └── components/
|        └── header.ejs
│   └── css/
|        └── styles.css
│   └── layout/
|        └── main.ejs
│   └── pages/
|        └── page1.ejs
|        └── page2.ejs
├── .env_example           # Arquivo para exemplificar como configura o .env
├── .gitignore             # Arquivo para ignorar arquivos no      Git (ex:node_modules)
├── app.js              # Arquivo principal que inicializa o servidor
├── jest.config.js         # Arquivo de configuração do Jest
├── package-lock.json      # Gerenciador de dependências do Node.js
├── package.json           # Gerenciador de dependências do Node.js
├── readme.md              # Documentação do projeto (Markdown)
├── rest.http              # Teste de endpoints (opcional)
└──  wad.md                # Web Aplication Document (documentação do projeto)
Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir um issue ou enviar um pull request.

Licença
Este projeto está licenciado sob a Licença MIT.

Este README.md fornece uma visão geral clara do boilerplate, incluindo instruções de instalação, configuração do banco de dados, funcionalidades principais, scripts disponíveis, estrutura de diretórios, como contribuir e informações de licença. Certifique-se de personalizar as seções com detalhes específicos do seu projeto conforme necessário.