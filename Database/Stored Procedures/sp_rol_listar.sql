USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_listar]    Script Date: 2/12/2025 16:06:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_rol_listar]
AS
BEGIN
    BEGIN TRY
        
        SELECT id_rol, nombre_rol
        FROM Rol;
        
    END TRY
    BEGIN CATCH
        
        THROW;
        
    END CATCH
END
