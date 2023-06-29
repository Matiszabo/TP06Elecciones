using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Tp6.Models;

namespace Tp6.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

     public IActionResult Index()
    {
        ViewBag.Partidos = BD.ListarPartidos();
        return View("Index");
    }

    public IActionResult VerDetallePartido(int idPartido)
    {
        ViewBag.Partido = BD.VerInfoPartido(idPartido);
        ViewBag.Candidatos = BD.ListarCandidatos(idPartido);
        return View("DetallePartido");
    }

    public IActionResult VerDetalleCandidato(int idCandidato)
    {
        ViewBag.Candidato = BD.VerInfoCandidato(idCandidato);
        return View("DetalleCandidato");
    }

    public IActionResult AgregarCandidato(int idPartido)
    {
        ViewBag.IdPartido = idPartido;
        return View("AgregarCandidato");
    }

    [HttpPost]
    public IActionResult GuardarCandidato(Candidato can)
    {
        BD.AgregarCandidato(can);
        return RedirectToAction("VerDetallePartido", new { idPartido = can.IdPartido });
    }

    public IActionResult EliminarCandidato(int idCandidato, int idPartido)
    {
        BD.EliminarCandidato(idCandidato);
        return RedirectToAction("VerDetallePartido", new { idPartido });
    }

    public IActionResult Elecciones()
    {
        return View("Elecciones");
    }

    public IActionResult Creditos()
    {
        return View("Creditos");
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
