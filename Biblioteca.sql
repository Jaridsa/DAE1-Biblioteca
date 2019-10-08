USE master   
GO  
CREATE DATABASE Biblioteca  
ON   
( NAME = Biblioteca_dat,  
    FILENAME = 'C:\Mis Datos\Biblioteca_dat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = Biblioteca_log,  
    FILENAME = 'C:\Mis Datos\Biblioteca_log.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
GO

 USE Biblioteca
 GO

CREATE TABLE EMPLEADO
( IdEmpleado		INT			NOT NULL,
  NomEmpleado		VARCHAR(20) NOT NULL,
  ApeEmpleado		VARCHAR(20) NOT NULL,
  FecNacimiento		DATE		NOT NULL,
  Telefono			VARCHAR(11) NOT NULL)
GO

CREATE TABLE CLIENTE
(IdCliente			INT			NOT NULL,
 NomCliente			VARCHAR(20)	NOT NULL,
 ApeCliente			VARCHAR(20) NOT NULL,
 DNI				VARCHAR(8)  NOT NULL,
 Email				VARCHAR(20) NULL,
 Telefono			VARCHAR(11)				)
 GO

CREATE TABLE EDITORIAL
 (IdEditorial		INT			NOT NULL,
  NomEditorial		VARCHAR(30) NOT NULL,
  Pais				VARCHAR(25)	NOT NULL,
  AñoPubli			DATE			     )
GO

CREATE TABLE LIBRO
 (IdLibro			INT			NOT NULL,
  NomLibro			VARCHAR(40)	NOT NULL,
  IdEditorial		INT			NOT NULL,
  IdAutor			INT			NOT NULL,
  Genero			VARCHAR(15)	NOT NULL,
  NumPáginas		VARCHAR(20)	NOT NULL,
  AñoEdicion		DATE		          )
GO

CREATE TABLE AUTOR
(IdAutor			INT			NOT NULL,
 NomAutor			VARCHAR(20)	NOT NULL,
 ApeAutor			VARCHAR(20)	NOT NULL,
 IdLibro			INT			NOT NULL,
 Telefono			VARCHAR(11) NOT NULL,
 Ciudad				VARCHAR(20)			 )
GO

CREATE TABLE PRESTAMO
(IdPrestamo			INT			NOT NULL,
 IdLibro			INT			NOT NULL,
 IdCliente			INT			NOT NULL,
 FecPrestamo		DATE		NOT NULL,
 FecDevolucion		DATE				 )
 GO

ALTER TABLE EMPLEADO
ADD PRIMARY KEY (IdEmpleado)
GO

ALTER TABLE CLIENTE
ADD PRIMARY KEY (IdCliente)
GO

ALTER TABLE EDITORIAL
ADD PRIMARY KEY (IdEditorial)
GO

ALTER TABLE LIBRO
ADD PRIMARY KEY (IdLibro)
GO

ALTER TABLE AUTOR
ADD PRIMARY KEY (IdAutor)
GO

ALTER TABLE PRESTAMO
ADD PRIMARY KEY (IdPrestamo)
GO