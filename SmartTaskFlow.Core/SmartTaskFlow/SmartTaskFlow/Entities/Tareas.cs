using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartTaskFlow.Entities
{
    public class Tareas
    {

       private int id_tarea { get; set; }
        private string nombre { get; set; }
        private string descripcion { get; set; }
        private DateTime fecha_creacion { get; set; }
        private DateTime fecha_vencimiento { get; set; }
        private int id_usuario { get; set; }
        private int id_prioridad { get; set; }
        private int id_estado { get; set; }


        public Tareas(int id_tarea, string nombre, string descripcion, DateTime fecha_creacion, DateTime fecha_vencimiento, int id_usuario, int id_prioridad, int id_estado)
        {
            this.id_tarea = id_tarea;
            this.nombre = nombre;
            this.descripcion = descripcion;
            this.fecha_creacion = fecha_creacion;
            this.fecha_vencimiento = fecha_vencimiento;
            this.id_usuario = id_usuario;
            this.id_prioridad = id_prioridad;
            this.id_estado = id_estado;
        }
    }
}