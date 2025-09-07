-- 1.4 Liste o nome e código de todas as disciplinas que tenham pré-requisito e tenham mais de 2 créditos.
SELECT * FROM universidade.disciplina WHERE pre_req IS NOT NULL AND creditos>2;