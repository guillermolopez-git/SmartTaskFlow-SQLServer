USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_usurio_update]    Script Date: 2/12/2025 16:09:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_usurio_update]
    @id_usurios INT, -- Es probable que el nombre correcto sea @id_usuario
    @nombre VARCHAR(100),
    @apellido VARCHAR(100),
    @telefono VARCHAR(15),
    @correo VARCHAR(250)
AS 
BEGIN 
    BEGIN TRY 
        BEGIN TRANSACTION 
        
        UPDATE Usuarios
        SET
            nombre = @nombre,
            apellido = @apellido,
            telefono = @telefono,
            correo = @correo  -- <-- SIN COMA AQUÍ
        WHERE id_usuario = @id_usurios; -- <-- USAR @id_usurios (el parámetro) y ASIGNARLO a la columna id_usuario

        COMMIT TRANSACTION 

    END TRY 

    BEGIN CATCH
        IF @@TRANCOUNT > 0 
        BEGIN 
            ROLLBACK TRANSACTION 
        END 

        THROW:
    END CATCH
END