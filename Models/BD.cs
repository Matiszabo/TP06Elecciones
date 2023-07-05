using System.Data.SqlClient;
using Dapper;
public static class BD
{
    private static List<Partido> ListaPartidos{get; set;} = new List<Partido>();
    private static List<Candidato> ListaCandidatos = new List<Candidato>();

    public static void AgregarCandidato(Candidato can)
    {
        ListaCandidatos.Add(can);
        /*execute*/
    }

    public static void EliminarCandidato(int idCandidato)
    {
        var candidato = ListaCandidatos.FirstOrDefault(c => c.IdCandidato == idCandidato);
        if(candidato != null)
        {
            ListaCandidatos.Remove(candidato);
        }
        /*execute*/
    }

    public static Partido VerInfoPartido(int idPartido)
    {
        return ListaPartidos.FirstOrDefault(p => p.IdPartido == idPartido);
            /*queryfirstordefault*/
    }

    public static Candidato VerInfoCandidato(int idCandidato)
    {
        return ListaCandidatos.FirstOrDefault(c => c.IdCandidato == idCandidato);
            /*queryfirstordefault*/
    }

    public static List<Partido> ListarPartidos()
    {
        return ListaPartidos;
            /*query*/
    }

    public static List<Candidato> ListarCandidatos(int idPartido)
    {
        return ListaCandidatos.Where(c => c.IdPartido == idPartido).ToList();
            /*query*/
    }
}