-- 1.9 - Liste o primeiro_nome e sobrenome do aluno, o número de disciplinas que ele possui
-- nota maior ou igual a 5,0 e o número de disciplinas que ele tirou abaixo de 5,0
SELECT 
    u.primeiro_nome, 
    u.sobrenome, 
    ma.maior, 
    me.menor
FROM universidade.estudante e
FULL JOIN (
    SELECT 
        c.mat_estudante, 
        COUNT(*) AS maior
    FROM universidade.cursa c
    WHERE c.nota >= 5
    GROUP BY c.mat_estudante
) ma ON e.mat_estudante = ma.mat_estudante
FULL JOIN (
    SELECT 
        c.mat_estudante, 
        COUNT(*) AS menor
    FROM universidade.cursa c
    WHERE c.nota < 5
    GROUP BY c.mat_estudante
) me ON e.mat_estudante = me.mat_estudante
JOIN universidade.usuario u 
    ON e.cpf = u.cpf;