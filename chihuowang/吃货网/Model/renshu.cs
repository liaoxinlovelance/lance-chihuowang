using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class renshu
    {
       public int RenshuID { get; set; }
       public string Renshuname { get; set; }
        public renshu() { }
        public renshu(int renshuID, string renshuname)
        {
            this.RenshuID = renshuID;
            this.Renshuname = renshuname;

        }
    }
}
