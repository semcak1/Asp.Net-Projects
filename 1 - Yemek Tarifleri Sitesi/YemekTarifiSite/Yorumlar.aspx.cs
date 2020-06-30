using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string yorumid = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //sayfada yorumları gösterme

            //onaylı yoeumların gösterilmesi
            SqlCommand komut = new SqlCommand("Select * from tbl_yorumlar where yorumonay=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //onaysız yoeumların gösterilmesi
            SqlCommand komut1 = new SqlCommand("Select * from tbl_yorumlar where yorumonay=0", bgl.baglanti());
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();

            //yorumları silme
            yorumid = Request.QueryString["Yorumid"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from tbl_yorumlar where yorumId=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", yorumid);
                komutsil.ExecuteNonQuery();
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
    }
}