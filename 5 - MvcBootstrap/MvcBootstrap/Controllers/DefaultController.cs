using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcBootstrap.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
       
            public ActionResult Index()
            {
                return View();
            }

            public ActionResult Hakkımızda()
            {
                return View();
            }

            public ActionResult Iletisim()
            {
                return View();
            }
                      
    }

}