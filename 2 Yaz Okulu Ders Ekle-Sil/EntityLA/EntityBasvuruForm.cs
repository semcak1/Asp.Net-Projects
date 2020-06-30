using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityBasvuruForm
    {
        private int basvuruid;
        private int ogrid;
        private int dersid;

        public int Basvuruid { get => basvuruid; set => basvuruid = value; }
        public int Ogrid { get => ogrid; set => ogrid = value; }
        public int Dersid { get => dersid; set => dersid = value; }
    }
}
