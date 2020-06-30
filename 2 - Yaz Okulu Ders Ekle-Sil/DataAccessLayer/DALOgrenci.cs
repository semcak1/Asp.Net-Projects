using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using EntityLayer;

namespace DataAccessLayer
{
    public class DALOgrenci
    {


        public static int OgrenciEkle(EntityOgrenci parametre)
        {
            SqlCommand komut1 = new SqlCommand("insert into Tbl_ogrenci (ograd,ogrsoyad,ogrnumara,ogrfotograf, ogrsifre)" +
                "values (@p1,@p2,@p3,@p4,@p5)", Baglanti.bgl);
            if (komut1.Connection.State != ConnectionState.Open)
            {
                komut1.Connection.Open();
            }
            komut1.Parameters.AddWithValue("@p1", parametre.Ad);
            komut1.Parameters.AddWithValue("@p2", parametre.Soyad);
            komut1.Parameters.AddWithValue("@p3", parametre.Numara);
            komut1.Parameters.AddWithValue("@p4", parametre.Fotograf);
            komut1.Parameters.AddWithValue("@p5", parametre.Sifre);
            return komut1.ExecuteNonQuery();
        }
        public static List<EntityOgrenci> OgrenciListesi()
        {
            List<EntityOgrenci> degerler = new List<EntityOgrenci>();
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_ogrenci", Baglanti.bgl);
            if (komut2.Connection.State != ConnectionState.Open)
            {
                komut2.Connection.Open();
            }
            SqlDataReader oku1 = komut2.ExecuteReader();
            while (oku1.Read())
            {
                EntityOgrenci ent = new EntityOgrenci();
                ent.Id = Convert.ToInt32(oku1["OgrId"].ToString());
                ent.Ad = oku1["OgrAd"].ToString();
                ent.Soyad = oku1["OgrSoyad"].ToString();
                ent.Numara = oku1["OgrNumara"].ToString();
                ent.Sifre = oku1["OgrSifre"].ToString();
                ent.Fotograf = oku1["OgrFotograf"].ToString();
                ent.Bakiye = Convert.ToDouble(oku1["OgrBakiye"].ToString());
                degerler.Add(ent);
            }
            Baglanti.bgl.Close();
            return degerler;
        }
        public static bool OgrenciSil(int parametre)
        {
            SqlCommand komut3 = new SqlCommand("Delete from tbl_ogrenci where OgrId=@p1", Baglanti.bgl);
            komut3.Parameters.AddWithValue("@p1", parametre);
            if (komut3.Connection.State==ConnectionState.Closed)
            {
                komut3.Connection.Open();
            }
            return komut3.ExecuteNonQuery()>0;
        }

        public static List<EntityOgrenci> OgrenciDetay(int id)
        {
            List<EntityOgrenci> degerler = new List<EntityOgrenci>();
            SqlCommand komut4 = new SqlCommand("Select * from Tbl_ogrenci where OgrId=@p1", Baglanti.bgl);
            komut4.Parameters.AddWithValue("@p1", id);
            if (komut4.Connection.State != ConnectionState.Open)
            {
                komut4.Connection.Open();
            }
            SqlDataReader oku1 = komut4.ExecuteReader();
            while (oku1.Read())
            {
                EntityOgrenci ent = new EntityOgrenci();
                ent.Id = Convert.ToInt32(oku1["OgrId"].ToString());
                ent.Ad = oku1["OgrAd"].ToString();
                ent.Soyad = oku1["OgrSoyad"].ToString();
                ent.Numara = oku1["OgrNumara"].ToString();
                ent.Sifre = oku1["OgrSifre"].ToString();
                ent.Fotograf = oku1["OgrFotograf"].ToString();
                ent.Bakiye = Convert.ToDouble(oku1["OgrBakiye"].ToString());
                degerler.Add(ent);
            }
            Baglanti.bgl.Close();
            return degerler;
        }

        public static bool OgrenciGuncelle(EntityOgrenci deger)
        {
            SqlCommand komut5 = new SqlCommand("Update Tbl_Ogrenci set ogrAd=@p1,OgrSoyad=@p2,OgrNumara=@p3,OgrSifre=@p4 ,OgrFotograf=@p5 where ogrId=@p6", Baglanti.bgl);
            if (komut5.Connection.State != ConnectionState.Open)
            {
                komut5.Connection.Open();
            }
            komut5.Parameters.AddWithValue("@p1", deger.Ad);
            komut5.Parameters.AddWithValue("@p2", deger.Soyad);
            komut5.Parameters.AddWithValue("@p3", deger.Numara);
            komut5.Parameters.AddWithValue("@p4", deger.Sifre);
            komut5.Parameters.AddWithValue("@p5", deger.Fotograf);
            komut5.Parameters.AddWithValue("@p6", deger.Id);
            
            return komut5.ExecuteNonQuery() > 0;
        }


    }
}
