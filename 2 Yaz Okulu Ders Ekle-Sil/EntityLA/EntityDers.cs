using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer
{
    public class EntityDers
    {
        private string dersAd;
        public string DersAd
        {
            get { return dersAd; }
            set { dersAd = value; }
        }
        private int min;
        public int Min
        {
            get { return min; }
            set { min = value; }
        }
        private int max;
        public int Max
        {
            get { return max; }
            set { max = value; }
        }
               
        private int id;
        public int Id { get => id; set => id = value; }

    }
}
