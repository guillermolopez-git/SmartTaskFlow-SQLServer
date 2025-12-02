USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_tareas_update]    Script Date: 2/12/2025 16:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_tareas_update]
            @id_tarea int          -- Clave para identificar el registro a modificar
            ,@nombre varchar(100)
            ,@descripcion varchar(max)
            -- Omitimos @fecha_creacion porque no se suele modificar
            ,@fecha_limite datetime
            ,@id_usuario int
            ,@id_prioridad int
            ,@id_estado int
AS
BEGIN
    BEGIN TRY
        -- 1. Iniciar la Transacción
        BEGIN TRANSACTION
        
        -- 2. Lógica del procedimiento: UPDATE
        UPDATE Tareas
        SET
            nombre = @nombre,
            descripcion = @descripcion,
            fecha_limite = @fecha_limite,
            id_usuario = @id_usuario,
            id_prioridad = @id_prioridad,
            id_estado = @id_estado
        WHERE 
            id_tareas = @id_tarea
        
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