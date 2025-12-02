USE [SmartTaskFlow]
GO
/****** Object:  Trigger [dbo].[trg_tarea_creada]    Script Date: 2/12/2025 16:14:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_tarea_creada]
ON [dbo].[Tareas]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Notificasiones (id_usuario, id_tareas, mensaje, fecha)
    SELECT
        i.id_usuario,              -- Usuario al que pertenece la tarea
        i.id_tareas,               -- ID real de la tarea
        CONCAT('Se creó una nueva tarea: ', i.nombre),
        SYSDATETIME()
    FROM inserted i;
END;
