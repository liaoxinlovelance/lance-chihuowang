using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
  public   class penrenshijian
    {
      public int PenrenshijianID { get; set; }
      public string Penrenshijianname { get; set; }
        public penrenshijian() { }
        public penrenshijian(int penrenshijianID, string penrenshijianname)
        {
            this.PenrenshijianID = penrenshijianID;
            this.Penrenshijianname = penrenshijianname;

        }
    }
}
