using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yemekid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            // Yemekleri yemekdropdownbox ta göstermek.
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_Yemekler where YemekId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", yemekid);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox4.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
           
           

            //kategorilerin seçilmesi için  dropdown box ta verilerin gösterilmesi

            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();
                
            }
            
        }

        //güncelleme işlemleri
        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,yemekMalzeme=@p2," +
                "yemekTarif=@p3,kategoriId=@p4, yemekresim=@p6 where yemekId=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox4.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", yemekid);
            komut.Parameters.AddWithValue("@p6", "~/Resimler/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update tbl_yemekler set durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut1 = new SqlCommand("Update tbl_yemekler set durum=1 where yemekId=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", yemekid);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close(); 
        }
    }
}