using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataAccessLayer;
using BuisnessLogicLayer;

namespace YazOkuluDersler
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["OgrenciId"]);
            TxtId.Text = x.ToString();
            TxtId.Enabled = false;
            if (Page.IsPostBack==false)
            {
                List<EntityOgrenci> OgrListesi = BLLOgrenci.BllDetay(x);
                TxtAd.Text = OgrListesi[0].Ad.ToString();
                TxtSoyad.Text = OgrListesi[0].Soyad.ToString();
                TxtNumara.Text = OgrListesi[0].Numara.ToString();
                TxtSifre.Text = OgrListesi[0].Sifre.ToString();
                TxtFoto.Text = OgrListesi[0].Fotograf.ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            
            
                ent.Ad = TxtAd.Text;
                ent.Soyad = TxtSoyad.Text;
                ent.Numara = TxtNumara.Text;
                ent.Sifre = TxtSifre.Text;
                ent.Fotograf = TxtFoto.Text;
                ent.Id = Convert.ToInt32(TxtId.Text);
                BLLOgrenci.OgrenciGuncelleBll(ent);
                        
            Response.Redirect("OgrenciListesi.aspx");
        }
    }
}