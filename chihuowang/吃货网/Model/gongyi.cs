using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
  public   class gongyi
    
    {
        public int GongyiID { get; set; }
        public string Gongyiname{ get; set; }
        public gongyi() { }
        public gongyi(int gongyiID, string gongyiname)
        {
            this.GongyiID = gongyiID;
            this.Gongyiname = gongyiname;

        }
    }
}
