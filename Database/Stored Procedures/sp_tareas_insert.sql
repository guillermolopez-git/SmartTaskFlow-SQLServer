USE [SmartTaskFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_tareas_insert]    Script Date: 2/12/2025 16:08:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_tareas_insert]
            @nombre varchar(100)
            ,@descripcion varchar(max)
            ,@fecha_limite datetime
            ,@id_usuario int
            ,@id_prioridad int
            ,@id_estado int
AS
BEGIN
    
    BEGIN TRY
        BEGIN TRANSACTION
        INSERT INTO Tareas
            (nombre
            ,descripcion
            ,fecha_creacion
            ,fecha_limite
            ,id_usuario
            ,id_prioridad
            ,id_estado)
        VALUES
            (@nombre
            ,@descripcion
            ,GETDATE()
            ,@fecha_limite
            ,@id_usuario
            ,  @id_prioridad
            ,@id_estado)
        
        COMMIT TRANSACTION
        
    END TRY
    BEGIN CATCH
        -- 4. Si hay un error, verificar si la transacción está abierta
        IF @@TRANCOUNT > 0
        BEGIN
            -- Deshacer la Transacción
            ROLLBACK TRANSACTION
        END
        
        -- Opcional: Levantar el error para que la aplicación lo maneje
        THROW:
        
    END CATCH
END