USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_estados_update]    Script Date: 2/12/2025 16:03:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_estados_update]
@id_estado int,
@nombre_estado varchar(100)
as 
begin 
begin try 
begin transaction 
UPDATE [dbo].[Estados]
   SET [nombre_estado] = @nombre_estado
 WHERE id_estado=@id_estado;
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

