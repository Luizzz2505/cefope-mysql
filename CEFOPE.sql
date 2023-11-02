-- Tabela Cadastro
CREATE TABLE Cadastro (
  id INT PRIMARY KEY,
  cpf VARCHAR(25) NOT NULL,
  nome TEXT NOT NULL,
  data_nascimento DATE NOT NULL
);

-- Tabela Atendimento
CREATE TABLE Atendimento (
  id INT PRIMARY KEY,
  especialidade VARCHAR(60) NOT NULL,
  doutor VARCHAR(50) NOT NULL,
  data_atendimento DATE,
  hora_atendimento TIME NOT NULL,
  FOREIGN KEY (id) REFERENCES Cadastro(id)
);

-- Tabela Médico
CREATE TABLE Medico (
  crm VARCHAR(30) PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  especialidade VARCHAR(60) NOT NULL,
  telefone VARCHAR(15),
  email VARCHAR(50)
);

-- Inserção de dados nas tabelas
-- Inserir dados na tabela "Cadastro"
INSERT INTO Cadastro (id, cpf, nome, data_nascimento)
VALUES
  (1, '12345678901', 'João Silva', '1990-03-15'),
  (2, '98765432109', 'Maria Souza', '1985-06-22');

-- Inserir dados na tabela "Atendimento"
INSERT INTO Atendimento (id, especialidade, doutor, data_atendimento, hora_atendimento)
VALUES
  (1, 'Terapia Ocupacional', 'Dr. Mendes', '2023-11-01', '09:30:00'),
  (2, 'Psicomotricidade', 'Dra. Santos', '2023-11-02', '14:15:00');

-- Inserir dados na tabela "Médico"
INSERT INTO Medico (crm, nome, especialidade, telefone, email)
VALUES
  ('12345', 'Dr. Mendes', 'Terapia Ocupacional', '555-1234', 'dr.mendes@example.com'),
  ('54321', 'Dra. Santos', 'Psicomotricidade', '555-5678', 'dra.santos@example.com');

-- Consulta na tabela "Atendimento" para ver o horário da consulta
SELECT hora_atendimento
FROM Atendimento;

-- Consulta juntando informações das tabelas
SELECT 
  Atendimento.data_atendimento AS Dia,
  Atendimento.hora_atendimento AS Hora,
  Medico.nome AS Medico,
  Medico.especialidade AS Especialidade,
  Cadastro.nome AS Paciente
FROM Atendimento
JOIN Medico ON Atendimento.doutor = Medico.nome
JOIN Cadastro ON Atendimento.id = Cadastro.id;






