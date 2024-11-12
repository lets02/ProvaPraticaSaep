-- Criando tabela de usuários
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criando tabela de tarefas
CREATE TABLE tarefas (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL,
    setor VARCHAR(50) NOT NULL,
    prioridade VARCHAR(10) CHECK (prioridade IN ('baixa', 'média', 'alta')) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('a fazer', 'fazendo', 'pronto')) DEFAULT 'a fazer',
    id_usuario INT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- Inserindo dados de exemplo
INSERT INTO usuarios (nome, email, senha) VALUES
('João Silva', 'joao@exemplo.com', 'senha123'),
('Maria Oliveira', 'maria@exemplo.com', 'senha456');

INSERT INTO tarefas (descricao, setor, prioridade, id_usuario) VALUES
('Organizar inventário', 'estoque', 'média', 1),
('Reunião de planejamento', 'marketing', 'alta', 2);

-- Criação de índices para otimizar buscas
CREATE INDEX idx_usuario_email ON usuarios(email);
CREATE INDEX idx_tarefa_status ON tarefas(status);
