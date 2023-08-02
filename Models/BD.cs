using System.Data.SqlClient;
using Dapper;
public static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase=Elecciones2023;Trusted_Connection=True;";
    public static void AgregarCandidato(Candidato can)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {        
            string SQL = "INSERT INTO Candidato(IdPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@pIdPartido, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pPostulacion)";
            db.Execute(SQL, new { pIdPartido = can.IdPartido, pApellido = can.Apellido, pNombre = can.Nombre, pFechaNacimiento = can.FechaNacimiento, pFoto = can.Foto, pPostulacion = can.Postulacion });
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
            part = db.QueryFirstOrDefault<Candidato>(sql, new { pIdCandidato = IdCandidato });
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
    public static List<Candidato> ListarCandidatos(int IdPartido)
    {
        List<Candidato> part;
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdPartido = @pIdPartido";
            part = db.Query<Candidato>(sql, new { pIDPartido = IdPartido }).ToList();
        }
        return part;
    }
}