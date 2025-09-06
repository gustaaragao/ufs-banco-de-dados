-- 1.6 Liste a matrícula do professor (mat_professor) e código do departamento
-- (departamento) dos professores que lecionam turmas com menos de 7 alunos.
SELECT DISTINCT p.mat_professor, p.departamento
FROM universidade.cursa c
JOIN universidade.turma t ON c.id_turma = t.id_turma
JOIN universidade.leciona l ON t.id_turma = l.id_turma
JOIN universidade.professor p ON l.mat_professor = p.mat_professor
GROUP BY t.id_turma, p.mat_professor, p.departamento
HAVING COUNT(c.mat_estudante) < 7;