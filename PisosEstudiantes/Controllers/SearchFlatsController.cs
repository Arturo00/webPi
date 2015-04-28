using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Mvc;
using PisosEstudiantes.Models.BO;
using PisosEstudiantes.Models.DTO;

namespace PisosEstudiantes.Controllers
{
    public class SearchFlatsController : Controller
    {
        private BOFlat flatModel = new BOFlat();
        // GET: Busqueda
        public ActionResult searchFlats(string id)
        {
            List<Flat> flats = flatModel.getFlatsByProvince(id);
            ViewData["city"] = id;
            ViewData["num"] = flats.Count;
            return View(flats);
        }
    }
}
