USE [quiz1]
GO

/****** Object:  Trigger [dbo].[tr_InsertarItem6]    Script Date: 28/3/2022 23:20:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[tr_InsertarItem6]
ON [dbo].[curso]
AFTER INSERT
AS
BEGIN
	if((SELECT carrera
	FROM inserted) = 'Com Social') AND ((SELECT horas_semanales 
	FROM inserted) = 0 )
		begin
			RAISERROR('No puede ingresar datos con horas semanales menores a 0 en la carrera Com Social".',16, 
                    1) 
          ROLLBACK TRANSACTION 
		end;
	if((SELECT carrera
	FROM inserted) = 'Técnica') AND ((SELECT horas_semanales 
	FROM inserted) = 0 )
		begin
			RAISERROR('No puede ingresar datos con horas semanales menores a 0 en la carrera Técnica".',16, 
                    1) 
          ROLLBACK TRANSACTION 
		end;
	if((SELECT carrera
	FROM inserted) = 'Info') AND ((SELECT horas_semanales 
	FROM inserted) = 0 )
		begin
			RAISERROR('No puede ingresar datos con horas semanales menores a 0 en la carrera Info".',16, 
                    1) 
          ROLLBACK TRANSACTION 
		end;
	if((SELECT carrera
	FROM inserted) = 'Com Social') AND ((SELECT horas_semanales 
	FROM inserted) > 0 )
		begin
			print 'Se insertó datos en la carrera Com social con una cantidad de horas mayores a 0'
		end;
	if((SELECT carrera
	FROM inserted) = 'Info') AND ((SELECT horas_semanales 
	FROM inserted) > 0 )
		begin
			print 'Se insertó datos en la carrera Info con una cantidad de horas mayores a 0'
		end;
	if((SELECT carrera
	FROM inserted) = 'Técnica') AND ((SELECT horas_semanales 
	FROM inserted) > 0 )
		begin
			print 'Se insertó datos en la carrera Tecnica con una cantidad de horas mayores a 0'
		end;
END
GO


