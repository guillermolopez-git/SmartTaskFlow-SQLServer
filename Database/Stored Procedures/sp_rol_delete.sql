USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_delete]    Script Date: 2/12/2025 16:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_rol_delete]
@id_rol int 
as
begin 
begin try 
begin transaction 
delete from Rol
where id_rol=@id_rol;
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

