namespace SmartTaskFlow.Entities
{
    public class Estados
    {

        private int id_estado { get; set; }
        private string nombre_estado { get; set; }
        public Estados(int id_estado, string nombre_estado)
        {
            this.id_estado = id_estado;
            this.nombre_estado = nombre_estado;
        }
    }
}