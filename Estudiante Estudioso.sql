CREATE DATABASE dbEstudianteEstudioso;
GO 
USE dbEstudianteEstudioso;
GO
--Creando las tablas: Tabla Estudiante verificar siempre cuales son las tablas
--principales
CREATE TABLE Estudiantes(
Id_Estudiante INT PRIMARY KEY,
Nombre NVARCHAR(100) NOT NULL,
Apellido NVARCHAR (100) NOT NULL,
idEspecialidad varchar (200) not null,
Codigo INT   IDENTITY (20240000,1) UNIQUE,
edad INT,
idGrado varchar (100) NOT NULL,
domicilio NVARCHAR (200) NOT NULL);
/*Inserccion de datos estudiantes*/
insert into Estudiantes (Id_Estudiante,Nombre,Apellido,edad,domicilio) Values (1,'Omar','Rivera',16,'Av Bernal')
--Table Especialidad
CREATE TABLE Especialidad(
id_Especialidad INT PRIMARY KEY IDENTITY (1,1),
nombre_Especialidad NVARCHAR (MAX));
/*Inserccion de datos*/
insert into Especialidad (nombre_Especialidad) values ('Desarrillo de Software')
insert into Especialidad (nombre_Especialidad) values ('Electromecanica')
insert into Especialidad (nombre_Especialidad) values ('Diseño Grafico')
insert into Especialidad (nombre_Especialidad) values ('Energias Renovables')
insert into Especialidad (nombre_Especialidad) values ('Arquitectura')
insert into Especialidad (nombre_Especialidad) values ('Contabilidad')
insert into Especialidad (nombre_Especialidad) values ('Electronica')
insert into Especialidad (nombre_Especialidad) values ('Automotriz')
--Table Grado
CREATE TABLE Grado(
IDGRADE INT PRIMARY KEY IDENTITY (1,1),
GRADO NVARCHAR (100) NOT NULL);
/*Inserccion de datos*/
insert into Grado (GRADO) values ('1° Grado')
insert into Grado (GRADO) values ('2° Grado')
insert into Grado (GRADO) values ('3° Grado')
insert into Grado (GRADO) values ('4° Grado')
insert into Grado (GRADO) values ('5° Grado')
insert into Grado (GRADO) values ('6° Grado')
insert into Grado (GRADO) values ('7° Grado')
insert into Grado (GRADO) values ('8° Grado')
insert into Grado (GRADO) values ('9° Grado')
insert into Grado (GRADO) values ('1° Año Bachillerato')
insert into Grado (GRADO) values ('2° Año Bachillerato')
insert into Grado (GRADO) values ('3° Año Bachillerato')

--Tabla Pacientes
CREATE TABLE Alumnos (
ID_Estudioso INT PRIMARY KEY IDENTITY (1,1),
Carnet INT NOT NULL,
CONSTRAINT FK_Alumno_Estudiantes FOREIGN KEY (Carnet) REFERENCES Estudiantes (Codigo));

/*Seleccion*/
SELECT Nombre AS Nombre_Estudiante,apellido,
idEspecialidad AS nombre_Especialidad ,idGrado AS GRADO
from Estudiantes AS E
JOIN
Especialidad ON E.idEspecialidad = Especialidad.nombre_Especialidad
JOIN 
GRADO AS G ON E.idGrado=G.IDGRADE

select * from Estudiantes
select * from Grado
select * from Especialidad
select * from Alumnos


drop table Estudiantes
drop table Especialidad
drop table Alumnos
drop table Grado

--Llenaremos nuestra base con datos
--Probando el metodo de select para traer todos los datos
--Insertar datos iniciales de doctores

