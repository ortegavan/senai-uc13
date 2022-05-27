-- DML
USE RpgOnline
GO

INSERT INTO Habilidade VALUES('Lança Moral')
INSERT INTO Habilidade VALUES('Recuperar Vida')
INSERT INTO Habilidade VALUES('Escudo Supremo')

INSERT INTO Classe VALUES('Bárbaro')
INSERT INTO Classe VALUES('Monge')

INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES(1, 1)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES(1, 3)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES(2, 1)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES(2, 2)

INSERT INTO Personagem VALUES(1, 'DeuBug')
INSERT INTO Personagem VALUES(2, 'BitBug')

INSERT INTO Usuario VALUES(1, 'Teste 1', 'email1@email.com', HASHBYTES('SHA', '12345'))
INSERT INTO Usuario VALUES(1, 'Teste 2', 'email2@email.com', HASHBYTES('SHA', '12345'))

SELECT HASHBYTES('SHA', '12345')
UPDATE Usuario SET Senha = CONVERT(VARCHAR(50), HASHBYTES('SHA', '12345'), 1)
SELECT * FROM Usuario