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
    public partial class DersListesi : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            List<EntityDers> degerler = BLLDers.DersListesi();

            if (Page.IsPostBack==false)
            {
                
                DropDownList1.DataSource = degerler;
                DropDownList1.DataTextField = "DersAd";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataBind();
            }
          


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            EntityBasvuruForm ent = new EntityBasvuruForm();
            ent.Basvuruid = int.Parse(TextBox1.Text);
            ent.Dersid = int.Parse(DropDownList1.SelectedValue.ToString());
            BLLDers.TalepEkleBll(ent);
            


        }
    }
}