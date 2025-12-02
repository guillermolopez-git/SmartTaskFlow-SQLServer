USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_prioridad_update]    Script Date: 2/12/2025 16:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_prioridad_update] 
@id_prioridad int,
@nombre_prioridad varchar(100)
as 
begin 
begin try 
begin transaction 
UPDATE [dbo].[Prioridad]
   SET id_prioridad = @id_prioridad,
      nombre_prioridad = @nombre_prioridad
 WHERE id_prioridad = @id_prioridad;
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