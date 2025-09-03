-- 2.6. Listar os bairros de todos os endereços cadastrados da cidade de Aracaju, mas sem repeti-los
SELECT DISTINCT bairro FROM hospital.endereco WHERE cidade='Aracaju';