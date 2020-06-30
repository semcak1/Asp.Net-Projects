using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcStok.Models.Entity;

namespace MvcStok.Controllers
{
    public class MusteriController : Controller
    {
        MvcDbStokEntities db = new MvcDbStokEntities();
        // GET: Musteri
        public ActionResult Index()
        {
            var degerler = db.Tbl_Musteriler.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniMusteri()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniMusteri(Tbl_Musteriler p1)
        {
            if (!ModelState.IsValid)
            {
                return View("YeniMusteri");
            }
            db.Tbl_Musteriler.Add(p1);
            db.SaveChanges();
            return View();
        }
        public ActionResult Sil(int id)
        {
            var musteri=db.Tbl_Musteriler.Find(id);
            db.Tbl_Musteriler.Remove(musteri);
            db.SaveChanges();
            return RedirectToAction("index");
            
        }
        public ActionResult MusteriGetir(int id)
        {
            var musteri = db.Tbl_Musteriler.Find(id);
            return View("MusteriGetir", musteri);
        }
        public ActionResult Guncelle(Tbl_Musteriler p1)
        {
            var musteri = db.Tbl_Musteriler.Find(p1.MusteriId);
            musteri.MusteriAd = p1.MusteriAd;
            musteri.MusteriSoyad = p1.MusteriSoyad;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}