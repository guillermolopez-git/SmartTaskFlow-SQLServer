USE [SmartTaskFlow]

GO

/****** Object:  StoredProcedure [dbo].[sp_prioridad_delete]    Script Date: 2/12/2025 16:04:59 ******/

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO
ALTER procedure [dbo].[sp_prioridad_delete] 
@id_prioridad int 
as 
begin 
begin try 
begin transaction 

delete from Prioridad
where id_prioridad= @id_prioridad;
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