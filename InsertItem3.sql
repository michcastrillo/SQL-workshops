USE [quiz1]
GO

/****** Object:  StoredProcedure [dbo].[InsertarItem03]    Script Date: 28/3/2022 23:15:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarItem03]
	(@anoColegio int,
	@division varchar(1),
	@carrera varchar(10),
	@anoF varchar(10))
AS
BEGIN
		SELECT  c.materia, sum(cp.horas) AS horas
		FROM curso_practica cp, curso c
		WHERE (cp.id_curso = c.id_curso) AND
		(c.ano = @anoColegio AND
		c.carrera = @carrera AND
		c.division = @division AND
		YEAR(cp.fecha) = @anoF) 
		GROUP BY c.materia,horaS
END

GO


