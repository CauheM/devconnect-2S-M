--DLL

CREATE DATABASE devconnect;



CREATE TABLE tb_usuario(
id INT IDENTITY(1,1) PRIMARY KEY,
nome_completo NVARCHAR(255) NOT NULL,
nome_usuario NVARCHAR(50) UNIQUE NOT NULL,
email NVARCHAR(255) UNIQUE NOT NULL,
senha NVARCHAR(50) NOT NULL,
foto_perfil_url NVARCHAR(50) NULL
);

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
id INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT,
descricao NVARCHAR(255) NOT NULL,
imagem_url NVARCHAR(50) NULL,
DataPublicacao DATE NOT NULL

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtidas(
id INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT,
id_publicacao INT

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_curtidas;

CREATE TABLE tb_comentario(
id INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT,
id_publicacao INT,
texto NVARCHAR(255) NOT NULL,
DataComentario DATE NOT NULL

FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);

SELECT * FROM tb_comentario;

CREATE TABLE Seguidor(
id_Usuario_Seguir INT NOT NULL,
id_Usuario_Seguido INT NOT NULL,

PRIMARY KEY (id_Usuario_Seguir, id_Usuario_Seguido)
);

SELECT * FROM Seguidor;