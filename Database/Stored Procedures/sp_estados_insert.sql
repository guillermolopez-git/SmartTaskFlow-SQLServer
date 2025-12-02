USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_estados_insert]    Script Date: 2/12/2025 16:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_estados_insert] 
@nombre_estado varchar(100)
as 
begin 
    begin try 
	begin transaction 
	
INSERT INTO [dbo].[Estados]
           (nombre_estado)
     VALUES
           (@nombre_estado)

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