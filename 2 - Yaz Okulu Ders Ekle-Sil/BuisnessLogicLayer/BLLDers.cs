using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityLayer;
using DataAccessLayer;


namespace BuisnessLogicLayer
{
    public class BLLDers
    {
        public static List<EntityDers> DersListesi()
        {
            return DALDers.DersListesi();
        }

        public static int TalepEkleBll(EntityBasvuruForm p)
        {
            if (p.Basvuruid != null && p.Dersid != null)
            {
                return DALDers.TalepEkle(p);

            }
            return -1;

        }


    }
}
