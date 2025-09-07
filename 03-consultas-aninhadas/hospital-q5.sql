-- 2.5 Listar o id e o nome de todos os exames que possuem solicitação e já foram realizados
-- (ou seja, o campo de data de realização não está vazio) e que seus laudos já foram entregues.

SELECT DISTINCT e.id_exame, e.nome
FROM exame e
JOIN solicitacao_exame se ON e.id_exame = se.id_exame
WHERE se.data_realizacao IS NOT NULL
  AND se.laudo_entregue = TRUE;
