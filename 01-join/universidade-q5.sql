-- 1.5 Liste o nome da disciplina e o nome do seu pré-requisito. - INNER JOIN
SELECT d.nome, pr.nome
FROM universidade.disciplina d
JOIN universidade.disciplina pr ON d.pre_req = pr.cod_disc;