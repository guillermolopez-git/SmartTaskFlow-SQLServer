namespace SmartTaskFlow.Entities
{
    public class prioridad
    {
        private int id_prioridad { get; set; }
        private string nombre_prioridad { get; set; }

        public prioridad(int id_prioridad, string nombre_prioridad)
        {
            this.id_prioridad = id_prioridad;
            this.nombre_prioridad = nombre_prioridad;
        }
    }
}