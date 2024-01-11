USE [quiz1]
GO

/****** Object:  StoredProcedure [dbo].[InsertarNuevaPractica]    Script Date: 28/3/2022 22:27:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarNuevaPractica]
	(@id_practica int,
	@id_tema int,
	@descripcion text,
	@nombre varchar (50),
	@tema varchar (50))
AS
BEGIN
	if((SELECT id_tema
	FROM tema
	WHERE @id_tema = id_tema) is null)
		begin 
			SET IDENTITY_INSERT tema ON;
			insert into tema(id_tema,tema) values(@id_tema, @tema);
			SET IDENTITY_INSERT tema OFF;
		end 
	SET IDENTITY_INSERT practicas ON;
	insert into practicas(id_practica, id_tema, descripcion, nombre) values(@id_practica, @id_tema, @descripcion, @nombre);
	SET IDENTITY_INSERT practicas OFF;
	select d.tema, p.descripcion,p.nombre
	from tema d, practicas p
	where d.id_tema = p.id_tema
END

GO


