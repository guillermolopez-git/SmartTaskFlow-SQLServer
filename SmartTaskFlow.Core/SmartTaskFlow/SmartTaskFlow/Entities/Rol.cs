namespace SmartTaskFlow.Entities
{
    public class Rol
    {
        private int id_rol { get; set; }
        private string nombre_rol { get; set; }
        public Rol(int id_rol, string nombre_rol)
        {
            this.id_rol = id_rol;
            this.nombre_rol = nombre_rol;
        }
    }
}