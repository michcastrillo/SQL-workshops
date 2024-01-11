USE [quiz1]
GO

/****** Object:  StoredProcedure [dbo].[InsertarItem04]    Script Date: 28/3/2022 23:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarItem04]
	(@id_cursoPractica int,
	@id_practica int,
	@Ano int, --Curso
	@division varchar (20), --Curso
	@carrera varchar (20), --Curso
	@materia varchar (20), --Curso
	@nomPractica varchar (50), --Practicas
    @fecha varchar (20), --curso_practica
	@cantiHoras varchar (20),
	@caracter varchar (20)) --curso_practica
AS
BEGIN
	insert into curso_practica(id_curso, id_practica, horas, fecha,ayudante,grupos,caracter) 
	values(@id_cursoPractica, @id_practica, @cantiHoras, @fecha,null,null,null);
END

GO


