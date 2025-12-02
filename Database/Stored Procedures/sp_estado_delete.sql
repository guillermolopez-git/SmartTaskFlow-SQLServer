USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_estado_delete]    Script Date: 2/12/2025 16:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_estado_delete] 
@id_estado int 
as 
begin 
begin try 
begin transaction 
DELETE FROM [dbo].[Estados]
      WHERE id_estado=@id_estado;
	  end try 
	 begin catch 
	 if @@TRANCOUNT>0 
	 begin 
	 rollback transaction 
	 end 
	 throw:
	 end catch 
	 end 
