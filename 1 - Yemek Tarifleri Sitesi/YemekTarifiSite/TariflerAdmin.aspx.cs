using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TariflerAdmin : System.Web.UI.Page
    {
        SqlSinif bgl=new SqlSinif();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //onaysız yorumların listelenmesi
            SqlCommand komut = new SqlCommand ("Select * from tbl_tarifler where Tarifdurum=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            //onaylı yorumların listelenmesi
            SqlCommand komut1 = new SqlCommand("Select * from tbl_tarifler where Tarifdurum=0", bgl.baglanti());
            SqlDataReader oku1 = komut1.ExecuteReader();
            DataList2.DataSource = oku1;
            DataList2.DataBind();
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