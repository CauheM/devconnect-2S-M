--Comando para usar um banco já criado
USE db_escola;

--comando para inserir um novo registro
INSERT INTO tb_escola(nome, endereço)
VALUES('Moura Branco', 'Rua Topajós, 1085 - Olímpico');

	SELECT * FROM tb_escola;

--REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, CPF, datadenascimento, Matricula, id_escola)
VALUES ('Ronaldo', '75320088000', '2009/06/09', 'LtYk46CUSE', 1),
('Gomes', '5867353453', '2010/12/23', 'njkmioer34', 1);

INSERT INTO tb_aluno(nome, CPF, datadenascimento, Matricula, id_escola)
VALUES ('Arthur', '10239568734', '2007/05/03', 'LOjuipLMB9', 1),
('Felipe', '48576345968', '2007/05/03', 'KJnhGvfERt', 1),
('Julio', '36376734346', '2007/05/03', 'LtYk4dwSE2', 1);

SELECT * FROM tb_aluno;

INSERT INTO tb_turma(id_escola, NomeTurma, NumeroSala, Periodo, Serie)
VALUES(1, 'A', '5', '7:00:00', '2');

SELECT * FROM tb_turma;

INSERT INTO tb_prova(Data_prova, Duracao, id_aluno, Materia, nomeProf, Nota)
VALUES('2025/09/30', '02:30:00', 3, 'LP', 'Rolando', '0.6');

SELECT * FROM tb_prova;

--TABELA TURMAPROVA - INTERMEDIÁRIA

INSERT INTO tb_turma_prova(id_turma, id_prova)

VALUES(2, 16)

SELECT * FROM tb_turma_prova;

UPDATE tb_aluno
SET nome = 'Armando'
WHERE CPF = '75320088000';

DELETE FROM tb_escola
WHERE nome ='Moura Branco';