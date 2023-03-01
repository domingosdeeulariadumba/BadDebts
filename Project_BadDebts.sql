-- Neste projecto eu apresento uma base de dados do hístórico evolutivo do crédito malparado entre 2012 e 2021/In this project I present a database of the evolutionary history of bad debt between 2012 and 2021 --

--1º Começamos por criar o Banco de Dados/ Creating the DB--
CREATE DATABASE [Credito Vencido];

-- Criando a primeira tabela/Creating the first table--
CREATE TABLE [Perfil Geral] (
Periodo INT PRIMARY KEY,
CreditoTotal DECIMAL (15,2),
VolumeCreditoMalparado DECIMAL (15,2),
Racio DECIMAL (4,1));

SELECT * FROM [Perfil Geral];

ALTER TABLE [Perfil Geral]
ALTER COLUMN Racio REAL;

-- INSERINDO dados na primeira tabela/Inserting data into the first table--
INSERT INTO [Perfil Geral] (Periodo, CreditoTotal, VolumeCreditoMalparado, Racio)
VALUES
(2012, 608099.4, 97904.0, 0.16), 
(2013, 673693.0, 118809.9, 0.18),
(2014, 917533.2, 188163.0, 0.21), 
(2015, 987709.2, 218418.9, 0.22), 
(2016, 1222321.6, 799189.5, 0.65), 
(2017, 1298701.6, 1012315.6, 0.78), 
(2018, 1145275.5, 834900.0, 0.73), 
(2019, 1291938.3, 1227157.5, 0.95), 
(2020, 616220.0, 538169.0, 0.87),
(2021, 629971.0, 552719.0, 0.88);

-- Criando a segunda tabela/Creating the second table--
CREATE TABLE PerfilporSector (
Sector VARCHAR (20) PRIMARY KEY,
[2012] REAL, [2013] REAL, [2014] REAL, [2015] REAL, [2016] REAL, [2017] REAL, [2018] REAL, [2019] REAL, [2020] REAL, [2021] REAL);
SELECT *FROM PerfilporSector;

-- INSERINDO dados na segunda tabela/Inserting data into the second table--
INSERT INTO PerfilporSector (Sector, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES ('Comercio', 0.39, 0.40, 0.35, 0.34, 0.36, 0.25, 0.31, 0.32, 0.47, 0.48);

INSERT INTO PerfilporSector (Sector, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES ('Prestacao de Servico', 0.12, 0.25, 0.29, 0.31, 0.26, 0.21, 0.26, 0.25, 0.18, 0.19);

INSERT INTO PerfilporSector (Sector, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES ('Particulares', 0.30, 0.19,'' ,'' ,'' ,'' ,'' ,'' , 0.19, 0.20);

INSERT INTO PerfilporSector (Sector, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES
('Construcão', '', '', 0.16, '', 0.18, 0.17, 0.20, 0.20, '', '');

INSERT INTO PerfilporSector (Sector, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES ('Agricultura e Pescas', '', '', '', 0.07, '', '', '', '', '', ''); 						

-- Criando a terceira e última tabela/Creating the third and last table--
CREATE TABLE  SectorEconomico (
SectorEconomico VARCHAR (15) PRIMARY KEY,
[2012] REAL, [2013] REAL, [2014] REAL, [2015] REAL, [2016] REAL, [2017] REAL, [2018] REAL, [2019] REAL, [2020] REAL, [2021] REAL);
SELECT * FROM SectorEconomico;

-- INSERINDO dados na terceira tabela/Inserting data into the third table--
INSERT INTO SectorEconomico (SectorEconomico, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES
('Publico', '', 0.01, 0.01, 0.02, 0.01, 0.06, 0.08, 0.06, 0.04, 0.03);
INSERT INTO SectorEconomico (SectorEconomico, [2012], [2013],[2014], [2015], [2016], [2017], [2018], [2019], [2020], [2021])
VALUES('Privado', 0.70, 0.80, 0.92, 0.91, 0.88, 0.87, 0.83, 0.86, 0.78, 0.78), 
('Particulares', 0.30, 0.19, 0.07, 0.07, 0.11, 0.07, 0.10, 0.08, 0.19, 0.19);
SELECT * FROM SectorEconomico;