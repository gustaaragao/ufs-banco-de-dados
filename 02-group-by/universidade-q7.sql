-- 1.7  Liste o primeiro nome, sobrenome do estudante  e a média de notas, agrupado por 
-- cada estudante, porém somente das turmas de disciplinas que o departamento responsável 
-- é o DCOMP. 

SELECT 
	u.primeiro_nome,
	u.sobrenome,
	AVG(c.nota)
FROM universidade.cursa c
JOIN universidade.turma t USING(id_turma)
JOIN universidade.disciplina d ON d.cod_disc = t.cod_disc
JOIN universidade.estudante e USING(mat_estudante)
JOIN universidade.usuario u USING(cpf)
WHERE d.depto_responsavel = 'DCOMP'
GROUP BY e.mat_estudante, u.primeiro_nome, u.sobrenome;