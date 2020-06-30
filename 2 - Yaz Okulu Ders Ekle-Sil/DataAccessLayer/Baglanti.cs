using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace DataAccessLayer
{
    public class Baglanti
    {
        public static SqlConnection bgl = new SqlConnection(@"Data Source=DESKTOP-R11RC0Q\;Initial Catalog=DbYazOkulu;Integrated Security=True");


        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-R11RC0Q;Initial Catalog=DbYazOkulu;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }

    

}
