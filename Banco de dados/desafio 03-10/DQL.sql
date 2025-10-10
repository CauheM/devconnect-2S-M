--DQL

--Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem será seguido)

SELECT 
U1.nome_usuario AS Seguidor,
U2.nome_usuario AS Seguido
FROM Seguidor s
INNER JOIN tb_usuario U1 ON s.id_Usuario_Seguir = U1.id
INNER JOIN tb_usuario U2 ON s.id_Usuario_Seguido = U2.id;

--Exiba quantos seguidores possui um respectivo usuário

SELECT 
U.nome_usuario,
S.id_Usuario_Seguido AS 'Quantidade de Seguidores'
FROM tb_usuario U
LEFT JOIN Seguidor S ON U.id = S.id_Usuario_Seguido;

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário

SELECT 
P.descricao,
P.imagem_url,
u.nome_usuario
FROM tb_publicacao P
INNER JOIN tb_usuario U ON P.id_usuario = U.id;

--Exiba todos os comentários com o nome e o texto de uma respectiva publicação

SELECT 
U.nome_usuario,
C.texto,
P.descricao AS Publicacao
FROM tb_comentario C
INNER JOIN tb_usuario U ON C.id_usuario = U.id
INNER JOIN tb_publicacao P ON C.id_publicacao = P.id;

--Exiba a quantidade de curtidas de uma respectiva publicação.

SELECT 
P.descricao,
C.id_publicacao AS 'Total de Curtidas'
FROM tb_publicacao P
LEFT JOIN tb_curtidas C ON P.id = C.id_publicacao;

--Exiba todos usuários que não chegaram a fazer publicações.

SELECT 
U.nome_usuario
FROM tb_usuario U
LEFT JOIN tb_publicacao P ON u.id = P.id_usuario
WHERE P.id_usuario IS NULL;

--Exiba todos usuários que não chegaram a fazer reações.

SELECT 
U.nome_usuario
FROM tb_usuario U
LEFT JOIN tb_curtidas C ON U.id = C.id_usuario
WHERE C.id_usuario IS NULL;

--Descurtir: remova uma curtida de um usuário há uma publicação.

DELETE 
FROM tb_curtidas
WHERE id_usuario = 2 AND id_publicacao = 1;

--Tornar a coluna e como chave composta na tabela comentário. Para evitar duplicidade de curtida do mesmo usuário e publicação.

ALTER TABLE tb_comentario
ADD CONSTRAINT UQ_Comentario UNIQUE (id_usuario, id_publicacao);
	