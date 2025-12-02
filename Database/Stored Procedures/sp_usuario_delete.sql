USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_delete]    Script Date: 2/12/2025 16:08:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_usuario_delete]
@id_usurio int 
as 
begin 
begin try 
begin transaction 

delete from Usuarios
where id_usuario=@id_usurio;
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
