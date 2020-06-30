using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd From tbl_Yemekler where YemekId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oku = komut.ExecuteReader();
            
            while (oku.Read())
            {
                Label4.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme

            SqlCommand komut2 = new SqlCommand("Select * from tbl_Yorumlar where YemekId=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();


        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId)" +
                " values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMailAdresi.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yorumuz Alınmıştır.");

                   
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}