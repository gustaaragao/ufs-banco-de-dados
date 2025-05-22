-- Caso exista, Deletando Schema 'gustavo_henrique'
DROP SCHEMA IF EXISTS gustavo_henrique CASCADE;

-- Criando Schema 'gustavo_henrique'
CREATE SCHEMA gustavo_henrique;

-- Criando tabela 'usuario' no Schema 'gustavo_henrique'
CREATE TABLE gustavo_henrique.usuario(
	login VARCHAR NOT NULL PRIMARY KEY, -- Chave Primária -> Garante unicidade
	password VARCHAR(25),
	age INT,
	data_nascimento DATE,
    cpf BIGINT UNIQUE -- BIGINT: 8 bytes	UNIQUE: coluna é única
);

CREATE TABLE gustavo_henrique.semestre(
	ano INT,
	periodo INT,
	data_inicio DATE,
	data_fim DATE,
	PRIMARY KEY (ano, periodo)
);

-- Adicionando um usuário com sucesso
INSERT INTO gustavo_henrique.usuario VALUES (
	'gustavo', 'password123', 22, '2002-05-27', 00000000000
);

INSERT INTO gustavo_henrique.usuario VALUES (
	'abc', 'password123', 22, '2002-05-27', 11111111111
);

-- Esse vai dar erro por causa do domínio da coluna
-- INSERT INTO gustavo_henrique.usuario VALUES (
--	'abc', 'password123', 'def', '2002-05-27'
-- );

INSERT INTO gustavo_henrique.usuario VALUES (
	'xyz', 'password123', NULL, '2002-05-27', 22222222222
);

-- O casting de '22' para 22 é automática
INSERT INTO gustavo_henrique.usuario VALUES (
	'gus', 'password123', '22', '2002-05-27', 33333333333
);

-- Ao não passar um campo, ele considera como NULL
INSERT INTO gustavo_henrique.usuario VALUES (
	'tav', 'password123', '22'
);

-- As próximas duas inserções vão dar erro, pois o formato da data não é compatível
-- INSERT INTO gustavo_henrique.usuario VALUES (
-- 	'abc', 'password123', 22, '27/05/2002'
-- );


-- INSERT INTO gustavo_henrique.usuario VALUES (
-- 	'abc', 'password123', 22, '05/27/2002'
-- );

CREATE TABLE gustavo_henrique.estudante(
	matricula VARCHAR(12),
	MC REAL,
	login VARCHAR,
	semestre INT,
	-- Também é possível colocar restrições
	FOREIGN KEY (login) REFERENCES gustavo_henrique.estudante(login) -- Chave Estrangeira
	FOREIGN KEY (ano, semestre) REFERENCES gustavo_henrique.semestre(ano, semestre)
);

INSERT INTO gustavo_henrique.estudante VALUES (
	'202300027310', 4.2, 'gustavo' 
);

-- O usuário user1 não existe na tabela 'usuario' --> Levanta um erro
-- INSERT INTO gustavo_henrique.estudante VALUES (
-- 	'202300027310', 4.2, 'user1' 
-- );



INSERT INTO gustavo_henrique.semestre VALUES (
	2025, 1, '2025-05-11', '2025-09-12'
);

-- SELECT * FROM gustavo_henrique.semestre;