-- 1.2 Liste o nome da disciplina (nome) e a média de notas das turmas, agrupado por
-- disciplina (somente as disciplinas que tiverem notas), porém, somente daquelas disciplinas
-- que são pré-requsito.
SELECT 
	pr.nome,
	AVG(c.nota)
FROM universidade.disciplina d
JOIN universidade.disciplina pr ON d.pre_req = pr.cod_disc
JOIN universidade.turma t ON t.cod_disc = pr.cod_disc
JOIN universidade.cursa c USING(id_turma)
WHERE c.nota IS NOT NULL
GROUP BY (pr.cod_disc);