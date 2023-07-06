public class Partido
{
    public int IdPartido { get; set; }
    public string Nombre { get; set; }
    public string Logo { get; set; }
    public string SitioWeb { get; set; }
    public DateTime FechaFundacion { get; set; }
    public int CantidadDiputados { get; set; }
    public int CantidadSenadores { get; set; }

    public Partido()
    {
        IdPartido = 0;
        Logo = " ";
        Nombre = " ";
        FechaFundacion = new DateTime();
        CantidadDiputados = 0;
        CantidadSenadores = 0;
    }
    public Partido(int idPartido, string nombre, string logo, string sitioWeb, DateTime fechaFundacion, int cantidadDiputados, int cantidadSenadores)
    {
        idPartido = IdPartido;
        Nombre = nombre;
        Logo = logo;
        SitioWeb = sitioWeb;
        fechaFundacion = FechaFundacion;
        cantidadDiputados = CantidadDiputados;
        cantidadSenadores = CantidadSenadores;
    }
}
