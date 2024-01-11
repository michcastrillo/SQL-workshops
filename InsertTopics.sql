USE [quiz1]
GO

/****** Object:  StoredProcedure [dbo].[InsertarTemas]    Script Date: 28/3/2022 22:28:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarTemas]
	(@tema Varchar(50))
AS
BEGIN
	select  pr.nombre,c.carrera,p.nombre_profesor
	from practicas pr, profesor p, curso c, curso_practica cp, tema t
	where  p.id_profesor=  c.id_profesor and c.id_curso = cp.id_curso and cp.id_practica = pr.id_practica and pr.id_tema= t.id_tema and t.tema = @tema
END

GO


