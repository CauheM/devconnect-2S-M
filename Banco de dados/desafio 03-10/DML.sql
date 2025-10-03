--DML

USE devconnect;

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES ('Darwin Gabriel Nunez Ribeiro', 'darwin_grugru', 'darwinnunez@ymail.com', 'DNunez1997', 'fGSwhsnwjft0g.png'),
('Mohamed de Souza Martins', 'M0ham3d', 'mohamedsouza@outbook.com', 'MSouza231', 'DJdFdnjdeDdkfDVM.png');

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(id_usuario, descricao, imagem_url, DataPublicacao)
VALUES (1, 'Como assim ainda não fui patrocinado pela nike?', 'JDJdnrfjfoNEDDIjifhkntd.png', '2025/10/03');

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas(id_usuario, id_publicacao)
VALUES (2, 1);

SELECT * FROM tb_curtidas;

INSERT INTO tb_comentario(id_usuario, id_publicacao, texto, DataComentario)
VALUES (2, 1, 'Eu acho que a adidas enviou uma proposta pra tu', '2025/10/03'),
(1, 1, 'Na verdade não, foi a mizuno', '2025/10/03');

SELECT * FROM tb_comentario;

INSERT INTO Seguidor(id_Usuario_Seguir, id_Usuario_Seguido)
VALUES (1, 2);

SELECT * FROM Seguidor;