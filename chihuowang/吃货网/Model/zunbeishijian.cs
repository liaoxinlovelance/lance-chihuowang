using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class zunbeishijian
    {
       public int ZunbeishijianID { get; set; }
       public string Zunbeishijianname { get; set; }
        public  zunbeishijian() { }
        public zunbeishijian(int zunbeishijianID, string zunbeishijianname)
        {
            this.ZunbeishijianID = zunbeishijianID;
            this.Zunbeishijianname = zunbeishijianname;

        }
    }
}
