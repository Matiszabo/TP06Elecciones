using System.Data.SqlClient;
using Dapper;
public static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=Elecciones2023;Trusted_Connection=True;";
    public static void AgregarCandidato(Candidato objCandidato)
    {
        string sql = "INSERT TO candidato(IdPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@pIdPartido, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pPostulacion)";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new { pIdPartido = objCandidato.IdPartido, pApellido = objCandidato.Apellido, pNombre = objCandidato.Nombre, pFechaNacimiento = objCandidato.FechaNacimiento, pFoto = objCandidato.Foto, pPostulacion = objCandidato.Postulacion });
        }

    }
    public static int EliminarCandidato(int IdCandidato)
    {
        int r;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "DELETE FROM Candidato WHERE IdCandidato = @pIDCandidato";
            r = db.Execute(sql, new { pIDCandidato = IdCandidato });
        }
        return r;
    }
    public static Partido VerDetallePartido(int IdPartido)
    {
        Partido part;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Partido WHERE IdPartido = @pIdPartido";
            part = db.QueryFirstOrDefault<Partido>(sql, new { pIDPartido = IdPartido });
        }
        return part;
    }
    public static Candidato VerDetalleCandidato(int IdCandidato)
    {
        Candidato part;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdCandidato = @pIdCandidato";
            part = db.QueryFirstOrDefault<Candidato>(sql, new { pIDCandidato = IdCandidato });
        }
        return part;
    }
    public static List<Partido> ListarPartidos()
    {
        List<Partido> part;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Partido";
            part = db.Query<Partido>(sql).ToList();
        }
        return part;
    }
    public static List<Candidato> ListarCandidatos(int IDPartido)
    {
        List<Candidato> part;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdPartido = @pIdPartido";
            part = db.Query<Candidato>(sql, new { pIDPartido = IDPartido }).ToList();
        }
        return part;
    }
}