USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_usuarios_insert]    Script Date: 2/12/2025 16:09:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_usuarios_insert] 
            @nombre varchar(100)
           ,@apellido varchar(100)
           ,@telefono varchar(15)
           ,@correo varchar(250)

as 
begin

begin try
begin transaction 

insert into Usuarios(nombre,apellido,telefono,correo)
values (@nombre,@apellido,@telefono,@correo)



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
