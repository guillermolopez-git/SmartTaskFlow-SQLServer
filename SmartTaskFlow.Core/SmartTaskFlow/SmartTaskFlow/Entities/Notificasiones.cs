namespace SmartTaskFlow.Entities
{
    public class Notificasiones 
    {
        private int id_notificacion { get; set; }
        private int id_usuario { get; set; }
        private int id_tarea { get; set; }
        private string mensaje { get; set; }
        private DateTime fecha { get; set; }



        public Notificasiones(int id_notificacion, int id_usuario, int id_tarea, string mensaje, DateTime fecha)
        {
            this.id_notificacion = id_notificacion;
            this.id_usuario = id_usuario;
            this.id_tarea = id_tarea;
            this.mensaje = mensaje;
            this.fecha = fecha;
        }
    }
}