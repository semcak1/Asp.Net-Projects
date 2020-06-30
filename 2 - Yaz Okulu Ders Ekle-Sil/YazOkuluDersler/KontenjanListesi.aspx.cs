using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataAccessLayer;
using BuisnessLogicLayer;

namespace YazOkuluDersler
{
    public partial class KontenjanListesi : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            List<EntityDers> degerler = BLLDers.DersListesi();
            Repeater1.DataSource = degerler;
            Repeater1.DataBind();

        }
    }
}