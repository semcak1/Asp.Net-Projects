using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using EntityLayer;
using DataAccessLayer;
using BuisnessLogicLayer;

namespace YazOkuluDersler
{
    public partial class OgrenciListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<EntityOgrenci> OgrList = BLLOgrenci.BllListele();
            Repeater1.DataSource = OgrList;
            Repeater1.DataBind();
        }
    }
}