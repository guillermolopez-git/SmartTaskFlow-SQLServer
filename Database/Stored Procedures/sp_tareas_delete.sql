USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_tareas_delete]    Script Date: 2/12/2025 16:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_tareas_delete]
            @id_tarea int          -- Clave para identificar el registro a eliminar
AS
BEGIN
    BEGIN TRY
        -- 1. Iniciar la Transacción
        BEGIN TRANSACTION
        
        -- 2. Lógica del procedimiento: DELETE
        DELETE FROM Tareas
        WHERE 
            id_tareas = @id_tarea -- ¡MUY IMPORTANTE! Especificar qué fila eliminar
        
        -- 3. Confirmar la Transacción (si todo salió bien)
        COMMIT TRANSACTION
        
    END TRY
    BEGIN CATCH
        -- 4. Manejo de errores (Rollback si la transacción está activa)
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION
        END
        THROW:
    END CATCH
END