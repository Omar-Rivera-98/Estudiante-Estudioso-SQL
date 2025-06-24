CREATE DATABASE dbEstudiante_Estudioso
GO
USE dbEstudiante_Estudioso
GO

CREATE TABLE Alumno(
idEstudiante int primary key identity (1,1),
nombre NVARCHAR (800) NOT NULL,
apellido NVARCHAR (800) NOT NULL,
especialidad NVARCHAR (60) NOT NULL,
edad NVARCHAR NOT NULL);
