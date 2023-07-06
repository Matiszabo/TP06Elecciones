﻿using System.Diagnostics;
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
        ViewBag.ListaPartidos = BD.ListarPartidos();
        return View();
    }

public IActionResult VerDetallePartido(int IDPartido) {
    ViewBag.InfoPartido = BD.VerInfoPartido(IDPartido);
    ViewBag.ListaCandidatos= BD.ListarCandidatos(IDPartido);
    return View();
}
public IActionResult VerDetalleCandidato(int IDCandidato) {
    ViewBag.InfoCandidato = BD.VerInfoCandidato(IDCandidato);
    return View();
}

public IActionResult AgregarCandidato(int IDPartido) {
    ViewBag.IDPartido = IDPartido;
    return View();
}
[HttpPost] public IActionResult GuardarCandidato(Candidato can) {
    BD.AgregarCandidato(can);
    return RedirectToAction("VerDetallePartido", new {IDPartido = can.IdPartido});
}
public IActionResult EliminarCandidato(int IDCandidato, int IDPartido) {
    BD.EliminarCandidato(IDCandidato); 
    return RedirectToAction("VerDetallePartido", IDPartido);
}
public IActionResult Elecciones() {
    return View();
}

public IActionResult Creditos() {
    return View();
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