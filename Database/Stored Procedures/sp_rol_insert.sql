USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_insert]    Script Date: 2/12/2025 16:06:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_rol_insert] 
@nombre_rol varchar(100)
as 
begin 
begin try 
begin transaction 

insert into Rol(nombre_rol)
values (@nombre_rol)
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