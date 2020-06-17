using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class paihangbang
    {
        public int Chihuoid { get; set; }
        public int Fenshu { get; set; }
        public int useid{ get; set; }
        public paihangbang() { }
        public paihangbang(int chihuoid, int fenshu, int Useid) {
            this.Chihuoid = chihuoid;
            this.Fenshu = fenshu;
            this.useid = Useid;
        
        }
       
    }
}
