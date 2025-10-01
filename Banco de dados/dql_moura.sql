USE db_escola;

--consulta que irá exibir somente as colunas que foram selecionadas(diferente de *)
SELECT id, nome FROM tb_escola;

--select top limita a quantidade de registros
SELECT TOP 3 nome FROM tb_escola;

--Exibir somente 3 registros do mais recente para o menor
SELECT TOP 3 nome
FROM tb_aluno
ORDER BY id DESC;

SELECT NomeTurma
FROM tb_turma
WHERE Periodo = 'manhã'

--EXIBE A PROVA DO PROFESSOR
SELECT * FROM tb_prova
WHERE nomeProf = 'Rolando'

SELECT COUNT(CPF) AS qtq_total_alunos FROM tb_aluno;

SELECT COUNT(id_aluno) AS qtq_LP_alunos
FROM tb_prova
WHERE Materia = 'LP'

SELECT MIN(datadenascimento) FROM tb_aluno;

SELECT MAX(datadenascimento) FROM tb_aluno;

SELECT nome, datadenascimento
FROM tb_aluno
WHERE datadenascimento = (SELECT MIN(datadenascimento) FROM tb_aluno);

--soma os id's de turmas cadastradas

SELECT SUM(id) FROM tb_turma

--media das notas

SELECT AVG(Nota) AS media FROM tb_prova;

--exibe os nomes dos mais novos 

SELECT MAX(datadenascimento) AS mais_novo
FROM tb_aluno
GROUP BY id
ORDER BY mais_novo DESC;