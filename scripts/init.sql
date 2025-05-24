-- Tabela de usuários
CREATE TABLE IF NOT EXISTS usuario (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cpf VARCHAR(20) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  data_nascimento DATE
);

-- Tabela de eventos
CREATE TABLE IF NOT EXISTS eventos (
  id SERIAL PRIMARY KEY,
  nomeEvento VARCHAR(255) NOT NULL,
  localizacao VARCHAR(255),
  horario TIMESTAMP NOT NULL
);

-- Tabela de ingressos
CREATE TABLE IF NOT EXISTS ingresso (
  id SERIAL PRIMARY KEY,
  eventoID INTEGER NOT NULL,
  userID INTEGER NOT NULL,
  tipo VARCHAR(50),
  valor DECIMAL(10,2) NOT NULL,
  status VARCHAR(50) DEFAULT 'ativo',
  FOREIGN KEY (eventoID) REFERENCES eventos(id) ON DELETE CASCADE,
  FOREIGN KEY (userID) REFERENCES usuario(id) ON DELETE CASCADE
);

-- Tabela de notificações
CREATE TABLE IF NOT EXISTS notificacao (
  id SERIAL PRIMARY KEY,
  nomeEventoID INTEGER NOT NULL,
  userID INTEGER NOT NULL,
  precoID DECIMAL(10,2),
  transacao VARCHAR(50),
  data_notificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (nomeEventoID) REFERENCES eventos(id) ON DELETE CASCADE,
  FOREIGN KEY (userID) REFERENCES usuario(id) ON DELETE CASCADE
);
