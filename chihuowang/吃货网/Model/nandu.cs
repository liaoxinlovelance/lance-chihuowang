using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class nandu
    {

        public int NanduID { get; set; }
       public string Nanduname{ get; set; }
        public nandu() { }
        public nandu(int nanduID, string nanduname)
        {
            this.NanduID = nanduID;
            this.Nanduname = nanduname;

        }
    }
}
