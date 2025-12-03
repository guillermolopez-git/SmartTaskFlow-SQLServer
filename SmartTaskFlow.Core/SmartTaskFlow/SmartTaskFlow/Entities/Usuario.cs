using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SmartTaskFlow.Entities
{
    public class Usuario
    {
        
        private int id_usuario { get; set; }
        private string nombre { get; set; }
        private string apellido { get; set; }
        private string telefono { get; set; }
        private string correo { get; set; }


        public Usuario(int id_usuario, string nombre, string apellido, string telefono, string correo)
        {
            this.id_usuario = id_usuario;
            this.nombre = nombre;
            this.apellido = apellido;
            this.telefono = telefono;
            this.correo = correo;
        }
    }
}
