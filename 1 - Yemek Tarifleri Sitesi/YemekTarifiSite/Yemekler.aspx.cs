using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //kategorilerin seçilmesi için veritabanından dropdown box a veri aktraılması

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                SqlCommand komut1 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku1 = komut1.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = oku1;
                DropDownList1.DataBind();
            }
            //Yemeklerin listelenmesi

            SqlCommand komut = new SqlCommand("select * from tbl_Yemekler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from tbl_Yemekler where yemekId=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //yemek ekleme.
            SqlCommand komut = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekResim,YemekMalzeme,YemekTarif,KategoriId)" +
                " values (@p1,@p2,@p3,@p4,@p5)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p3", TextBox2.Text);
            komut.Parameters.AddWithValue("@p4", TextBox3.Text);
            komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Yemek Eklenmiştir.");

            //kategori sayısını artırma.
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1" +
                " where kategoriId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

       
    }
}