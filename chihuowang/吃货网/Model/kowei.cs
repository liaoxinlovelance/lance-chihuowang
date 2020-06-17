using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class kowei
    {
        public int KoweiID { get; set; }
       public string Koweiname{ get; set; }
        public kowei() { }
        public kowei(int koweiID, string koweiname)
        {
            this.KoweiID = koweiID;
            this.Koweiname = koweiname;

        }
    }
}
