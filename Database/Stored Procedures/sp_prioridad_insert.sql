USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_prioridad_insert]    Script Date: 2/12/2025 16:05:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_prioridad_insert] 
@id_prioridad int,
@nombre_prioridad varchar(100)
as 
begin 
begin try 
 begin transaction 
 INSERT INTO [dbo].[Prioridad]
           (id_prioridad,nombre_prioridad)
     VALUES
           (@id_prioridad,@nombre_prioridad)
		   commit transaction 
		   end try
begin catch 
if @@TRANCOUNT>0 
begin 
rollback transaction 
end 
throw:
end catch 
end 
