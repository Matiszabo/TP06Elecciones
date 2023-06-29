public class Partido
{
    public int IdPartido { get; set; }
    public string Nombre { get; set; }
    public string Logo { get; set; }
    public string SitioWeb { get; set; }
    public DateTime FechaFundacion { get; set; }
    public int CantidadDiputados { get; set; }
    public int CantidadSenadores { get; set; }

    public Partido(int idPartido, string nombre, string logo, string sitioWeb, DateTime fechaFundacion, int cantidadDiputados, int cantidadSenadores)
    {
        idPartido=IdPartido;
        nombre=Nombre;
        logo=Logo;
        sitioWeb=SitioWeb;
        fechaFundacion=FechaFundacion;
        cantidadDiputados=CantidadDiputados;
        cantidadSenadores=CantidadSenadores;
    }
}
