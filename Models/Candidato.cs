public class Candidato
{
    public int IdCandidato { get; set; }
    public int IdPartido { get; set; }
    public string Apellido { get; set; }
    public string Nombre { get; set; }
    public DateTime FechaNacimiento { get; set; }
    public string Foto { get; set; }
    public string Postulacion { get; set; }

    public Candidato()
    {
        IdCandidato=0;
        IdPartido = 0;
        Apellido = " ";
        Nombre = " ";
        FechaNacimiento = new DateTime();
        Foto = " ";
        Postulacion = " ";
    }
    public Candidato(int idCandidato, int idPartido, string apellido, string nombre, DateTime fechaNacimiento, string foto, string postulacion)
    {
        IdPartido = idPartido;
        Apellido = apellido;
        Nombre = nombre;
        FechaNacimiento = fechaNacimiento;
        Foto = foto;
        Postulacion = postulacion;
    }
}