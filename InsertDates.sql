USE [quiz1]
GO

/****** Object:  StoredProcedure [dbo].[InsertarFechas]    Script Date: 28/3/2022 21:56:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarFechas]
	(@fecha1 date,
	@fecha2 date)
AS
BEGIN
	select p.nombre_profesor, t.tema, sum(cp.horas) as horas
	from profesor p, tema t, curso_practica cp, curso c, practicas pr
	where p.id_profesor = c.id_profesor and cp.id_curso = c.id_curso and cp.id_practica = pr.id_practica and pr.id_tema = t.id_tema and cp.fecha >= @fecha1 and cp.fecha <= @fecha2
	group by p.nombre_profesor, t.tema
END

GO


