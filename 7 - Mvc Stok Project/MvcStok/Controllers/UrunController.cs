using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcStok.Models.Entity;

namespace MvcStok.Controllers
{
    public class UrunController : Controller
    {
        MvcDbStokEntities db = new MvcDbStokEntities();
        // GET: Urun
        public ActionResult Index()
        {
            var degerler = db.Tbl_Urunler.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniUrun()
        {
            List<SelectListItem> degerler = (from i in db.Tbl_Kategoriler.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KategoriAd,
                                                 Value = i.KategoriId.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View();
        }

        [HttpPost]
        public ActionResult YeniUrun(Tbl_Urunler p1)
        {
            var ktg = db.Tbl_Kategoriler.Where(m => m.KategoriId == p1.Tbl_Kategoriler.KategoriId).FirstOrDefault();
            p1.Tbl_Kategoriler = ktg;

            db.Tbl_Urunler.Add(p1);
            db.SaveChanges();
            return RedirectToAction("index");
        }
        public ActionResult Sil(int id)
        {
            var urun = db.Tbl_Urunler.Find(id);
            db.Tbl_Urunler.Remove(urun);
            db.SaveChanges();
            return RedirectToAction("index");
        }
        public ActionResult UrunGetir(int id)
        {
            var urun = db.Tbl_Urunler.Find(id);

            List<SelectListItem> degerler = (from i in db.Tbl_Kategoriler.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KategoriAd,
                                                 Value = i.KategoriId.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View("UrunGetir",urun);
        }
        public ActionResult Guncelle(Tbl_Urunler p1)
        {
            var urun = db.Tbl_Urunler.Find(p1.UrunId);
            urun.UrunAd = p1.UrunAd;
            urun.Marka = p1.Marka;
            urun.Stok = p1.Stok;
            urun.Fiyat = p1.Fiyat;
            //urun.UrunKategori = p1.UrunKategori;
            var ktg = db.Tbl_Kategoriler.Where(m => m.KategoriId == p1.Tbl_Kategoriler.KategoriId).FirstOrDefault();
            urun.UrunKategori = ktg.KategoriId;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}