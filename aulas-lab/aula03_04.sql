-- Caso exista, Deletando Schema 'gustavo_henrique'
DROP SCHEMA IF EXISTS gustavo_henrique CASCADE;

-- Criando Schema 'gustavo_henrique'
CREATE SCHEMA gustavo_henrique;

-- #### CRIAÇÃO DA TABELAS ####

-- Criando tabela 'usuario' no Schema 'gustavo_henrique'
CREATE TABLE gustavo_henrique.usuario(
	login VARCHAR NOT NULL PRIMARY KEY, -- Chave Primária -> Garante unicidade
	password VARCHAR(25),
	age INT,
	data_nascimento DATE,
    cpf VARCHAR(11) UNIQUE 					 -- UNIQUE: coluna é única
);

CREATE TABLE gustavo_henrique.semestre(
	ano INT,
	periodo INT,
	data_inicio DATE,
	data_fim DATE,
	PRIMARY KEY (ano, periodo)				-- Chave primária composta
);

CREATE TABLE gustavo_henrique.estudante(
	matricula VARCHAR(12),
	MC REAL,
	login VARCHAR,
	ano INT,
	periodo INT,
	-- Também é possível colocar restrições
	FOREIGN KEY (login) REFERENCES gustavo_henrique.usuario(login), 							-- Chave Estrangeira
	FOREIGN KEY (ano, periodo) REFERENCES gustavo_henrique.semestre(ano, periodo)
);

-- Mockando dois usuários na tabela 'usuario'
INSERT INTO gustavo_henrique.usuario (login, password, age, data_nascimento, cpf) VALUES 
('gustavo', 'password123', 22, '2002-05-27', '00000000000');

INSERT INTO gustavo_henrique.usuario (login, password, age, data_nascimento, cpf) VALUES (
	'henrique', 'password123', 22, '2002-05-27', '11111111111'
);

INSERT INTO gustavo_henrique.semestre (ano, periodo, data_inicio, data_fim) VALUES (
	2025, 1, '05-12-2025', '09-11-2025'
);

INSERT INTO gustavo_henrique.semestre (ano, periodo, data_inicio, data_fim) VALUES (
	2025, 2, '10-11-2025', '31-12-2025'
);

INSERT INTO gustavo_henrique.estudante (matricula, MC, login, ano, periodo) VALUES (
	'202300027310', 4.2, 'gustavo', 2025, 1
);

SELECT * FROM gustavo_henrique.usuario;
-- SELECT * FROM gustavo_henrique.semestre;
-- SELECT * FROM gustavo_henrique.estudante;