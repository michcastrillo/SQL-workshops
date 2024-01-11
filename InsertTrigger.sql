USE [quiz1]
GO

/****** Object:  Trigger [dbo].[tr_Insertar_registro]    Script Date: 28/3/2022 23:17:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[tr_Insertar_registro]
ON [dbo].[curso_practica]
AFTER INSERT
AS
BEGIN
	if((SELECT caracter 
	FROM inserted) = 'Demostrativa') AND ((SELECT grupos 
	FROM inserted) = 0 )
		begin
			print 'El caracter es Demostrativo y su campo de grupo es 0'
		end;
	if(SELECT caracter 
	FROM inserted) = 'Participativa'
		begin
			print 'El caracter es Participativa'
		end;
END
GO


