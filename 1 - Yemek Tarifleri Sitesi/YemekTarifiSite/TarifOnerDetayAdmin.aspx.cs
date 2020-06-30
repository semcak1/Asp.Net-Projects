using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOnerDetayAdmin : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string tarifid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            tarifid = Request.QueryString["Tarifid"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_tarifler where TarifId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", tarifid);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[1].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                    TextBox4.Text = oku[5].ToString();
                    TextBox5.Text = oku[6].ToString();
                   
                }
                bgl.baglanti().Close();

                //kategori listesini dropdown box ta gösterme
                SqlCommand komut1 = new SqlCommand("select * from tbl_kategoriler ", bgl.baglanti());
                SqlDataReader oku1 = komut1.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();
            }

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                //Durum güncelleme
                SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", tarifid);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();

            //yemeği anasayfaya ekleme
           
                SqlCommand komut1 = new SqlCommand("insert into tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId )" +
                    " values (@p1,@p2,@p3,@p4)", bgl.baglanti());
                komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut1.Parameters.AddWithValue("@p3 ", TextBox3.Text);
                komut1.Parameters.AddWithValue("@p4 ", DropDownList1.SelectedValue);
                komut1.ExecuteNonQuery();
                bgl.baglanti().Close();

            
                

            //kategori sayısını 1 artırma
            
                SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set Kategoriadet=Kategoriadet+1 where KategoriId=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();

            


        }
    }
}