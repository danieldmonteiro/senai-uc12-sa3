CREATE DATABASE TesteSeg
USE TesteSeg
CREATE TABLE Usuarios(
    UsuarioId INT PRIMARY KEY IDENTITY,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Senha VARCHAR(50) NOT NULL
)
GO

INSERT INTO Usuarios VALUES('email@email.com', 123456)
INSERT INTO Usuarios VALUES('daniel@email.com', 123456)
INSERT INTO Usuarios VALUES('gabriela@email.com', 123456)
GO

SELECT * FROM Usuarios

SELECT Email, Senha, HASHBYTES('MD2', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('MD4', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('MD5', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA1', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA2_256', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, Senha, HASHBYTES('SHA2_512', Senha) AS 'Senha Hash' FROM Usuarios WHERE UsuarioId = 1
