USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_update]    Script Date: 2/12/2025 16:07:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER procedure [dbo].[sp_rol_update]
 @id_rol int,
 @nombre_rol varchar(100)
 as 
 begin 
 begin try 
 begin transaction 
 UPDATE [dbo].[Rol]
   SET nombre_rol = @nombre_rol
 WHERE id_rol = @id_rol;
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
