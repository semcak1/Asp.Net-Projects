﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Hakkımızda", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();

            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}