﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bodeguita.WebApp.Controllers
{
    public class BodegaController : Controller
    {
        // GET: Bodega
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Productos(int id)
        {
            return View();
        }

    }
}