using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using EntityLayer;

namespace DataAccessLayer
{
    public class DALDers
    {
        public static List<EntityDers> DersListesi()
        {
            Baglanti bgl = new Baglanti();
            
            List<EntityDers> DersListesi = new List<EntityDers>();
            
            SqlCommand komut1 = new SqlCommand("Select * from Tbl_Dersler", bgl.baglanti());
            SqlDataReader oku1 = komut1.ExecuteReader();
            while (oku1.Read())
            {
                EntityDers ent = new EntityDers();
                ent.DersAd = oku1["DersAd"].ToString();
                ent.Max = int.Parse(oku1["DersMaxKont"].ToString());
                ent.Min = int.Parse(oku1["DersMinKont"].ToString());
                ent.Id = int.Parse(oku1["DersId"].ToString());
                DersListesi.Add(ent);
                
            }
            bgl.baglanti().Close();
            return DersListesi;

        }

        public static int TalepEkle(EntityBasvuruForm parametre )
        {
            SqlCommand komut = new SqlCommand("insert into tbl_basvuruform (OgrenciId,DersId) values (@p1,@p2)", Baglanti.bgl);
            komut.Parameters.AddWithValue("@p1", parametre.Basvuruid);
            komut.Parameters.AddWithValue("@p2", parametre.Dersid);
            if (komut.Connection.State==ConnectionState.Closed)
            {
                komut.Connection.Open();
            }
            return komut.ExecuteNonQuery();

        }
    }
}
