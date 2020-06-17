using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class yuanchuang
    {
        public int Yuanchuangid { get; set; }
        public string Neirong { get; set; }
        public yuanchuang() { }
        public yuanchuang(int yuanchuangid, string neirong) {
            this.Yuanchuangid = yuanchuangid;
            this.Neirong = neirong;

        }
    }
}
